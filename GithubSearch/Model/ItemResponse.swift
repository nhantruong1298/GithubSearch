//
//  ItemResponse.swift
//  GithubSearch
//
//  Created by Nhân Trương on 21/10/24.
//

import Foundation

struct ItemResponse<T: Decodable>: Decodable{
    let items: [T]
}
                    
