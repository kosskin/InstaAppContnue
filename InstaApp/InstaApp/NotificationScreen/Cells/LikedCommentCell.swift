//
//  LikedCommentCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// Describe request cell
final class LikedCommentCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var commentTextLabel: UILabel!
    @IBOutlet private weak var senderImageView: UIImageView!
    @IBOutlet private weak var likedPhotoImageView: UIImageView!
    
    // MARK: Public Methods
    
    func updateData(currentLikeComment: LikedComment) {
        
        commentTextLabel.attributedText = NSMutableAttributedString()
            .bold("\(currentLikeComment.userName) ")
            .normal("\(currentLikeComment.text) ")
            .grayColor("\(currentLikeComment.date).")
        senderImageView.image = UIImage(named: currentLikeComment.senderPhotoName)
        likedPhotoImageView.image = UIImage(named: currentLikeComment.likedPhotoName)
    }
}
