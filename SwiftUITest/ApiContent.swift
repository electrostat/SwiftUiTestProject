//
//  APIContent.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 4/4/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

struct APIContent: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .lineLimit(nil)
    }
}

#if DEBUG
struct APIContent_Previews: PreviewProvider {
    static var previews: some View {
        APIContent(text: "API Test")
    }
}
#endif
