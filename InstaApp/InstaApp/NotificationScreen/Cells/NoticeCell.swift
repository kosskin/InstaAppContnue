//
//  NoticeCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// Describe Notice cell
final class NoticeCell: UITableViewCell {

    // MARK: IBOutlets
    
    @IBOutlet private weak var noticeTextLabel: UILabel!
    @IBOutlet private weak var senderImageView: UIImageView!
    @IBOutlet private weak var likedPhotoImageView: UIImageView!
    
    // MARK: Public Methods
    
    func updateData(currentNotice: Notice) {
        noticeTextLabel.attributedText = NSMutableAttributedString()
            .bold("\(currentNotice.userName) ")
            .normal("\(currentNotice.text) ")
            .grayColor("\(currentNotice.date).")
        senderImageView.image = UIImage(named: currentNotice.senderPhotoName)
        likedPhotoImageView.image = UIImage(named: currentNotice.likedPhotoName)
    }
}
