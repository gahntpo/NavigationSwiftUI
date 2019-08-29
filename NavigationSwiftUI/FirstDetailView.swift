//
//  FirstDetailView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct FirstDetailView: View {
    
    @EnvironmentObject var nav: NavigationController
    
    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("first detail View").font(.title)
            
            Text("this is the data you entered in second tab: ").font(.body)
            Text(self.nav.data).font(.body).padding().border(Color.black)
            
            NavigationLink(destination: FirstTabLastView(), isActive: self.$nav.tab1Detail2IsShown) {
                Text("go to last detail on nav stack")
            }
            
            
            Button(action: {
                self.nav.tab1Detail1IsShown = false
                self.nav.tab2Detail1IsShown = false
                self.nav.selection = 1
            }) { Text("Go to second tab")
            }
        }
            
    
            //always call from one stackview above, which is the right event to further collapse navStack
            //get notified when view is dissmised
            .onReceive(self.nav.$tab1Detail2IsShown, perform: { (out) in
                print("recieve goToRootController: \(self.nav.goToRootController) with detail \(self.nav.tab1Detail1IsShown.description) and detail \(self.nav.tab1Detail2IsShown.description)")
                if self.nav.tab1Detail2IsShown ==  false && self.nav.tab1Detail1IsShown == true && self.nav.goToRootController == true {
                    print("collapse stack")
                    self.nav.tab1Detail1IsShown = false
                }
                
                if !self.nav.tab1Detail2IsShown && !self.nav.tab1Detail1IsShown && self.nav.goToRootController {
                    print("finished collapsing")
                    self.nav.goToRootController = false
                }
            })

            //   workaround problem with back button
            .navigationBarBackButtonHidden(true) // not needed, but just in case
            .navigationBarItems(leading: MyBackButton(label: "Back") {
                 self.nav.tab1Detail1IsShown = false
                
            })
        
    }
}


struct MyBackButton: View {
    let label: String
    let closure: () -> ()

    var body: some View {
        Button(action: { self.closure() }) {
            HStack {
                Image(systemName: "chevron.left")
                Text(label)
            }
        }
    }
}
