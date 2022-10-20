//
//  NoticeCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// asd
class NoticeCell: UITableViewCell {

    // MARK: Visual Components
    
    @IBOutlet private weak var noticeTextLabel: UILabel!
    @IBOutlet private weak var senderImageView: UIImageView!
    @IBOutlet private weak var likedPhotoImageView: UIImageView!
    
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
