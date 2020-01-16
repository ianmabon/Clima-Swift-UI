//
//  ContentView.swift
//  Clima Swift UI
//
//  Created by Ian Mabon on 12/3/19.
//  Copyright © 2019 Ian Mabon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var weatherManager = WeatherManager()
    @State var citySearched: String = ""
  
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Button(action: {
                    self.weatherManager.fetchWeather()

                }) {
                    Image(systemName: "location.circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50, alignment: .center)
                        .padding(.all)
                }
                ZStack {
//                  RoundedRectangle()
                    TextField("Search", text: $citySearched)
                        .font(.system(size: 30))
                        .padding(.all)
                }
                Button(action: {
                    self.weatherManager.fetchWeather(cityName: self.citySearched)
                    print(self.citySearched)
                    
                })
                {
                    
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50, alignment: .center)
                        .padding(.all)
                    
                }
            }
            
            Spacer()
            HStack {
                Spacer()
                Image(systemName: "\(self.weatherManager.iconString)")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.trailing)
            }
            HStack {
                Spacer()
                Text("\(self.weatherManager.temperature)˚F")
                    .fontWeight(.heavy)
                    .font(.system(size: 60))
                    .padding(.trailing)
                
                
            }
            
            HStack {
                Spacer()
                Text("poop")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .padding(.trailing)
                
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 300, height: 400, alignment: .center)
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        )
        
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
