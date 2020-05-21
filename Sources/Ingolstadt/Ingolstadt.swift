import Foundation
import Datasource

public struct Ingolstadt: Datasource {
    public let name = "Ingolstadt"
    public let slug = "ingolstadt"
    public let infoURL = URL(string: "https://www.ingolstadt.de/Wirtschaft/Parken/Parkeinrichtungen_der_IFG/")!

    public init() {}

    let sourceURL = URL(string: "http://www.ingolstadt.mobi/parkplatzauskunft.cfm")!

    public func data() throws -> DataPoint {
        let (data, _) = try get(url: sourceURL)

        return .init(lots: [])
    }
}
