//
//  FirstTabLastView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct FirstTabLastView: View {
    
    @EnvironmentObject var nav: NavigationController
    
    var body: some View {
        Button(action: {
          
            self.nav.tab1Detail2IsShown = false
              self.nav.goToRootController = true
           
            
        }) {Text("Done and go back to beginning of navigation stack")
        }
        .navigationBarBackButtonHidden(true) // not needed, but just in case
        .navigationBarItems(leading: MyBackButton(label: "Back") {
              self.nav.tab1Detail2IsShown = false
        })
    }
}

#if DEBUG
struct FirstTabLastView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabLastView()
    }
}
#endif
