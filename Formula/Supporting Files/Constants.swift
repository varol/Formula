//
//  Constants.swift
//  Formula
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import UIKit
struct Constants {

    struct Fonts {
        
    }
    
    struct Sizes {
        static let tableViewCellHeight: CGFloat = 75
    }
    
    struct Colors {
        static let mainTextColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    struct BaseURL {
        static let baseURL: String = "https://my-json-server.typicode.com/oguzayan/kuka/"
        static let driverURL: String = baseURL + "drivers"
        static let driverDetailURL: String = baseURL + "driverDetail"
    }
    
}
