//
//  ViewController.swift
//  CalcApp
//
//  Created by thanai on 2020/07/12.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var carModel = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel.frontWheel = 10
        carModel.rearWheel = 10
    }

    @IBAction func doAction(_ sender: Any) {
    
        carModel.drive()
        carModel.move(toBack: "後退する")
        let total = carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数：\(total)")
    }
    
}

