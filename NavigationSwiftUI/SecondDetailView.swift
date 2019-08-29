//
//  SecondDetailView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct SecondDetailView: View {
   
    //@Binding var navController: (selection: Int, FirstDetailIsShown: Bool, SecondDetailIsShown: Bool)
    
    @EnvironmentObject var nav: NavigationController
    
    var body: some View {
        VStack(spacing: 20) {
            Text("second detail View").font(.title)
            
            Button(action: {
                self.nav.tab1Detail1IsShown = true
                self.nav.tab2Detail1IsShown = false
                self.nav.selection = 0
            }) { Text("Go to first tab detail")
            }
            
            Button(action: {
                self.nav.tab1Detail1IsShown = false
                self.nav.tab2Detail1IsShown = false
                self.nav.selection = 0
            }) { Text("Go to first tab master")
            }
            
            TextField("enter data to send around", text: self.$nav.data)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            
        }
            
            
            //   workaround problem with back button
            .navigationBarBackButtonHidden(true) // not needed, but just in case
            .navigationBarItems(leading: MyBackButton(label: "Back") {
                self.nav.tab2Detail1IsShown = false
            })
    }
}
