//
//  RectangleView.swift
//  Argus Main
//
//  Created by Daniele Perrupane on 25/10/23.
//

import SwiftUI

struct RectangleView: View {
    var sport: Sport
    
    
    var body: some View {
        VStack {
            Text(sport.name).bold()
            Rectangle()
                
                .foregroundColor(.clear)
                .frame(width: 170, height: 160)
                .background(
                    Image(sport.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 149, height: 147)
                        .clipped()
                        .cornerRadius(10.0)
                ).cornerRadius(17).shadow(radius: 5)
                
                
        }
    }
}

#Preview {
    RectangleView(sport: Sport(name: "NomeSport" , imageName:"running"))
}
