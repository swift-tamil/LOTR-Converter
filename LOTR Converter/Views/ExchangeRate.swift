//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct ExchangeRate: View {
    
    @State var leftImage: ImageResource;
    @State var text: String;
    @State var rightImage: ImageResource;
    
    var body: some View {
        
        HStack{
            
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, text: "Sample", rightImage: .goldpenny)
}
