//
//  bottonFile.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 18/09/2025.
//

//
import SwiftUI

struct ButtonFile: View {
    
    var buttonText: String
    var actionButton: () -> Void
    
    var body: some View {
        Button{
            print("Button Tapped")
        }label: {
            Text(buttonText)
                .font(.system(size: 33, weight: .medium, design: .default))
                .foregroundColor(.green)
                .frame(width: 270, height: 50)
                
        }
    }
}


