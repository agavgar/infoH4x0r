//
//  SafariSFWebView.swift
//  infoH4x0r
//
//  Created by Alejandro Alberto Gavira García on 30/11/23.
//

import Foundation
import SafariServices
import SwiftUI

struct SafariSFWebView: UIViewControllerRepresentable {
    
    let urlString: String?
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: URL(string: urlString!)!)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
}
