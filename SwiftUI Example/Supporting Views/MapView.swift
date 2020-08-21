//
//  MapView.swift
//  SwiftUI Example
//
//  Created by Hassan Shahid on 15.8.2020.
//  Copyright © 2020 Hassan Shahid. All rights reserved.
//

import Foundation
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(
                   latitude: 34.011_286, longitude: -116.166_868)
               let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
               let region = MKCoordinateRegion(center: coordinate, span: span)
               view.setRegion(region, animated: true)
           }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
