//
//  SecondMasterView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct SecondMasterView: View {
     //@Binding var navController: (selection: Int, FirstDetailIsShown: Bool, SecondDetailIsShown: Bool)
    
      @EnvironmentObject var nav: NavigationController
    
    var body: some View {
        NavigationView{
            VStack{
                
                NavigationLink(destination: SecondDetailView(), isActive: $nav.tab2Detail1IsShown) {
                        Text("go to first detail")
                }
                
            }
                
            .navigationBarTitle(Text("Second MasterView"))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

