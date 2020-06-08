//
//  CommentCell.swift
//  MVC-N
//
//  Created by Ryabinin on 08.06.2020.
//  Copyright © 2020 Ryabinin. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    
    // MARK: - Configure
    
    func configure(with comment: Comment) {
        titleLabel.text = comment.name
        descLabel.text = comment.body
    }
}
