//
//  ViewController.swift
//  Swift5WKWebView
//
//  Created by thanai on 2020/07/12.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController ,WKNavigationDelegate{

    var webView = WKWebView()
    @IBOutlet weak var toolBar: UIToolbar!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.frame = CGRect(x:0,y:toolBar.frame.size.height,width: view.frame.size.width,height: view.frame.size.height-toolBar.frame.size.height*2)
        view.addSubview(webView)
        
        webView.navigationDelegate = self
        let url = URL(string: "https://www.yahoo.co.jp")
        let request = URLRequest(url: url!)
        webView.load(request)
        
        webView.navigationDelegate = self
        
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("Start Loading.")
        indicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Finish Loading.")
        indicator.stopAnimating()
    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func go(_ sender: Any) {
        webView.goForward()
        
    }
}

