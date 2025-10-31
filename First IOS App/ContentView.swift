import SwiftUI

struct ContentView: View {
    
    @State private var isNightMoodOn = false
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .lightBlue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                mainWeatherView(cityName: "Abuja, FCT", imageName: "sun.max.fill", temperature: 33)
                
            }
            
            
            HStack {
                
                weekDayView(weekday: "TUE", imageDay: "sunrise.circle.fill", temperatureDay: 5)
                weekDayView(weekday: "TUE", imageDay: "moon.stars.fill", temperatureDay: 5)
                weekDayView(weekday: "TUE", imageDay: "sun.max.circle.fill", temperatureDay: 5)
                weekDayView(weekday: "TUE", imageDay: "moon.fill", temperatureDay: 5)
                weekDayView(weekday: "TUE", imageDay: "sun.snow.fill", temperatureDay: 5)
                
            }
            
        }
        
    }
}


#Preview {
    ContentView()
}


struct mainWeatherView: View {
    
    var cityName: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack (spacing: 8){
            
            Text(cityName)
                .font(.system(size: 40 , weight: .medium , design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 180)
                
                
            
            Text("\(temperature)°C ")
                .font(.system(size: 70 , weight: .medium , design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 8)
    }
}

struct weekDayView: View {
    
    var weekday: String
    var imageDay: String
    var temperatureDay: Int
    
    var body: some View {
        VStack {
            Text(weekday)
                .font(.system(size: 15 , weight: .medium , design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageDay)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
        }
    }
    
}
