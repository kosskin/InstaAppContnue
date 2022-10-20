//
//  SubscribeOnYou.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import Foundation

// describe data in SubscribeCell
struct SubscribeOnYou {
    private let text: String
    private let senderPhotoName: String
    private let date: String
    private let userName: String
    
    init(text: String, senderPhotoName: String, date: String, name: String) {
        self.text = text
        self.senderPhotoName = senderPhotoName
        self.date = date
        self.userName = name
    }
    
    func newSubscribeOnYou(_ subscribeOnYou: SubscribeOnYou) -> (String, String, String, String) {
        (subscribeOnYou.text, subscribeOnYou.senderPhotoName, subscribeOnYou.date, subscribeOnYou.userName)
    }
}
