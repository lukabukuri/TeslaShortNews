//
//  NewsManager.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import Foundation

protocol NewsManagerProtcol: AnyObject {
    func fetchNews(completion: @escaping ([News]) -> Void)
}

class NewsManager: NewsManagerProtcol
{
    func fetchNews(completion: @escaping ([News]) -> Void) {
        let url = "https://newsapi.org/v2/everything?q=tesla&apiKey=314f14b561b3416095711d425eea0b2c"
        
        NetworkManager.shared.get(url: url) { (result: Result<NewsResponse, Error>) in
            switch(result)
            {
            case.success(let news):
                completion(news.articles)
                print(news)
            case.failure(let error):
                print(error)
            }
            
        }
    }
    
    
}
