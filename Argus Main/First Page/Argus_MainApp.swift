//
//  Argus_MainApp.swift
//  Argus Main
//
//  Created by Carmine Andreozzi on 24/10/23.
//

import SwiftUI

@main
struct Argus_MainApp: App {
    
    @AppStorage("isMyFirstLaunch")
    var isMyFirstLaunch: Bool = true
    
    @State var sportViewMdel = SportsViewModel()
    
    var body: some Scene {
        WindowGroup {
            if isMyFirstLaunch {
                FirstPage(sportViewModel: sportViewMdel)
            } else {
                LoseWeightsView(viewModel: sportViewMdel)
            }
        }
    }
}
