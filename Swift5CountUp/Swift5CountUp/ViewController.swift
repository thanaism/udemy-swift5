//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by thanai on 2020/07/11.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "0"
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        if count >= 10 {
            changeTextColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
        if count <= 10 {
            resetTextColor()
        }
    }
    
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
    
    func resetTextColor(){
        countLabel.textColor = .white
    }
}

