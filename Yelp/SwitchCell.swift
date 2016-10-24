//
//  SwitchCell.swift
//  Yelp
//
//  Created by Prachie Banthia on 10/23/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    @objc optional func switchCell(SwitchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {
    
    @IBOutlet weak var filterLabel: UILabel!
    @IBOutlet weak var filterSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        filterSwitch.addTarget(self, action: #selector(SwitchCell.switchValueChanged), for: UIControlEvents.valueChanged)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func switchValueChanged(){
        delegate?.switchCell?(SwitchCell: self, didChangeValue: filterSwitch.isOn)
    }

}
