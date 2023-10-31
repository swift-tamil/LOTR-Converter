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
                            
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 33)
                            
                            Text("Silver Piece")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                        } .padding(.bottom, -5)
                        
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
                            
                            Text("Gold Piece")
                                .foregroundColor(.white)
                                .font(.headline)
                            
                            Image(.goldpiece)
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
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        Image(systemName: "info.circle.fill")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                }
            }
          
            
            
            
        }//:Body
    
    }
}

#Preview {
    ContentView()
}
