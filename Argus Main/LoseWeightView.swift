//
//  LoseWeightView.swift
//  Argus Fitness
//
//  Created by Daniele Perrupane on 20/10/23.
//

import SwiftUI

struct LoseWeightView: View {
    var body: some View {
        
        
        VStack{
            NavigationStack {
                VStack{}.navigationTitle("Lose Weight")
                Divider()
                    .frame(height: 0.5)
                    .opacity(10)
                    .background(Color.black)
            }
            
            
                        HStack {
                            //RUNNING
                VStack {
                    Text("Running").bold()
                    ZStack {
                        
                        Image("running")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 170)
                    }.clipShape(RoundedRectangle(cornerRadius: 25.0)).shadow(radius: 20)
                }.padding(.trailing, 30.0)
                   
                VStack {
                    Text("Functional").bold()
                    ZStack {
                        Image("functional")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 170)
                        
                    }.clipShape(RoundedRectangle(cornerRadius: 25.0)).shadow(radius: 20)
                }
            }.padding(.bottom,60).padding(.horizontal, 43)
            
            
            
            HStack {
                VStack {
                    Text("Bodyweights").bold()
                    ZStack{
                        Image("bodyweights")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 170)
                    }.clipShape(RoundedRectangle(cornerRadius: 25.0)).shadow(radius: 20)
                }.padding(.trailing, 30.0)
                VStack {
                    Text("Powerlifting").bold()
                    ZStack{
                        Image("powerlifting")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 170)
                    }.clipShape(RoundedRectangle(cornerRadius: 25.0)).shadow(radius: 20)
                }
                
            }.padding(.horizontal, 43)
        }
        .padding(.bottom, 160.0)
        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

            
    }
}

#Preview {
    LoseWeightView()
}
