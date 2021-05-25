//
//  ContentView.swift
//  Alura Viagens SwiftUI
//
//  Created by Renilson Santana on 21/05/21.
//

import SwiftUI

struct ContentView: View {
    
    //Variavel que pegar a largura do aparelho (.compact/.regular)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        // view tem as informacões sobre o tamanho e largura do aparelho
        GeometryReader { view in
            
            NavigationView{
                // MARK: VStack Principal
                VStack{
                    
                    HeaderView()
                        .frame(height: horizontalSizeClass == .compact ? 210 : 330)
                    
                    List(viagens) { viagem in
                        //Metodo para navegar para outra tela
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localizacão")){
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }.navigationViewStyle(StackNavigationViewStyle())
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
