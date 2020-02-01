//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 2/1/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(starFighters){
            starFighter in ContentRow(codeName: starFighter.codeName, description: starFighter.description)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
