//
//  APIClientTests.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import XCTest
@testable import BoxOffices

final class APIClientTests: XCTestCase {
    func test_fetch() async throws {
        // http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101
        
        struct Response: Decodable {
            let boxOfficeResult: BoxOfficeResult
            
            struct BoxOfficeResult: Decodable {
                let dailyBoxOfficeList: [DailBoxOffice]
                
                struct DailBoxOffice: Decodable {
                    let movieCd: String
                }
            }
        }
        
        let apiClient = APIClient(key: "f5eef3421c602c6cb7ea224104795888")
        let response: Response = try await apiClient.fetch(
            path: "boxoffice/searchDailyBoxOfficeList.json",
            httpMethod: .get,
            queryItems: [URLQueryItem(name: "targetDt", value: "20120101")]
        )
        
        XCTAssertEqual(response.boxOfficeResult.dailyBoxOfficeList.count, 10)
    }
}
