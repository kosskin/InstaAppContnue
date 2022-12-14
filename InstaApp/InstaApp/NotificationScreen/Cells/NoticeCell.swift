//
//  NoticeCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// Describe Notice cell
final class NoticeCell: UITableViewCell {

    // MARK: OBOutlets
    
    @IBOutlet private weak var noticeTextLabel: UILabel!
    @IBOutlet private weak var senderImageView: UIImageView!
    @IBOutlet private weak var likedPhotoImageView: UIImageView!
    
    // MARK: Public Methods
    
    func updateData(currentNotice: Notice) {
        let (noticeText, senderImage, likedPhotoImage, date, userName) = currentNotice.newNotice(currentNotice)
        
        noticeTextLabel.attributedText = NSMutableAttributedString()
            .bold("\(userName) ")
            .normal("\(noticeText) ")
            .grayColor("\(date).")
        senderImageView.image = UIImage(named: senderImage)
        likedPhotoImageView.image = UIImage(named: likedPhotoImage)
    }
}
