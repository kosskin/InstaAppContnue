//
//  HeaderCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 22.10.2022.
//

import UIKit

/// describe Header cell in SearchTableView
final class HeaderCell: UITableViewCell {
    
    // MARK: Constants
    
    private enum Constants {
        static let postsAmount = "24"
        static let postsText = "Публикации"
        static let subscribersAmount = "3,3 млн."
        static let subscribers = "Подписчиков"
        static let subscriptionsAmount = "1"
        static let subscriptions = "Подписки"
        static let lineBreak = "\n"
    }

    // MARK: UIBOutlets
    
    @IBOutlet private weak var avaImageView: UIImageView!
    @IBOutlet private weak var postsLabel: UILabel!
    @IBOutlet private weak var subscribersLabel: UILabel!
    @IBOutlet private weak var subscriptionsLabel: UILabel!
    
    // MARK: Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }
    
    // MARK: Private Methods
    
    private func configUI() {
        postsLabel.attributedText = NSMutableAttributedString()
            .big("\(Constants.postsAmount)")
            .normal(Constants.lineBreak)
            .small("\(Constants.postsText)")
        
        subscribersLabel.attributedText = NSMutableAttributedString()
            .big("\(Constants.subscribersAmount)")
            .normal(Constants.lineBreak)
            .small("\(Constants.subscribers)")
        
        subscriptionsLabel.attributedText = NSMutableAttributedString()
            .big("\(Constants.subscriptionsAmount)")
            .normal(Constants.lineBreak)
            .normal("\(Constants.subscriptions)")
    }
}
