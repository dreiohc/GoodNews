//
//  Webservice.swift
//  GoodNews
//
//  Created by Myron Dulay on 2/13/21.
//

import Foundation

class Webservice {
  func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      if let error = error {
        print(error.localizedDescription)
        completion(nil)
      } else if let data = data {
        do {
          let articleList = try JSONDecoder().decode(ArticleList.self, from: data)
          completion(articleList.articles)
          print(articleList.articles)
        } catch(let error) {
          print(error)
        }
      }
    }.resume()
  }
}
