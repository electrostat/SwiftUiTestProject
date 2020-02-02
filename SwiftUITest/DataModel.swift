//
//  DataModel.swift
//  SwiftUITest
//
//  Created by Anthony Agby on 2/1/20.
//  Copyright © 2020 AgbyTech. All rights reserved.
//

import SwiftUI

let starFighters = [StarFighter(id:1, codeName:"X-Wing", description: "Rebel Space Superiority Fighter", url: "https://en.wikipedia.org/wiki/X-wing_fighter"),
                    StarFighter(id:2, codeName:"Tie Interceptor", description: "Imperial Interceptor", url: "https://en.wikipedia.org/wiki/TIE_fighter"),
                    StarFighter(id:3, codeName:"A-Wing", description: "Rebel Interceptor", url: "https://en.wikipedia.org/wiki/A-wing"),
                    StarFighter(id:4, codeName:"Y-Wing", description: "Rebel Bomber", url: "https://en.wikipedia.org/wiki/Y-wing")]

struct StarFighter : Identifiable {
    var id:Int
    var codeName: String
    var description: String
    var url: String
}
