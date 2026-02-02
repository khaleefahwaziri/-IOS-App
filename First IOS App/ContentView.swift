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
        ZStack {
            BackgroundView(isNightModeOn: isNightModeOn)
        VStack {
            
            MainDayView(isNightModeOn: isNightModeOn, CityName: isNightModeOn ? "Coventry" : "Cairo", imageName: isNightModeOn ? "moon.zzz.fill" : "cloud.sun.fill", Temperature: 28)
            HStack{
                WeekDayView(weekDay: "MON", imageName: "cloud.sun.fill", Temperature: 28)
                WeekDayView(weekDay: "TUE", imageName: "cloud.sun.fill", Temperature: 28)
                WeekDayView(weekDay: "WED", imageName: "cloud.sun.fill", Temperature: 28)
                WeekDayView(weekDay: "THUR", imageName: "cloud.sun.fill", Temperature: 28)
                WeekDayView(weekDay: "FRI", imageName: "cloud.sun.fill", Temperature: 28)
            }
            ButtonView(isNightModeOn: $isNightModeOn)
            }
            
            
        }
    }
    
}

#Preview {
    ContentView()
}


struct BackgroundView: View {
    
     var isNightModeOn: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [ isNightModeOn ? .gray :  .blue, isNightModeOn ? .black: .white]),
            startPoint: .top, endPoint: .bottom
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct MainDayView: View {
    var isNightModeOn: Bool
    var CityName: String
    var imageName: String
    var Temperature: Int
    
    var body: some View {
        
        VStack{
            Text(CityName)
                .font(.system(size: 45, weight: .heavy, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(Temperature)°C")
                .font(.system(size: 40, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
        
    }
}


struct WeekDayView: View {
    
    var weekDay: String
    var imageName: String
    var Temperature: Int
    
    var body: some View {
        VStack{
            Text(weekDay)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundStyle(.mint, .orange, .green,)
            
            Text("\(Temperature)°C")
                .font(Font.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(Color.white)
        }
        .padding(.bottom, 10)
        
        
    }
}


struct ButtonView: View {
    
    @Binding var isNightModeOn: Bool
    
    var body: some View {
        Button{
            isNightModeOn.toggle()
        }label: {
            Text("Toggle Night Mode")
                .font(.system(size: 20, weight: .medium, design: .default) )
                .frame(width: 270, height: 50)
                .background(.white.gradient)
                .cornerRadius(25)
        }
        .padding(.top, 20)
    }
}
