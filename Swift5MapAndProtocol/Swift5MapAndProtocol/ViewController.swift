//
//  ViewController.swift
//  Swift5MapAndProtocol
//
//  Created by thanai on 2020/07/21.
//  Copyright © 2020 thanaism. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController,CLLocationManager,UIGestureRecognizerDelegate {
    
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet var longPress: UILongPressGestureRecognizer!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locManager:CLLocationManager
    
    var addressString = ""
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        settingButton.backgroundColor = .white
        settingButton.layer.cornerRadius = 20.0
        
        
    }

    @IBAction func longPressTap(_ sender: UILongPressGestureRecognizer) {
        
    
        
        if sender.state == .began{
            
            //タップを開始した
            
        }else if sender.state == .ended{
            //タップを終了した
            
            
        }
        
    }
    
    func convert(lat:CLLocationDegrees,lon:CLLocationDegrees){
        
        let geocoder = CLGeocoder()
        let location = CLLocation(latitude: lat, longitude: lon)
        
        geocoder.reverseGeocodeLocation(location){(placeMark, error) in
            
            if let placeMark = placeMark{
                
                if let pm = placeMark.first{
                    
                    if pm.administrativeArea != nil || pm.location != nil {
                        self.addressString = pm.name! + pm.administrative! + pm.locality!
                    }else{
                        self.addressString = pm.name!
                    }
                    
                }
            }
            
        }
        
        
        
    }
    
}

