//
//  ViewController.swift
//  LocalLikeYou
//
//  Created by Karla Soto on 12/6/23.
//

import Mapbox
 
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let url = URL(string: "mapbox://styles/locallikeyou/clo61gomh003y01r70gk2784w")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 47.03, longitude: -122.90), zoomLevel: 9, animated: false)
        view.addSubview(mapView)
    }
}

#Preview {
    ViewController()
}



