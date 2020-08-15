//
//  ViewController.swift
//  ProtocolBasicApp
//
//  Created by thanai on 2020/07/21.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit



class ViewController: UIViewController, CatchProtocol {
    
    @IBOutlet weak var label: UILabel!


    
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
    }
    
    func catchData(count: Int) {
        label.text = String(count)
    }

}

