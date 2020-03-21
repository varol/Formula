//
//  DriverInteractor.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

protocol DriverInteractorInterface: class {
    func fetchDrivers()
    func fetchDriverDetails()
    //Endpoint'de ID ile request yapma imkanı olmadığından fazladan request yapmamak için burada request işlemini gerçeleştiriyorum.
}

protocol DriverInteractorOutputProtocol: class {
    func driverListFetchedSuccessfully(drivers: DriverModel)
    func driverListFetchingFailed(withError error: Error)
    
    func driverDetailsFetchedSuccessfully(drivers: DriverDetailsModel)
    func driverDetailsFetchingFailed(withError error: Error)
}

final class DriverInteractor {
    weak var output: DriverInteractorOutputProtocol?
}

extension DriverInteractor: DriverInteractorInterface {
    func fetchDriverDetails() {
        RequestManager.shared.getDriverDetails { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let driverDetails):
                self.output?.driverDetailsFetchedSuccessfully(drivers: driverDetails)
            case .failure(let error):
                self.output?.driverDetailsFetchingFailed(withError: error)
                print("error: ", error)
            }
        }
    }
    
    func fetchDrivers() {
        RequestManager.shared.getDrivers { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let drivers):
                self.output?.driverListFetchedSuccessfully(drivers: drivers)
            case .failure(let error):
                self.output?.driverListFetchingFailed(withError: error)
                print("error: ", error)
            }
        }
    }
}
