//
//  LikedCommentCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit
///as
final class LikedCommentCell: UITableViewCell {
    
    @IBOutlet weak var commentTextLabel: UILabel!
    @IBOutlet weak var senderImageView: UIImageView!
    @IBOutlet weak var likedPhotoImageView: UIImageView!
    
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
