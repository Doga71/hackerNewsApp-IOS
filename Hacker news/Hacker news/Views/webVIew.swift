//
//  webVIew.swift
//  Hacker news
//
//  Created by Aditya kumar on 28/04/20.
//  Copyright © 2020 Aditya kumar. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebVIew: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

