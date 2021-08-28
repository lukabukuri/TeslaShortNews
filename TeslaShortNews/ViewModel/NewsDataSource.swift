//
//  NewsDataSource.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import UIKit

class NewsDataSource: NSObject, UITableViewDataSource
{

    private var tableView: UITableView!
    private var viewModel: NewsListViewModelProtocol!
    private var newsViewModels = [NewsViewModel]()
    
    init(with tableView: UITableView, viewModel: NewsListViewModelProtocol) {
        super.init()
        self.tableView = tableView
        tableView.dataSource = self
        self.viewModel = viewModel
    }
    
    func refresh()
    {
        viewModel.fetchNews { viewModels in
            self.newsViewModels.append(contentsOf: viewModels)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
    }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return newsViewModels.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.deque(NewsCell.self, for: indexPath)
        cell.configure(with: newsViewModels[indexPath.row])
        return cell
    }
    
    
    }

