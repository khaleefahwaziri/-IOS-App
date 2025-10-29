
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .lightBlue]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                Text("Abuja, FCT")
                    .font(.system(size: 40, weight: .medium))
                    .foregroundColor(.white)
                
                Image(systemName: "sun.snow.fill")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 180, height: 180)
                
                    
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
}

#Preview {
    ContentView()
}
