//
//  NewsListViewModel.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import UIKit

protocol NewsListViewModelProtocol {
    func fetchNews(completion: @escaping ([NewsViewModel]) -> Void)
    
    init(with newsManager: NewsManagerProtcol)
}


final class NewsListViewModel: NewsListViewModelProtocol
{
   
    
    private var newsManager: NewsManagerProtcol
    
   
    init(with newsManager: NewsManagerProtcol) {
        self.newsManager = newsManager
    }
    
    func fetchNews(completion: @escaping ([NewsViewModel]) -> Void) {
        newsManager.fetchNews { newsList in
            completion(newsList.map {NewsViewModel(news: $0)})
            
        }
    }
    
    
    
}
