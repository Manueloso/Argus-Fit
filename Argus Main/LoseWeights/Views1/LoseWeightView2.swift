//
//  LoseWeightView2.swift
//  Argus Main
//
//  Created by Daniele Perrupane on 25/10/23.
//

import SwiftUI

struct LoseWeightView2: View {
    
    let sport: Sport
    var body: some View {
        
        ZStack(alignment:.bottomLeading){
            Image(sport.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 150)
                .clipped()
        }
    }
}

#Preview {
    LoseWeightView2(sport: Sport(name: "Running", imageName: "running"))
}
