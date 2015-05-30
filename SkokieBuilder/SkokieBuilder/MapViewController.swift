//
//  SecondViewController.swift
//  SkokieBuilder
//
//  Created by Josh Byster on 5/30/15.
//  Copyright (c) 2015 Josh Byster. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet var mapView: MKMapView!
    
    @IBAction func pushBack(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    let locationManager = CLLocationManager()
    var lat:Double!
    var long:Double!
    var name:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude:CLLocationDegrees = lat
        
        var longitude:CLLocationDegrees = long
        
        var latDelta:CLLocationDegrees = 0.05
        
        var lonDelta:CLLocationDegrees = 0.05
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated: false)
        
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        
        annotation.title = name
        
        mapView.addAnnotation(annotation)

        
    }
    
    
}