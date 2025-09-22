//
//  ContentView.swift
//  First IOS App
//
//  Created by Khalifa Waziri on 16/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNigth = false
    
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, bottomColor: .brown)
            
            VStack{
                CityNameView(cityName: "Coventry, UK")
                
                
                MainWeatherView(imageName: "cloud.sun.fill", temperature: 24)
                
                
                
                
                HStack{
                    WeatherDayView(daysOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 25)
                    WeatherDayView(daysOfWeek: "WED", imageName: "cloud.rain.fill", temperature: 5)
                    WeatherDayView(daysOfWeek: "THU", imageName: "cloud.sleet", temperature: 12)
                    WeatherDayView(daysOfWeek: "FRI", imageName: "snowflake", temperature: 3)
                    WeatherDayView(daysOfWeek: "SAT", imageName: "cloud.sun.bolt.circle.fill", temperature: 18)
                }
                
                Spacer()
                
                ButtonView(buttonText: "Change Day Time", buttonPressed: "Button was pressed")
                
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


struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
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

