//
//  WebView.swift
//  GithubSearch
//
//  Created by Nhân Trương on 22/10/24.
//

import SwiftUI
import SafariServices

struct WebView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<WebView>) {}
}
