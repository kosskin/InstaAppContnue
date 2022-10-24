//
//  ActualCollectionViewCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 23.10.2022.
//

import UIKit

/// describe cell in Actual Collection View
final class ActualCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet private weak var acualImageView: UIImageView!
    @IBOutlet private weak var actualLabel: UILabel!
    
    // MARK: Public Properties
    
    var actualItem: ActualItem? {
        didSet {
            actualLabel.text = actualItem?.text
            if let image = actualItem?.imageName {
                acualImageView.image = UIImage(named: image)
            }
        }
    }
}
