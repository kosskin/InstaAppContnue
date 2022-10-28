//
//  InformationCell.swift
//  InstaApp
//
//  Created by Валентин Коскин on 23.10.2022.
//

import UIKit

/// describe Header cell in SearchTableView
final class InformationCell: UITableViewCell {
    
    // MARK: Constants
    
    private enum Constants {
        static let profileFullName = "Стифлер в России"
        static let profession = "Вечный тусовщик"
        static let achives = "Не люблю Зяблика и всё что с ним связано"
        static let subscribeText = "Подписаны: "
        static let generalSubscribers = "mama_Stiflera"
        static let lineBreak = "\n"
    }

    // MARK: IBOutlets
    
    @IBOutlet private weak var informationLabel: UILabel!
    
    // MARK: Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configUI()
    }
    
    // MARK: Private Methods
    
    private func configUI() {
        informationLabel.attributedText = NSMutableAttributedString()
            .bold("\(Constants.profileFullName)")
            .normal(Constants.lineBreak)
            .grayColor("\(Constants.profession)")
            .normal(Constants.lineBreak)
            .normal("\(Constants.achives)")
            .normal(Constants.lineBreak)
            .normal(Constants.subscribeText)
            .bold(Constants.generalSubscribers)
    }
}
