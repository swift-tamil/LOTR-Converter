//
//  DoneButton.swift
//  LOTR Converter
//
//  Created by python on 31/10/23.
//

import SwiftUI

struct DoneButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Button("Done"){
            dismiss()
        }
        .font(.largeTitle)
        .padding(10)
        .foregroundColor(.white)
        .background(.brown)
        .cornerRadius(15)
    }
}

#Preview {
    DoneButton()
        .previewLayout(.sizeThatFits)
}
