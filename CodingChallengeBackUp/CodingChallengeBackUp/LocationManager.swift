//
//  LocationManager.swift
//  CodingChallenge
//
//  Created by Khang Nguyen on 3/20/21.
//

import Foundation
import CoreLocation

class LocationManager: NSObject,ObservableObject {
    
    private let LocationManager = CLLocationManager()
    @Published var location: CLLocation?
    
    override init() {
        super.init()
        
        LocationManager.desiredAccuracy = kCLLocationAccuracyBest
        LocationManager.distanceFilter = kCLDistanceFilterNone
        LocationManager.requestAlwaysAuthorization()
        LocationManager.startUpdatingLocation()
        
        LocationManager.delegate = self
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        DispatchQueue.main.async {
            self.location = location
        }
    }
}

