//
//  ViewController.swift
//  MVC-N
//
//  Created by Ryabinin on 08.06.2020.
//  Copyright © 2020 Ryabinin. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    // MARK: - Properties
    
    var comments: [Comment] = []
    
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
     
        configureTableView()
        
        startActivityIndicator()
        
        CommentNetworkService.getComments { (response) in
            self.stopActivityIndicator()
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
    
    
    
    // MARK: - Configure
    
    fileprivate func configureTableView() {
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: .zero)
        
        tableView.register(UINib(nibName: "CommentCell", bundle: nil), forCellReuseIdentifier: "CommentCell")
    }
    
    
    
    // MARK: - ActivityIndicatorView
    
    fileprivate func startActivityIndicator() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    fileprivate func stopActivityIndicator() {
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }
}



extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell", for: indexPath) as! CommentCell
        cell.configure(with: comments[indexPath.row])
        return cell
    }
}
