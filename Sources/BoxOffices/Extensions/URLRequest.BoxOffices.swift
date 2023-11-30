//
//  URLRequest.BoxOffices.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

extension URLRequest {
    init(
        urlString: String,
        httpMethod: HTTPMethod,
        key: String,
        queryItems: [URLQueryItem]?
    ) throws {
        // URL Components
        guard var components = URLComponents(string: urlString) else {
            throw APIError.urlIsInvalid // error
        }
        
        // Query Items
        components.queryItems = [URLQueryItem(name: "key", value: key)]
        if let queryItems {
            components.queryItems?.append(contentsOf: queryItems)
        }
        
        // URL Request
        guard let url = components.url else {
            throw APIError.urlIsInvalid
        }
        self.init(url: url)
        
        // HTTP Method
        self.httpMethod = httpMethod.capitalizedValue
    }
}
