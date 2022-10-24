//
//  PhotoCollectionViewCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 23.10.2022.
//

import UIKit

/// describe cell in Photo Collection View
final class PhotoCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var photoImageView: UIImageView!
    
    // MARK: Public Properties
    
    var photoItem: PhotoItem? {
        didSet {
            if let image = photoItem?.name {
                photoImageView.image = UIImage(named: image)
            }
        }
    }
}
