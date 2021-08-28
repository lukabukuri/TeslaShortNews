//
//  NewsViewModel.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import UIKit


struct NewsViewModel
{
    private var news: News
    
    init(news: News)
    {
        self.news = news
    }
    
    var title: String
    {
        news.title ?? ""
    }
    
    var author: String
    {
        news.author ?? ""
    }
    
    var image: URL?
    {
        URL(string: news.imageURL ?? "")
    }
    
    
    var time: String?
    {
        news.time ?? ""
    }
}
