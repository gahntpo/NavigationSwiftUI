//
//  NavigationController.swift
//  NavigationSwiftUI
//
//  Created by Karin Prater on 15.08.19.
//  Copyright © 2019 kar.par. All rights reserved.
//



import SwiftUI

final class NavigationController: ObservableObject  {
   
    @Published var selection: Int = 1
    
    @Published var tab1Detail1IsShown = false
    @Published var tab1Detail2IsShown = false
    
    @Published var tab2Detail1IsShown = false
    @Published var tab2Detail2IsShown = false
    
    @Published var goToRootController = false
    
    @Published var data: String = "hand me around" //data shared by multiple views, to hand around
}




