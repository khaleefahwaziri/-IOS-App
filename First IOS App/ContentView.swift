//
//  ContentView.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 16/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .lightBlue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Coventry, UK")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    
                    
                    Text("15°C")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .medium, design: .default))
                }
                .padding(.bottom, 40)
                
                
                
                
                HStack{
                    WeatherDayView(daysOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
                    WeatherDayView(daysOfWeek: "WED", imageName: "cloud.rain.fill", temperature: 5)
                    WeatherDayView(daysOfWeek: "THU", imageName: "cloud.sleet", temperature: 12)
                    WeatherDayView(daysOfWeek: "FRI", imageName: "snowflake", temperature: 3)
                    WeatherDayView(daysOfWeek: "SAT", imageName: "cloud.sun.bolt.circle.fill", temperature: 18)
                }
                
                Spacer()
                
                Button{
                    print("button pressed")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 200, height: 50)
                        .font(.system(size: 17, weight: .bold, design: .default))
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                Spacer(minLength: 40)
                
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}








struct WeatherDayView: View {
    
    var daysOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(daysOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            
            
            Text("\(temperature)°C")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .medium, design: .default))
            
        }
    }
}
