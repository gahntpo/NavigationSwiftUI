//
//  ThirdTabLastView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct ThirdTabLastView: View {
    
    @Binding var navController: (selection: Int, firstDetailIsShown: Bool, secondDetailIsShown: Bool)
    
    
    
    var body: some View {
        VStack{
             Text("Third tab: last Detail view")
            
            Button(action: {
                self.navController.firstDetailIsShown = false
                self.navController.secondDetailIsShown = false
            }) {Text("Done")
            }
        }
       
    }
}
