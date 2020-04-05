//
//  ContentDetail.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 2/1/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentDetail: View {
    var codeName: String
    var url: String
    
    var body: some View {
        VStack{
            HStack {
                Image(codeName)
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                Text(codeName).font(.title)
            }
            WebView(request: URLRequest(url: URL(string:url)!))
        }.navigationBarTitle(Text(codeName), displayMode: .inline)
    }
}

 struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
    
}

struct ContentDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetail(codeName: "X-Wing", url: "https://en.wikipedia.org/wiki/X-wing_fighter")
    }
}
