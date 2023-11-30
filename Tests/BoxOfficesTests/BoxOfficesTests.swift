import XCTest
@testable import BoxOffices

final class BoxOfficesTests: XCTestCase {
    func test_fetchDailyTop10() async throws {
        let boxOffices = BoxOffices(key: "f5eef3421c602c6cb7ea224104795888")
        let result = await boxOffices.fetchDailyTop10()
        let topMovies = try result.get()
        
        XCTAssertEqual(topMovies.count, 10)
    }
}
