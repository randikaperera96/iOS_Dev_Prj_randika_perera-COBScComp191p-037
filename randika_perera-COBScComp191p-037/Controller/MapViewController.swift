//
//  MapViewController.swift
//  randika_perera-COBScComp191p-037
//
//  Created by Randika Perera on 9/30/20.
//  Copyright © 2020 Randika Perera. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate{
	
	let locationManager = CLLocationManager()
	let regionSpanInMeters: Double = 500
	
	@IBOutlet weak var mapView: MKMapView!
	
	@IBAction func btNavBackTapped(_ sender: Any) {
		
		self.dismiss(animated: true, completion: nil)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		mapView.delegate = self
		checkLocationServices()
	}
	
	func setUpLocationManager(){
		locationManager.delegate = self
		locationManager.desiredAccuracy = kCLLocationAccuracyBest
	}
	
	func checkLocationAuthorization(){
		switch CLLocationManager.authorizationStatus() {
			case .authorizedWhenInUse:
				setupMapViewForLocation()
				break
			case .denied:
				showErrorMessageDialog("Please enable \"Location Services\" from \"Settings\" to get your location!")
				break
			case .notDetermined:
				locationManager.requestWhenInUseAuthorization()
				break
			case .restricted:
				showErrorMessageDialog("Location tracking is restricted!")
				break
			case .authorizedAlways:
				setupMapViewForLocation()
				break
		}
	}
	
	func setupMapViewForLocation(){
		mapView.showsUserLocation = true
		centerViewOnUserLocation()
		locationManager.startUpdatingLocation()
	}
	
	func checkLocationServices(){
		if CLLocationManager.locationServicesEnabled(){
			setUpLocationManager()
			checkLocationAuthorization()
		}else{
			showErrorMessageDialog("Please enable \"Location Services\" to track your location!")
		}
	}
	
	func centerViewOnUserLocation(){
		if let  location = locationManager.location?.coordinate{
			let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionSpanInMeters, longitudinalMeters: regionSpanInMeters)
			mapView.setRegion(region, animated: true)
		}
	}
}

extension MapViewController: CLLocationManagerDelegate{
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		guard let location = locations.last else {return}
		centerViewOnUserLocation()
	}
	
	func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
		checkLocationAuthorization()
	}
}
