//
//  ViewController.swift
//  Where Was I
//
//  Created by Jesse on 11/7/16.
//  Copyright © 2016 Jesse. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var MapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    @IBAction func SaveButtonClicked(_ sender: UIBarButtonItem) {
        let coord = locationManager.location?.coordinate
        
        if let lat = coord?.latitude {
            if let long = coord?.longitude {
                DataStore().StoreDataPoint(latitude: String(lat), longitude: String(long))
            }
        }
        

        
        
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else {
            print("Location not enabled")
            return
        }
        
        print("Location allowed")
        MapView.showsUserLocation = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

