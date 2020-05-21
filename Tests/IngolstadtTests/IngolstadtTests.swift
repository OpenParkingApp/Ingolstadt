import XCTest
import DatasourceValidation
import Ingolstadt

final class IngolstadtTests: XCTestCase {
    func testDatasource() throws {
        validate(datasource: Ingolstadt())
    }
}
