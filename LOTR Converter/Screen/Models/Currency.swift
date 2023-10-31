//
//  Currency.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

enum Currency: Double, CaseIterable {
    
    case copperPenny = 640
    case silverPenny = 64
    case silverPeice = 16
    case goldPenny = 4
    case goldPiece = 1
    
}

enum CurrencyText: String, CaseIterable {
    
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPeice = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
    
}

enum CurrencyImage: String, CaseIterable {
    
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPeice = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
    
}
