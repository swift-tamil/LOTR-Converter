//
//  ContentView.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    @State private var silverCount: String = "";
    @State private var goldCount: String = "";
    
    @State private var leftCurrency: Currency = .silverPeice;
    @State private var rightCurrency: Currency = .goldPiece;
    
    @State private var showSelectCurrency: Bool = false
    @State private var showExchangeInfo: Bool = false
    
    //MARK: BODY
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                HStack{
                    
                    //MARK: Silver Piece
                    
                    VStack{
                        
                        HStack{
                            
                            Image(CurrencyImage.allCases[Currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                            
                            Text(CurrencyText.allCases[Currency.allCases.firstIndex(of: leftCurrency)!].rawValue)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        .sheet(isPresented: $showSelectCurrency, content: {
                            SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                        })
                        
                        TextField("Amount", text: $silverCount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                        
                    }
                    
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    
                    //MARK: Gold Piece
                    
                    VStack {
                        
                        HStack{
                            
                            Text(CurrencyText.allCases[Currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Image(CurrencyImage.allCases[Currency.allCases.firstIndex(of: rightCurrency)!].rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                            
                        }
                        .padding(.bottom, -10)
                        
                        
                        TextField("Amount", text: $goldCount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(50)
                .onTapGesture {
                    showSelectCurrency.toggle()
                }
                .sheet(isPresented: $showSelectCurrency, content: {
                    SelectCurrency(leftCurrency: $leftCurrency, rightCurrency: $rightCurrency)
                })
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            showExchangeInfo.toggle()
                        }, label: {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                        })
                        .sheet(isPresented: $showExchangeInfo, content: {
                            ExchangeInfo()
                        })
                    }
                }
            }
            
            
            
            
        }//:Body
        
    }
}

#Preview {
    ContentView()
}
