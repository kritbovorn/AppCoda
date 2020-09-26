//
//  WKWebViewRepresentable.swift
//  Beginning
//
//  Created by Kritbovorn Taweeyossak on 26/9/2563 BE.
//

import SwiftUI
import WebKit

struct WKWebViewRepresentable: View {
    var body: some View {
        
        WebView(url: "https://www.apple.com")
            .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct WKWebViewRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        WKWebViewRepresentable()
    }
}

struct WebView: UIViewRepresentable {
    
    let url: String
    
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        webView.load(URLRequest(url: URL(string: url)!))
        
        return webView
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("")
    }
    
}
