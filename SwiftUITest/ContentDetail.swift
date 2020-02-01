//
//  ContentDetail.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 2/1/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

struct ContentDetail: View {
    var codeName: String
    
    var body: some View {
        VStack {
            Image(codeName)
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            Text(codeName)
                .font(.title)
        }.navigationBarTitle(Text(codeName), displayMode: .inline)
    }
}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetail(codeName: "X-Wing")
    }
}
