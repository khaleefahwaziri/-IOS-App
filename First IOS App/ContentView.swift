//
//  ContentView.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 16/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNightModeOn = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNightModeOn: $isNightModeOn)
            
            VStack{
                CityNameView(cityName: "Coventry, UK")
                
                
                MainWeatherView(imageName: isNightModeOn ? "moon.stars.fill" : "cloud.sun.fill", temperature: 25)
                
                
                
                
                HStack{
                    WeatherDayView(daysOfWeek: "TUE", imageName: isNightModeOn ? "moon.stars.fill" : "cloud.sun.fill", temperature: 24)
                    WeatherDayView(daysOfWeek: "WED", imageName: isNightModeOn ? "sun.snow.circle.fill" : "cloud.rain.fill", temperature: 4)
                    WeatherDayView(daysOfWeek: "THU", imageName: isNightModeOn ? "cloud.bolt.fill" : "cloud.sleet", temperature: 13)
                    WeatherDayView(daysOfWeek: "FRI", imageName: isNightModeOn ? "cloud.moon.bolt.circle.fill" : "snowflake", temperature: 2)
                    WeatherDayView(daysOfWeek: "SAT", imageName: isNightModeOn ? "tornado" : "cloud.sun.bolt.circle.fill", temperature: 18)
                    
                    
                    
                }
                
                Spacer()
                
                Button {
                    isNightModeOn.toggle()
                }label: {
                    Text("Change day mode")
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                        
                }
                
                Spacer()
                
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}


struct CityNameView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 40, weight: .medium, design: .default))
            .foregroundColor(.white)
    }
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
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.black, .white, .orange)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            
            
            Text("\(temperature)°C")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .medium, design: .default))
            
        }
    }
}


struct BackgroundView: View {
    
    @Binding var isNightModeOn: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNightModeOn ? .black : .blue, isNightModeOn ? .gray : .lightBlue ]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            
            Text("\(temperature)°C")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium, design: .default))
        }
        .padding(.bottom, 40)
    }
}
