//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Binding var leftCurrency: Currency;
    @Binding var rightCurrency: Currency;
    
    @State var gridColumns = [GridItem(),GridItem(),GridItem()]
    
    var body: some View {
        
        //MARK: BODY
        ZStack{
            
            Image(.parchment)
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(.brown)
            
            VStack{
                
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
               IconGrid(currency: $leftCurrency)
               
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                IconGrid(currency: $rightCurrency)
                
                DoneButton()
            }
            
        }
    }
}

#Preview {
    SelectCurrency(leftCurrency: .constant(.silverPeice), rightCurrency: .constant(.goldPiece))
    
}
