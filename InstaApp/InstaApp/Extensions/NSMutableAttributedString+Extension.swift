//
//  NSMutableAttributedString+Extension.swift
//  InstaApp
//
//  Created by Валентин Коскин on 21.10.2022.
//

import UIKit

/// extension for change font and color in string
extension NSMutableAttributedString {
    
    var fontSize: CGFloat { return 14 }
    var boldFont: UIFont { return UIFont(name: "Helvetica-Bold",
                                         size: fontSize) ?? UIFont.boldSystemFont(ofSize: fontSize) }
    var normalFont: UIFont { return UIFont(name: "Helvetica",
                                           size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)}
    
    func bold(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: boldFont
        ]
        
        self.append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
    
    func normal(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
        ]
        
        self.append(NSAttributedString(string: value, attributes: attributes))
        return self
    }

    func grayColor(_ value: String) -> NSMutableAttributedString {
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
            .foregroundColor: UIColor.lightGray,
        ]
        
        self.append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
    
}
