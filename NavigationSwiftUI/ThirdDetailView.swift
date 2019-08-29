//
//  ThirdDetailView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct ThirdDetailView: View {
    
    @Binding var navController: (selection: Int, firstDetailIsShown: Bool, secondDetailIsShown: Bool)
    
   
    

    
    var body: some View {
        VStack{
            Text("Third tab: Detail view")
            
            NavigationLink(destination: ThirdTabLastView(navController: self.$navController), isActive: $navController.secondDetailIsShown) {
                                       Text("go to next detail")
                               }
            
        }            //   workaround problem with back button
        .navigationBarBackButtonHidden(true) // not needed, but just in case
        .navigationBarItems(leading: MyBackButton(label: "Back") {
            self.navController.firstDetailIsShown = false
        })
            
    }
}


