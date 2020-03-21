//
//  DriverListCell.swift
//  Formula_VIPER
//
//  Created by VAROL AKSOY on 21.03.2020.
//  Copyright © 2020 Varol AKSOY. All rights reserved.
//

import UIKit

protocol DriverCellDelegate : class{
    func addFavoriteTapped()
}

final class DriverListCell: UITableViewCell {

    @IBOutlet private weak var pointLabel: UILabel!
    @IBOutlet private weak var driverLabel: UILabel!
    @IBOutlet private weak var addFavoriteButton: UIButton!
    
    @IBAction private func addFavoriteButtonAction(_ sender: Any) {
        delegate?.addFavoriteTapped()
        addFavoriteButton.isSelected = !addFavoriteButton.isSelected
    }
    
    weak var delegate : DriverCellDelegate?
    
    func configure(item: DriverItem, delegate: DriverCellDelegate){
        pointLabel.text = String(item.point ?? 0)
        driverLabel.text = item.name
        self.delegate = delegate
        addFavoriteButton.setTitle("Favoriye Ekle", for: .normal)
        addFavoriteButton.setTitle("Favoriden Çıkar", for: .selected)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
