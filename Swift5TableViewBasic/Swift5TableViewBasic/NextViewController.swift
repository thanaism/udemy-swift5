//
//  NextViewController.swift
//  Swift5TableViewBasic
//
//  Created by thanai on 2020/07/13.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var todoLabel: UILabel!
    
    var todoString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todoLabel.text = todoString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden=false
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
