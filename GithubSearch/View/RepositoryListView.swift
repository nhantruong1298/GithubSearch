//
//  RepositoryListView.swift
//  GithubSearch
//
//  Created by Nhân Trương on 16/10/24.
//

import SwiftUI

struct RepositoryListView: View {
    
    @ObservedObject
    private(set) var viewModel: RepositoryListViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    TextField("Search Repositories...", text: $viewModel.text,
                              onCommit: {self.viewModel.search()})
                    .frame(height: 40)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.gray,lineWidth: 2))
                    
                    Button(action: {self.viewModel.search()}, label: {
                        Text("Search")
                    })
                    .frame(height: 40)
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                    .background(RoundedRectangle(cornerRadius: 8).strokeBorder(Color.blue, lineWidth: 2))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                }
                
                List{
                    
                    viewModel.errorMessage.map(Text.init)?
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                    
                    ForEach(viewModel.repositories,id:\.id){ repository in
                        
                        NavigationLink(destination:
                                        WebView(url: repository.htmlUrl)
                            .navigationTitle(Text(repository.fullName))
                        ){
                                RepositoryView(repository: repository)
                        }
                        
                    }
                    
                }
            }
        }
        .navigationBarTitle(Text("Search🔍"))
    }
}

//#Preview {
//    RepositoryListView()
//}
