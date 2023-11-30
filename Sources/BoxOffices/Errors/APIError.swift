//
//  APIError.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

public enum APIError: Error {
    case urlIsInvalid
    case responseIsNotExpected
    case requestIsInvalid(_ statusCode: Int)
    case serverIsNotResponding(_ statusCode: Int)
    case responseIsUnsuccessful(_ statusCode: Int)
}

extension APIError {
    init?(httpResponse: HTTPURLResponse?) {
        guard let httpResponse else {
            self = APIError.responseIsNotExpected // error
            return
        }
        
        switch httpResponse.statusCode {
        case 200..<300:
            return nil
        case 400..<500:
            self = APIError.requestIsInvalid(httpResponse.statusCode)
        case 500..<600:
            self = APIError.serverIsNotResponding(httpResponse.statusCode)
        default:
            self = APIError.responseIsUnsuccessful(httpResponse.statusCode)
        }
    }
}
