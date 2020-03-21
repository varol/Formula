//
//  DriverDetailPresenter.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation

protocol DriverDetailPresenterInterface: class {

}

class DriverDetailPresenter {

    unowned var view: DriverDetailViewControllerInterface
    let router: DriverDetailRouterInterface?
    let interactor: DriverDetailInteractorInterface?

    init(interactor: DriverDetailInteractorInterface, router: DriverDetailRouterInterface, view: DriverDetailViewControllerInterface) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension DriverDetailPresenter: DriverDetailPresenterInterface {

}
