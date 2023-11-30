//
//  Response.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

struct BoxOfficeResponse: Decodable {
    let boxOfficeResult: BoxOfficeResult
    
    struct BoxOfficeResult: Decodable {
        let dailyBoxOfficeList: [Movie]
    }
}
