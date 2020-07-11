//
//  ExchangeRateView.swift
//  pack_calculator
//
//  Created by Rowa on 2020/7/8.
//  Copyright © 2020 pack-trip.com. All rights reserved.
//

import SwiftUI

struct ExchangeRateView: View {
    var body: some View {
        VStack {
        
        rateExchange()
        //Rectangle 31
        displayLabel()
        Rectangle()
        .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1)), lineWidth: 1)
        .frame(width: 375, height: 286)
        .overlay(DigitButton())
        Spacer()
        
    }
    .padding(20)
}
}

struct ExchangeRateView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRateView()
    }
}

struct rateExchange: View {
    var body: some View {
        VStack {
            
            Text("Transfer").font(.custom("Roboto Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.06666667014360428, green: 0.6000000238418579, blue: 0.6196078658103943, alpha: 1))).multilineTextAlignment(.center)
            //Rectangle 46
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .frame(width: 314, height: 109)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:1, x:0, y:1)
                .overlay(
                    HStack(spacing:40) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("EUR")
                                .font(.custom("Roboto Bold", size: 24))
                                
                                    
                            
                                
                                
                            //1.00
                            Text("1.00 ").font(.custom("Roboto Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.7411764860153198, green: 0.7411764860153198, blue: 0.7411764860153198, alpha: 1)))
                            
                        }
                        //Ellipse 20
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.8784313797950745, green: 0.8784313797950745, blue: 0.8784313797950745, alpha: 1)))
                            .frame(width: 40, height: 40)
                        
                        VStack(spacing: 10) {
                            Text("TWD").font(.custom("Roboto Bold", size: 24))
                            Text("31.73").font(.custom("Roboto Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 0.06666667014360428, green: 0.6000000238418579, blue: 0.6196078658103943, alpha: 1)))
                        }
                        
                    }
            )
            
           // Spacer()
        }
        .padding(.top,20)
    }
}

struct displayLabel: View {
    var body: some View {
        //Rectangle 52
        Rectangle()
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 204, height: 20)
            .overlay(Text("0").font(.system(size: 24)),
                alignment: .trailing)
        

    }
}
struct DigitButton: View {
    let digits = [[7, 8, 9],
                  [4, 5, 6],
                  [1, 2, 3],
                  [0]]
    
    var body: some View {
        ForEach(digits, id: \.self) { rowDigit in
            HStack(spacing: 10) {
                ForEach(rowDigit, id: \.self) {digit in
                    Button("\(digit)", action: {})
                        .font(.custom("Roboto Bold", size: 24))
                        .frame(width: 85.5, height: 75.3)
                    
                    
                }
                
            }
        }
        
    }
}

