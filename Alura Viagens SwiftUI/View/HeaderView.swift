//
//  HeaderView.swift
//  Alura Viagens SwiftUI
//
//  Created by Renilson Santana on 24/05/21.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        GeometryReader { view in
            
            VStack{
                // MARK: VStack Header
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, horizontalSizeClass == .compact ? 50 : 90)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book", size: horizontalSizeClass == .compact ? 20 : 30))
                        .foregroundColor(Color.white)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: horizontalSizeClass == .compact ? 180 : 290, alignment: .top)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                
                
                HStack {
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                    .offset(x: horizontalSizeClass == .compact ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: horizontalSizeClass == .compact ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: horizontalSizeClass == .compact ? 100 : 150, height: horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                    .offset(x: horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                }
                .offset(y: horizontalSizeClass == .compact ? -25 : -37.5)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 600, height: 220))
            
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 350))
        }
        
        
    }
}
