//
//  PostModel.swift
//  educationalApp
//
//  Created by Swift Learning on 29.06.2022.
//

struct PostModel: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
