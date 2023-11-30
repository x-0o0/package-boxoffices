//
//  Movie.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

/// 영화 정보를 나타내는 구조체
public struct Movie: Decodable {
    /// 영화 순위
    public let rank: String
    /// 영화 코드
    public let code: String
    /// 영화 이름
    public let name: String
    
    private enum CodingKeys: String, CodingKey {
        case rank
        case code = "movieCd"
        case name = "movieNm"
    }
}
