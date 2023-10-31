//
//  IconGrid.swift
//  LOTR Converter
//
//  Created by python on 01/11/23.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency;
    
    @State var gridColumns = [GridItem(),GridItem(),GridItem()]
    
    var body: some View {
        LazyVGrid(columns: gridColumns){
            
            ForEach(0..<5){ i in
                if Currency.allCases[i] == currency{
                    
                    CurrencyIcon(CurrencyImage: CurrencyImage.allCases[i].rawValue, CurrencyText: CurrencyText.allCases[i].rawValue)
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5)
                        )
                        .shadow(color: .black, radius: 9)
                    
                }
                else{
                    
                    CurrencyIcon(CurrencyImage: CurrencyImage.allCases[i].rawValue, CurrencyText: CurrencyText.allCases[i].rawValue)
                        .onTapGesture {
                            currency = Currency.allCases[i]
                        }
                    
                }
               
            }

            
        }
        .padding([.bottom, .leading, .trailing])
        
    }
}

#Preview {
    IconGrid(currency: .constant(.silverPeice))
}
