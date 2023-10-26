//
//  LoseWeightsView2.swift
//  Argus Main
//
//  Created by Daniele Perrupane on 25/10/23.
//

import SwiftUI

struct LoseWeightsView2: View {
    
    var viewModel = SportsViewModel()
    
    var body: some View {
        
        
        
        NavigationStack {
            Divider()
                .padding(.bottom,20.0)

            VStack {
                
                ForEach(0..<viewModel.sports.count, id: \.self) { index in
                    if index % 2 == 0 {
                        HStack {
                            RectangleView(sport: viewModel.sports[index])
                            if index + 1 < viewModel.sports.count {
                                RectangleView(sport: viewModel.sports[index + 1])
                            }
                        }
                    }
                }
                //.position(y:100)
                .frame(alignment: .center)
                //.padding(.top, 90.0)
                
                
                
                
            }.navigationTitle("Lose Weights")
                .padding(.bottom, 230.0)
                //.padding(.top,0.0)
        }
    }
}



#Preview {
    LoseWeightsView2()
}
