//
//  ThirdMasterView.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//

import SwiftUI

struct ThirdMasterView: View {
    
    @State var navController = (selection: 1, firstDetailIsShown: false, secondDetailIsShown: false)
    
  
    
    var body: some View {
            NavigationView{
                VStack{
                    
                    Text("use tupel to collect all the view isShown states and pass it as input parameter").lineLimit(3)
                 
                    
                    NavigationLink(destination: ThirdDetailView(navController: self.$navController), isActive: $navController.firstDetailIsShown) {
                            Text("go to detail")
                    }
                    
                }
                    
                .navigationBarTitle(Text("Third MasterView"))
            }.navigationViewStyle(StackNavigationViewStyle())
    }
}

