//
//  ViewController.swift
//  Swift5ScreenTransition
//
//  Created by thanai on 2020/07/12.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        label.text = String(count)
//        count = 0
        if count == 10 {
//            performSegue(withIdentifier: "next", sender: nil)
//            let nextVC = segue.destination as! NextViewController
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            nextVC.count2 = count
            navigationController?.pushViewController(nextVC,animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
}

