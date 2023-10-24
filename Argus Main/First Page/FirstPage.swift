//
//  ContentView.swift
//  Argus Main
//
//  Created by Carmine Andreozzi on 24/10/23.
//

import SwiftUI


struct FirstPage: View {
    var body: some View {
        VStack {
            Text("Argus Fits")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .bold()
            Text("Fitness Stars from you!")
                .font(.title3)
                .foregroundColor(.white)
            
            GeometryReader { geo in
                ZStack{
                    Image ("FirstWallpaper")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame (width: geo.size.width, height:geo.size.height, alignment: . center)
                        .opacity (1.8)
                    VStack{
                        Text("Argus Fitness")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 350.0)
                        Text("Fitness Start From You!")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 90.0)
                        HStack{
                            Text("START")
                                .font(Font.custom("SF Pro", size: 17))
                            .foregroundColor(Color(red: 0.11, green: 0.52, blue: 0.95))}
                        .padding(.horizontal, 20)
                        .padding(.vertical, 14)
                        .background(.white)
                        .cornerRadius(12)
                    }
                }
            }
        }
    }
}







#Preview {
    FirstPage()
}
