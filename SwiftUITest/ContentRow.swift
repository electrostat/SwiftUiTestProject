//
//  ContentRow.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 2/1/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

struct ContentRow: View {
    var codeName: String
    var description: String
    
    var body: some View {
        HStack {
            Image(codeName).resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(codeName)
                    .font(.title)
                    .lineLimit(nil)
                Text(description)
            }
            Spacer()
        }.padding()
    }
}

#if DEBUG
struct ContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentRow(codeName: "X-Wing", description: "Rebel Space Superiority Fighter")
    }
}
#endif
