import XCTest
import OpenParkingTests
import OpenParkingSample

final class OpenParkingSampleTests: XCTestCase {
    func testDatasource() throws {
        assert(datasource: Sample())
    }
}
