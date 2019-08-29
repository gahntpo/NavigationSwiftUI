//
//  FirstMasterView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI


struct FirstMasterView: View {

   //  @Binding var navController: (selection: Int, FirstDetailIsShown: Bool, SecondDetailIsShown: Bool)
    
    @EnvironmentObject var nav: NavigationController
    
    
    var body: some View {
        NavigationView{
            VStack{

//                Button(action: {
//                    self.nav.tab1Detail1IsShown = true
//                   // self.nav.goToRootController = false
//                }) {
//                    
//                }
                
                NavigationLink(destination: FirstDetailView(), isActive: self.$nav.tab1Detail1IsShown) {
                    Text("go to first detail")
                }
                    
                
//                .onReceive(self.nav.$tab1Detail1, perform: { (out) in
//                    print("root controller changed to \(self.nav.goToRootController) with detail \(out)")
//                    if out.description == "false" && self.nav.goToRootController == true {
//                        print("done")
//                       // self.nav.goToRootController = false
//                    }
//                     
//                })
//                .onReceive(self.nav.$goToRootController, perform: { (out) in
//                     print("root controller")
//                    print("goToRootController: \(self.nav.goToRootController) with detail \(self.nav.tab1Detail1.description) and detail \(self.nav.tab1Detail2.description)")
//                    if out == true {
//                       
//                        self.nav.goToRootController = false
//                        self.nav.tab1Detail1 = false
//                       // self.nav.tab1Detail2 = false
//                         print("collapse")
//                    }
//                    
//                    
//                 })
                
            }
            
        .navigationBarTitle(Text("First MasterView"))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

