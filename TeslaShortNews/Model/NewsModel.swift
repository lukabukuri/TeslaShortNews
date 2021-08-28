//
//  File.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import Foundation


struct News: Codable
{
    var title: String?
    var author: String?
    var imageURL: String?
    var time: String?
    
    enum CodingKeys: String, CodingKey
    {
        case title = "title"
        case author = "author"
        case imageURL = "urlToImage"
        case time = "publishedAt"
    }
    
}

struct NewsResponse: Codable
{
    let articles: [News]
}
