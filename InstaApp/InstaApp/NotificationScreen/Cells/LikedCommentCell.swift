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
        let (commentText, senderImage, photoImage, date, userName) =
            currentLikeComment.newLikedComment(currentLikeComment)
        
        commentTextLabel.attributedText = NSMutableAttributedString()
            .bold("\(userName) ")
            .normal("\(commentText) ")
            .grayColor("\(date).")
        senderImageView.image = UIImage(named: senderImage)
        likedPhotoImageView.image = UIImage(named: photoImage)
    }
}
