//
//  MapKitViewController.swift
//  Final Project
//
//  Created by Linda Loay on 23/12/2022.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    let stadiums = [Stadium(name: "Emirates Stadium", lattitude: 51.5549, longtitude: -0.108436),
                    Stadium(name: "Stamford Bridge", lattitude: 51.4816, longtitude: -0.191034),
                    Stadium(name: "White Hart Lane", lattitude: 51.6033, longtitude: -0.065684),
                    Stadium(name: "Olympic Stadium", lattitude: 51.5383, longtitude: -0.016587),
                    Stadium(name: "Old Trafford", lattitude: 53.4631, longtitude: -2.29139),
                    Stadium(name: "Anfield", lattitude: 53.4631, longtitude: -2.96096)
    ]
    
   
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        fetchStadiumsOnMap(stadiums)
        
    }
    func checkLocationServices(){
        if CLLocationManager.locationServicesEnabled(){
            checkLocationAuthorization()
        }else{
            // slow alert letting the user know they have to turn this on.
        }
    }
    
    func checkLocationAuthorization(){
        switch CLLocationManager.authorizationStatus(){
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            mapView.showsUserLocation = true
        case .restricted:
            // shoe an alert letting them know what's up
            break
        case .denied:
            // show alert telling user how to turn on permissions
            break
        case .authorizedAlways:
            break
        default:
            print("error")
        }
    }

    func fetchStadiumsOnMap(_ stadiums: [Stadium]){
        for stadium in stadiums {
            let annotations = MKPointAnnotation()
            annotations.title = stadium.name
            annotations.coordinate = CLLocationCoordinate2D(latitude: stadium.lattitude, longitude: stadium.lattitude)
            mapView.addAnnotation(annotations)
        }
    }
    
//
//        locationManager.delegate = self
//        locationManager.requestAlwaysAuthorization()
//
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
        
    
    

    

}
