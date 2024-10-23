//
//  RepositoryView.swift
//  GithubSearch
//
//  Created by Nhân Trương on 23/10/24.
//

import SwiftUI

struct RepositoryView: View {
    let repository: Repository
    
    var body: some View {
        
        VStack(alignment:.leading){
                
            HStack {
                Image(systemName: "doc.text")
                Text(repository.fullName)
                    .bold()
            }
            
            repository.description
                .map(Text.init)?
                .lineLimit(nil)
            
            HStack {
                Image(systemName: "star")
                Text("\(repository.stargazersCount)")
            }
            
        }
    }
}

//#Preview {
//    RepositoryView()
//}
