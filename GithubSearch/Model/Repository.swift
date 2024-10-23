//
//  Repository.swift
//  GithubSearch
//
//  Created by Nhân Trương on 16/10/24.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let fullName: String
    let description: String?
    let stargazersCount: Int
    let htmlUrl: URL
}
