//
//  HTTPMethod.swift
//
//
//  Created by 이재성 on 12/1/23.
//

import Foundation

enum HTTPMethod: String {
    case get //, post, delete, put "GET"
    
    var capitalizedValue: String {
        self.rawValue.capitalized // .get -> "GET"
    }
}
