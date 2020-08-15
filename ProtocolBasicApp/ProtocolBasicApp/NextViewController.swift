//
//  NextViewController.swift
//  ProtocolBasicApp
//
//  Created by thanai on 2020/07/21.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

protocol CatchProtocol {
    //規則を決める
    func catchData(count:Int)
}

class NextViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func plusAction(_ sender: Any) {
        
        count += 1
        label.text = String(count)
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
