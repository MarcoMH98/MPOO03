//
//  ViewController.swift
//  mapitas
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {//Self

    @IBOutlet weak var mapa: MKMapView!
    
    //Instancia del tipo manager
    //Métodos necesarios para manejar localidades
    let locationManager = CLLocationManager()
    
    //Es un objeto
    let location = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapa.delegate = self
        locationManager.delegate = self
        
        //Solicito permiso (con respecto a daatos privados del usuario)
        //Checo permiso, se pide permiso en info.plist le doy en la bolita con signo +
        //Escribimos y seleccionamos -Privacy Location Always and When in Use Usage Description
        //Luego agregamos otro con la bolita +
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.distanceFilter = kCLDistanceFilterNone
        
        locationManager.startUpdatingLocation()
        
        mapa.showsUserLocation = true
        
        
    }//Self toda la clase
    //Se delega en la misma clase
    //Implemento código para que el mapa interactue

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009))
        
        mapa.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(location)
    }

}

