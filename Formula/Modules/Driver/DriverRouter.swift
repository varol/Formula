//
//  DriverRouter.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation
import UIKit

protocol DriverRouterInterface: class {
    func navigateToDetailWith(driverId: Int)
}

struct StoryBoard {
    static let main = UIStoryboard(name: "Main", bundle: nil)
}

class DriverRouter: NSObject {

    weak var presenter: DriverPresenterInterface?
    private weak var viewController: DriverViewController?

    static func setupModule() -> DriverViewController {
        let storyboard = StoryBoard.main
        if let view = storyboard.instantiateInitialViewController() as? DriverViewController {
            let interactor = DriverInteractor()
            let router = DriverRouter()
            let presenter = DriverPresenter(interactor: interactor, router: router, view: view)
            view.presenter = presenter
            router.presenter = presenter
            interactor.output = presenter
            router.viewController = view
            return view
        }
        fatalError("Driver module can not created")
    }
}

extension DriverRouter: DriverRouterInterface {
    func navigateToDetailWith(driverId: Int) {
        let vc = DriverDetailRouter.setupModule()
        vc.driverId = driverId
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    

}

