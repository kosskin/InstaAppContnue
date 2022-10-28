//
//  NSMutableAttributedString+Extension.swift
//  InstaApp
//
//  Created by Валентин Коскин on 21.10.2022.
//

import UIKit

/// extension for change font and color in string
extension NSMutableAttributedString {
    
    // MARK: Constants
    
    private enum Constants {
        static let helveticaBoldName = "Helvetica-Bold"
        static let helveticaName = "Helvetica"
        static let helveticaSemiboldName = "Helvetica-Black-SemiBold"
    }
    
    var smallFontSize: CGFloat { return 12 }
    var fontSize: CGFloat { return 14 }
    var bigFontSize: CGFloat { return 18 }
    
    var boldFont: UIFont { return UIFont(name: Constants.helveticaBoldName,
                                         size: fontSize) ?? UIFont.boldSystemFont(ofSize: fontSize) }
    var normalFont: UIFont { return UIFont(name: Constants.helveticaName,
                                           size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)}
    var smallFont: UIFont { return UIFont(name: Constants.helveticaName,
                                           size: smallFontSize) ?? UIFont.systemFont(ofSize: smallFontSize)}
    var bigFont: UIFont { return UIFont(name: Constants.helveticaSemiboldName,
                                           size: bigFontSize) ?? UIFont.systemFont(ofSize: bigFontSize)}
    
    func bold(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: boldFont
        ]
        
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
    
    func normal(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
        ]
        
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
    
    func small(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: smallFont,
        ]
        
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
    
    func big(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: bigFont,
        ]
        
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }

    func grayColor(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
            .foregroundColor: UIColor.lightGray,
        ]
        
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
}
