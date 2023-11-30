//
//  DetailView.swift
//  infoH4x0r
//
//  Created by Alejandro Alberto Gavira García on 30/11/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        SafariSFWebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https:\\www.google.com")
}


