//
//  DriverDetailRouter.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import Foundation
import UIKit

protocol DriverDetailRouterInterface: class {

}

class DriverDetailRouter: NSObject {

    weak var presenter: DriverDetailPresenterInterface?

    static func setupModule() -> DriverDetailViewController {
        let storyboard = StoryBoard.main
        if let view = storyboard.instantiateViewController(withIdentifier: "DriverDetailViewController") as? DriverDetailViewController {
            let interactor = DriverDetailInteractor()
            let router = DriverDetailRouter()
            let presenter = DriverDetailPresenter(interactor: interactor, router: router, view: view)
            view.presenter = presenter
            router.presenter = presenter
            interactor.output = presenter
            return view
        }
        fatalError("Driver module can not created")
    }
    


}

extension DriverDetailRouter: DriverDetailRouterInterface {

}

