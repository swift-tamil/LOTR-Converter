//
//  CurrencyIcon.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct CurrencyIcon: View {
    
    @State var CurrencyImage: String
    @State var CurrencyText: String
    
    
    var body: some View {
        ZStack{
            
            Image(CurrencyImage)
                .resizable()
                .scaledToFit()
            
            VStack {
                
                Spacer()
                
                Text(CurrencyText)
                    .padding(3)
                    .font(.caption)
                .background(.brown.opacity(0.75))
            }
            
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .cornerRadius(25)
    }
}

#Preview {
    CurrencyIcon(CurrencyImage: "goldpenny", CurrencyText: "Coin Name")
}
