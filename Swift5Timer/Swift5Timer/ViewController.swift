//
//  ViewController.swift
//  Swift5Timer
//
//  Created by thanai on 2020/07/11.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        stopButton.isEnabled = false
        
        for i in 0..<5{
            // print(i)
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        imageView.image = UIImage(named :"0")
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @objc func timerUpdate(){
        imageView.image = imageArray[count]
        count += 1
        
        if count > 4 {
            count = 0
        }
    }

    @IBAction func start(_ sender: Any) {
        stopButton.isEnabled = true
        startButton.isEnabled = false
        startTimer()
    }
    
    @IBAction func stop(_ sender: Any) {
        startButton.isEnabled = true
        stopButton.isEnabled = false
        timer.invalidate()
        count = 0
    }
}

