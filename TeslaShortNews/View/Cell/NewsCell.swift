//
//  NewsCell.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import UIKit
import Kingfisher

class NewsCell: UITableViewCell {
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    @IBOutlet weak var newsTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.newsImage.layer.cornerRadius = 50
    }

    func configure(with item: NewsViewModel)
    {
        newsTitle.text = item.title
        newsAuthor.text = item.author
        newsTime.text = item.time
        newsImage.kf.setImage(with: item.image)
    }
}
