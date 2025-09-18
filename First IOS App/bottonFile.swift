//
//  bottonFile.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 18/09/2025.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonText: String
    var buttonPressed: String
    
    var body: some View {
        Button{
            print(buttonPressed)
        }label: {
            Text(buttonText)
                .font(.system(size: 20, weight: .medium, design: .default))
                .frame(width: 280, height: 50)
                .background(Color.white)
                .cornerRadius(8)
                
        }
    }
}
