//
//  Article.swift
//  GoodNews
//
//  Created by Myron Dulay on 2/13/21.
//

import Foundation

struct ArticleList: Decodable {
  let totalResults: Int
  let status: String
  let articles: [Article]
}

struct Article: Decodable {
  let title: String
  let description: String?
}
