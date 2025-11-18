//
//  bottonFile.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 18/09/2025.
//

//
import SwiftUI

struct ButtonFile: View {
    
    var tittle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(tittle)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
                  
    }
}



