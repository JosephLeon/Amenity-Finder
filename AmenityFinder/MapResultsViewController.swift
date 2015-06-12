//
//  MapResultsViewController.swift
//  AmenityFinder
//
//  Created by Joseph Leon on 6/7/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit
import GoogleMaps

class MapResultsViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: GMSMapView!

    @IBAction func mapTypeSegmentPressed(sender: AnyObject) {
        let segmentedControl = sender as! UISegmentedControl
        // The code below utilizes as! which is for xcode 6.3+
        // let segmentedControl = sender as! UISegmentedControl
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = kGMSTypeNormal
        case 1:
            mapView.mapType = kGMSTypeSatellite
        case 2:
            mapView.mapType = kGMSTypeHybrid
        default:
            mapView.mapType = mapView.mapType
        }
    }
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
