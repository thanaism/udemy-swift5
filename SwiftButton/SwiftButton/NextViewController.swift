//
//  NextViewController.swift
//  SwiftButton
//
//  Created by thanai on 2020/07/10.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit



class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: Any) {
        changeLabel.text = "暗号が解除されました。"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
