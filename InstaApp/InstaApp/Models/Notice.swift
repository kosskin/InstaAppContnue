//
//  Notice.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import Foundation

// Describe data in NoiceCell
struct Notice {
    private let text: String
    private let senderPhotoName: String
    private let likedPhotoName: String
    private let date: String
    private let userName: String
    
    init(text: String, senderPhotoName: String, likedPhotoName: String, date: String, name: String) {
        self.text = text
        self.senderPhotoName = senderPhotoName
        self.likedPhotoName = likedPhotoName
        self.date = date
        self.userName = name
    }
    
    func newNotice(_ notice: Notice) -> (String, String, String, String, String) {
        (notice.text, notice.senderPhotoName, notice.likedPhotoName, notice.date, notice.userName)
    }
}
