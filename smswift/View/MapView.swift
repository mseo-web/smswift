//
//  MapView.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI
import MapKit

struct MapView: View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 52.287892309438604, longitude: 76.94012494677732) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    var body: some View {
//        Map(coordinateRegion: $region)
//                    .edgesIgnoringSafeArea(.all)
        MapTemplate()
    }
}

struct MapTemplate: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapTemplate = MKMapView()
        mapTemplate.delegate = context.coordinator
        let annotation = MKPointAnnotation()
        annotation.title = "Pavlodar"
        annotation.subtitle = "Hometown"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 52.287892309438604, longitude: 76.94012494677732)
        mapTemplate.addAnnotation(annotation)

        return mapTemplate
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        //
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(_parent: self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapTemplate

        init(_parent: MapTemplate) {
            self.parent = _parent
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
