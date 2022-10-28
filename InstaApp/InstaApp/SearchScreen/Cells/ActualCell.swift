//
//  ActualTableViewCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 23.10.2022.
//

import UIKit

/// describe Actual cell in SearchTableView
final class ActualCell: UITableViewCell {
    
    // MARK: Constants
    
    private enum Constants {
        static let euroturText = "eurotur"
        static let millersText = "millers"
        static let zombieText = "zombi"
        static let vpritikText = "vpritik"
        static let twentyOneText = "twentyOne"
        static let stiflerText = "stifler"
    }

    // MARK: IBOutlets
    
    @IBOutlet private weak var actualCollecionView: UICollectionView!
        
    // MARK: Private Properties
    
    private lazy var actualItems = generateItems()
    
    // MARK: Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }

    // MARK: Private Methods
    
    private func configUI() {
        actualCollecionView.dataSource = self
    }
    
    private func generateItems() -> [ActualItem] {
        var actualItems: [ActualItem] = []
        actualItems.append(ActualItem(text: Constants.euroturText, imageName: Constants.euroturText))
        actualItems.append(ActualItem(text: Constants.millersText, imageName: Constants.millersText))
        actualItems.append(ActualItem(text: Constants.twentyOneText, imageName: Constants.twentyOneText))
        actualItems.append(ActualItem(text: Constants.vpritikText, imageName: Constants.vpritikText))
        actualItems.append(ActualItem(text: Constants.zombieText, imageName: Constants.zombieText))
        actualItems.append(ActualItem(text: Constants.stiflerText, imageName: Constants.stiflerText))
        return actualItems
    }
}

// MARK: Collection View Data Source

extension ActualCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actualItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "actualCollectionViewCell",
                                                         for: indexPath) as? ActualCollectionViewCell {
            cell.actualItem = actualItems[indexPath.row]
            return cell
        }
        return UICollectionViewCell()
    }
}
