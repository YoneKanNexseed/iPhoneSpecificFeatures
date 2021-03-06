//
//  ViewController.swift
//  UserDefaultProject
//
//  Created by yonekan on 2019/04/06.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var colorOpt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefault = UserDefaults.standard
        colorOpt = userDefault.integer(forKey: "colorOpt")
        
        changeBgColor()
        changeLabel()
    }
    
    @IBAction func didClickButton(_ sender: UIButton) {
        if colorOpt == 2 {
            colorOpt = 0
        } else {
            colorOpt += 1
        }
        
        changeBgColor()
        changeLabel()
        
        let userDefault = UserDefaults.standard
        userDefault.set(colorOpt, forKey: "colorOpt")
    }
    
    func changeBgColor() {
        switch colorOpt {
        case 1:
            view.backgroundColor = .lightGray
        case 2:
            view.backgroundColor = .darkGray
        default:
            view.backgroundColor = .white
        }
    }
    
    func changeLabel() {
        switch colorOpt {
        case 1:
            label.text = "LightGray"
        case 2:
            label.text = "DarkGray"
        default:
            label.text = "White"
        }
    }
}
