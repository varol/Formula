//
//  RequestManager.swift
//  Formula_VIPER
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

class RequestManager {
    
    static let shared: RequestManager = {
        let instance = RequestManager()
        return instance
    }()

    func getDrivers(completionHandler: @escaping (Results<DriverModel>) -> ()) {
        NetworkManager.shared.request(Router.driver, decodeToType: DriverModel.self, completionHandler: completionHandler)
    }
    
    func getDriverDetails(completionHandler: @escaping (Results<DriverDetailsModel>) -> ()) {
        NetworkManager.shared.request(Router.driverDetail, decodeToType: DriverDetailsModel.self, completionHandler: completionHandler)
    }

}
