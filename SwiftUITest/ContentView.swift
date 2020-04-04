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
        
        VStack {
            NavigationView{
                VStack {
                    List(starFighters){ starFighter in
                        NavigationLink(destination: ContentDetail(codeName: starFighter.codeName)) {
                             ContentRow(codeName: starFighter.codeName, description: starFighter.description)
                        }

                    }.navigationBarTitle(Text("StarFighters"), displayMode: .large)
                    
                    NavigationLink(destination: ApiDetail()){
                         APIContent(text:"API Test")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
