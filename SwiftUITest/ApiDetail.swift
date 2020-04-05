//
//  ApiDetail.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 4/4/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

struct Response: Codable {
    var results: [SongModel]
}

struct ApiDetail: View {
    @State var results = [SongModel]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                
                Text(item.collectionName)
            }
        }
    .onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let url = URL(string: "https://itunes.apple.com/search?term=run+the+jewels&entity=song") else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) {data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data){
                    DispatchQueue.main.async {
                        self.results = decodedResponse.results
                    }
                    
                    return
                }
            }
            
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown Error")")
        }.resume()
    }
}

struct ApiDetail_Previews: PreviewProvider {
    static var previews: some View {
        ApiDetail()
    }
}
