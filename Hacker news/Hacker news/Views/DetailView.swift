//
//  DetailView.swift
//  Hacker news
//
//  Created by Aditya kumar on 28/04/20.
//  Copyright © 2020 Aditya kumar. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        //Text("Hello, World!")
        WebVIew(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

