
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .lightBlue]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack (spacing : 20 ) {
                Text("Abuja, FCT")
                    .font(.system(size: 40, weight: .medium))
                    .foregroundColor(.white)
                
                Image(systemName: "sun.snow.fill")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 170, height: 170)
                Text("24°C")
                    .font(.system(size: 60, weight: .medium))
                    .foregroundColor(.white)
                
                HStack  {
                    VStack{
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("28°C")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack{
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("28°C")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack{
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("28°C")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack{
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("28°C")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                    VStack{
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.fill")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("28°C")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.white)
                    }
                }
                
                    
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
}

#Preview {
    ContentView()
}
