//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Donna on 2022/05/25.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController{
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100.0, height: 50.0)
        view.addSubview(label)
    }
}
