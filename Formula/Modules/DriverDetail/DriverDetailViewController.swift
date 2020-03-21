//
//  DriverDetailViewController.swift
//  CIViperGenerator
//
//  Created by Varol AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import UIKit

protocol DriverDetailViewControllerInterface: class {

}

class DriverDetailViewController: UIViewController {
    var presenter: DriverDetailPresenterInterface!
    var driverId: Int?
    
    @IBOutlet weak var driverImage: UIImageView!
    @IBOutlet weak var driverTeam: UILabel!
    @IBOutlet weak var driverAge: UILabel!
    
    override func viewDidLoad() {
        print(driverId)
    }
}

extension DriverDetailViewController: DriverDetailViewControllerInterface {

}
