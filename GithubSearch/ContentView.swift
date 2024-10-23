//
//  ContentView.swift
//  GithubSearch
//
//  Created by Nhân Trương on 16/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RepositoryListView(viewModel:RepositoryListViewModel(mainScheduler: DispatchQueue.main))
    }
}

//#Preview {
//    ContentView()
//}
