//
//  ViewController.swift
//  Luka_Bukuri_Homework27
//
//  Created by Luka Bukuri on 08.06.21.
//

import UIKit

class NewsViewController: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
  
    private var newsManager: NewsManagerProtcol!
    private var viewModel: NewsListViewModelProtocol!
    private var dataSource: NewsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(class: NewsCell.self)
        configureViewModel()
        
    }
    
    func configureViewModel()
    {
        newsManager = NewsManager()
        viewModel = NewsListViewModel(with: newsManager)
        dataSource = NewsDataSource(with: tableView, viewModel: viewModel)
        dataSource.refresh()
    }


}

