//
//  InstaItems.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import Foundation

// Enum with comment styles
enum CommentItems {
    case requestSubscribe
    case notice(Notice)
    case likedComment(LikedComment)
    case subscribeOnYou(SubscribeOnYou)
}
