//
//  MapaView.swift
//  Alura Viagens SwiftUI
//
//  Created by Renilson Santana on 25/05/21.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {
    
    var coordenada:CLLocationCoordinate2D
    
    //Metodo obrigatorio
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    //Metodo obrigatorio
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //Amplitude do mapa
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordenada: viagens[0].localizacao)
    }
}
