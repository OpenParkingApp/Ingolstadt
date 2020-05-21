import Foundation
import Datasource
import SwiftSoup

public struct Ingolstadt: Datasource {
    public let name = "Ingolstadt"
    public let slug = "ingolstadt"
    public let infoURL = URL(string: "https://www.ingolstadt.de/Wirtschaft/Parken/Parkeinrichtungen_der_IFG/")!

    public init() {}

    let sourceURL = URL(string: "http://www.ingolstadt.mobi/parkplatzauskunft.cfm")!

    public func data() throws -> DataPoint {
        let (data, _) = try get(url: sourceURL)
        guard let html = String(data: data, encoding: .utf8) else {
            throw OpenParkingError.decoding(description: "Failed to decode HTML", underlyingError: nil)
        }
        let doc = try SwiftSoup.parse(html)
        guard let dataAge = try doc.select("p").first()?.text().date(withFormat: "(dd.MM.yyyy, HH.mm 'Uhr')") else {
            throw OpenParkingError.other("Unexpected page format, failed to read data age.")
        }
        let rawLots = try doc.select("tr")
        let lots = try rawLots.map { try lot(from: $0, dataAge: dataAge) }

        return .init(lots: lots)
    }

    private func lot(from row: Element, dataAge: Date) throws -> LotResult {
        let components = try row.select("td")

        var state: Lot.State = .open
        if row.hasClass("strike") {
            state = .closed
        }

        guard components.count == 2 else {
            throw OpenParkingError.decoding(description: "Invalid count of td's found.", underlyingError: nil)
        }

        let lotName = try components[0].text()

        guard let metadata = geodata.lot(withName: lotName) else {
            return .failure(.missingMetadata(lot: lotName))
        }

        let typeStr: String = try metadata.value(for: "type")
        guard let type = Lot.LotType(rawValue: typeStr) else {
            throw LotError.other(reason: "Unknown lot type: \(typeStr)")
        }

        guard let availableCount = Int(try components[1].text()) else {
            return .failure(.other(reason: "Unable to read count of available spots"))
        }

        return .success(.init(
            dataAge: dataAge,
            name: lotName,
            coordinates: nil,
            city: self.name,
            region: nil,
            address: metadata.address,
            available: .discrete(availableCount),
            capacity: metadata.total,
            state: state,
            type: type,
            detailURL: try? metadata.urlValue(for: "detail_url"),
            imageURL: nil,
            pricing: nil,
            openingHours: nil,
            additionalInformation: nil))
    }
}
