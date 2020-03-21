//
//  DriverDetailInteractor.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

protocol DriverDetailInteractorInterface: class {
}

class DriverDetailInteractor {
    weak var output: DriverDetailPresenterInterface?
}

extension DriverDetailInteractor: DriverDetailInteractorInterface {

}
