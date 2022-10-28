//
//  PhotoCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 23.10.2022.
//

import UIKit

/// describe Header cell in SearchTableView
final class PhotoCell: UITableViewCell {
    
    // MARK: Constants
    
    private enum Constants {
        static let euroturImageName = "eurotur"
        static let millersImageName = "millers"
        static let zombieImageName = "zombi"
        static let vpritikImageName = "vpritik"
        static let twentyOneImageName = "twentyOne"
        static let stiflerImageName = "stifler"
    }
    
    // MARK: IBOutlets

    @IBOutlet weak var photoCollectionView: UICollectionView!
        
    // MARK: Private Properties
    
    private lazy var photoItems = generateItems()
    
    // MARK: Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }
    
    // MARK: Private Methods
    
    private func configUI() {
        photoCollectionView.dataSource = self
    }
    
    private func generateItems() -> [PhotoItem] {
        var photoItems: [PhotoItem] = []
        photoItems.append(PhotoItem(name: Constants.stiflerImageName))
        photoItems.append(PhotoItem(name: Constants.euroturImageName))
        photoItems.append(PhotoItem(name: Constants.millersImageName))
        photoItems.append(PhotoItem(name: Constants.twentyOneImageName))
        photoItems.append(PhotoItem(name: Constants.vpritikImageName))
        photoItems.append(PhotoItem(name: Constants.zombieImageName))
        photoItems.append(PhotoItem(name: Constants.stiflerImageName))
        photoItems.append(PhotoItem(name: Constants.euroturImageName))
        photoItems.append(PhotoItem(name: Constants.millersImageName))
        photoItems.append(PhotoItem(name: Constants.twentyOneImageName))
        photoItems.append(PhotoItem(name: Constants.vpritikImageName))
        photoItems.append(PhotoItem(name: Constants.zombieImageName))
        photoItems.append(PhotoItem(name: Constants.stiflerImageName))
        photoItems.append(PhotoItem(name: Constants.euroturImageName))
        photoItems.append(PhotoItem(name: Constants.millersImageName))
        photoItems.append(PhotoItem(name: Constants.twentyOneImageName))
        photoItems.append(PhotoItem(name: Constants.vpritikImageName))
        photoItems.append(PhotoItem(name: Constants.zombieImageName))
        photoItems.append(PhotoItem(name: Constants.stiflerImageName))
        photoItems.append(PhotoItem(name: Constants.euroturImageName))
        photoItems.append(PhotoItem(name: Constants.millersImageName))
        photoItems.append(PhotoItem(name: Constants.twentyOneImageName))
        photoItems.append(PhotoItem(name: Constants.vpritikImageName))
        photoItems.append(PhotoItem(name: Constants.zombieImageName))
        return photoItems
    }
    
}

// MARK: Collection View Data Source

extension PhotoCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCollectionViewCell",
                                                         for: indexPath) as? PhotoCollectionViewCell {
            cell.photoItem = photoItems[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
}
