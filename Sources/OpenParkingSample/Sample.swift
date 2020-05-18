import Foundation
import OpenParkingBase

public class Sample: Datasource {
    public let name = "Sample"
    public let slug = "sample"
    public let infoUrl = URL(string: "https://example.com")!

    public init() {}

    public func data() throws -> DataPoint {
        fatalError("Not yet implemented")
    }
}
