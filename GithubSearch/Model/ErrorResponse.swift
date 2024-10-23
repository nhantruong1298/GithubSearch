//
//  ErrorResponse.swift
//  GithubSearch
//
//  Created by Nhân Trương on 16/10/24.
//

import Foundation

struct ErrorResponse: Decodable,Error{
    let message: String
}
