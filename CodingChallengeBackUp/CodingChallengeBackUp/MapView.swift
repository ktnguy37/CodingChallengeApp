//
//  MapView.swift
//  CodingChallenge
//
//  Created by Khang Nguyen on 3/20/21.
//

import SwiftUI
import MapKit
import Combine
struct MapView: View {
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion.defaultRegion
    @State private var cancellable: AnyCancellable?
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink { (location) in
            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 700, longitudinalMeters: 700)
        }
    }
    var body: some View {
        
        if locationManager.location != nil {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
                .onAppear(perform: {
                    setCurrentLocation()
                })
        } else {
            Map(coordinateRegion: $region)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


