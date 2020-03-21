//
//  DriverEntity.swift
//  Formula_VIPER
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

// MARK: - DriverModel
struct DriverModel: Codable {
    let items: [DriverItem]?
}

// MARK: - Item
struct DriverItem: Codable {
    let id: Int?
    let name: String?
    let point: Int?
}
