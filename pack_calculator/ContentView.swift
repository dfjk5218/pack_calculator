//
//  ContentView.swift
//  pack_calculator
//
//  Created by Rowa on 2020/6/26.
//  Copyright © 2020 pack-trip.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        //UITabBar.appearance().backgroundColor = UIColor(#colorLiteral(red: 0.2745098174, green: 0.5568627715, blue: 0.5960784554, alpha: 1))
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(#colorLiteral(red: 0.2745098174, green: 0.5568627715, blue: 0.5960784554, alpha: 1))
    }
    let topColor = Color(#colorLiteral(red: 0.2745098174, green: 0.5568627715, blue: 0.5960784554, alpha: 1))
    
    var body: some View {
        
        //top navigate and status color setting
        GeometryReader{geometry in
            VStack{
                Rectangle().frame(width: geometry.size.width, height: 20, alignment: .center).foregroundColor(self.topColor)
                Spacer()
                
        TabView {
            
                MenuView()
                    .tabItem {
                     VStack {
                        Image(systemName: "1.circle")
                        Text("Home")
                                    }
                            }.tag(1)
                            
                            
                PcktripView()
                    .tabItem {
                     VStack {
                        Image("pcktrip_logo")
                        Text("About")
                                    }
                            }.tag(2)
                    
                ExchangeRateView()
                    .tabItem {
                        VStack {
                            Image(systemName: "folder")
                            Text("Wallet")
                        }
                    }.tag(3)
        }.accentColor(.white)
                
               
            }
            //.frame(width: geometry.size.width, height: geometry.size.height)
        }.edgesIgnoringSafeArea(.top)
        
        
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
