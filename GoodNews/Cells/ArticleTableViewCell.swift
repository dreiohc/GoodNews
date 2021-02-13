//
//  ArticleTableViewCell.swift
//  GoodNews
//
//  Created by Myron Dulay on 2/13/21.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  
  func configure(_ config: ArticleViewModel) {
    self.titleLabel.text = config.title
    self.descriptionLabel.text = config.description
  }
}
