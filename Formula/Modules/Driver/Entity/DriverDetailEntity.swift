//
//  DriverDetailEntity.swift
//  Formula_VIPER
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

// MARK: - DriverDetailsModel
struct DriverDetailsModel: Codable {
    let id, age: Int?
    let image: String?
    let team: String?
}

