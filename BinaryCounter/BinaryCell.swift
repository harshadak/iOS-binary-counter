//
//  BinaryCell.swift
//  BinaryCounter
//
//  Created by H on 9/13/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import Foundation
import UIKit

class BinaryCell: UITableViewCell {
    
    weak var delegate: BinaryCounterDelegate?
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        delegate?.subtraction(text: self.numberLabel.text!)
        
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate?.addition(text: self.numberLabel.text!)
    }
    
    @IBOutlet weak var numberLabel: UILabel!
}
