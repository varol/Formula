//
//  Router.swift
//  Formula_VIPER
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    
    case driver
    case driverDetail
    
    var method: HTTPMethod {
        switch self {
        case .driver:
            return .get
        case .driverDetail:
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .driver:
            return nil
        case .driverDetail:
            return nil
        }
    }
    
    var url: URL {
        switch self {
        case .driver:
            let url = URL(string: Constants.BaseURL.driverURL)!
            print(url)
            return url
        case .driverDetail:
            let url = URL(string: Constants.BaseURL.driverDetailURL)!
            print(url)
            return url
        }
    }
    
    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return try encoding.encode(urlRequest, with: parameters)
    }
}

