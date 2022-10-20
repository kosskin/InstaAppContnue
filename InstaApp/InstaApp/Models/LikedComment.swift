//
//  LikedComment.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import Foundation

// describe data in NoiceCell
struct LikedComment {
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
    
    func newLikedComment(_ likedComment: LikedComment) -> (String, String, String, String, String) {
        (likedComment.text, likedComment.senderPhotoName, likedComment.likedPhotoName,
         likedComment.date, likedComment.userName)
    }
}
