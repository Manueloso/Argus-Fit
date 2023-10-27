//
//  ContentView.swift
//  Argus Main
//
//  Created by Carmine Andreozzi on 24/10/23.
//

import SwiftUI


struct FirstPage: View {
    var body: some View {
        NavigationStack {
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
                        
                            .padding(.top, 350.0)
                        Text("Fitness Start From You!")
                            .font(Font.custom("SF Pro", size: 20))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 90.0)
                        
                        
                        NavigationLink(destination: GoalsContentView()){
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 120, height: 70)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .inset(by: 2)
                                            .stroke(Color.blue, lineWidth: 4)
                                    )
                                VStack{
                                    HStack{
                                        Text("START")
                                    }
                                    .font(
                                        Font.custom("SF Pro", size: 24)
                                            .weight(.semibold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.blue)
                                    .frame(width: 181, height: 27, alignment: .top)
                                    
                                    
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}








#Preview {
    FirstPage()
}
