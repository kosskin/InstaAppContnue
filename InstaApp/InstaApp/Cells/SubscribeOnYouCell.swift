//
//  SubscribeOnYouCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// Describe subscribe cell

final class SubscribeOnYouCell: UITableViewCell {
    
    // MARK: Constants
    
    private enum Constats {
        static let backgroundColor = "backgroundColor"
        static let textColor = "textColor"
    }

    // MARK: IBOutlet
    
    @IBOutlet private weak var senderImageView: UIImageView!
    @IBOutlet private weak var commentTextLabel: UILabel!
    @IBOutlet private weak var subscribeButton: UIButton!
    
    // MARK: IBAction
    
    @IBAction private func subscribeButtonAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            sender.backgroundColor = UIColor(named: Constats.backgroundColor)
            sender.tintColor = UIColor(named: Constats.backgroundColor)
            sender.layer.borderWidth = 0.5
            sender.layer.borderColor = UIColor(named: Constats.textColor)?.cgColor
            sender.setTitle("Вы подписаны", for: .normal)
            sender.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        } else {
            sender.backgroundColor = .systemBlue
            sender.layer.borderWidth = 0
            sender.setTitle("Подписаться", for: .normal)
            sender.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        }
    }
    
    // MARK: Public Properties
    
    func updateData(currentSubscribe: SubscribeOnYou) {
        let (commentText, imageName, date, userName) = currentSubscribe.newSubscribeOnYou(currentSubscribe)
        
        commentTextLabel.attributedText = NSMutableAttributedString()
            .bold("\(userName) ")
            .normal("\(commentText) ")
            .grayColor("\(date).")
        senderImageView.image = UIImage(named: imageName)
    }
}
