//
//  PostData.swift
//  Hacker news
//
//  Created by Aditya kumar on 28/04/20.
//  Copyright © 2020 Aditya kumar. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {   // assign objectID to id
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
