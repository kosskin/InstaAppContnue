//
//  CommentsTableViewController.swift
//  InstaApp
//
//  Created by Валентин Коскин on 20.10.2022.
//

import UIKit

/// Comments screen
final class CommentsTableViewController: UITableViewController {
    
    // MARK: Constants
    
    private enum Constants {
        static let requestSubscribeIdentifier = "RequestSubscribe"
        static let noticeIdentifier = "Notice"
        static let likedCommentIdentifier = "LikedComment"
        static let subscribeOnYouIdentifier = "SubscribeOnYou"
        static let twentyOneName = "twentyOne"
        static let stiflerName = "stifler"
        static let millersName = "millers"
        static let euroturName = "eurotur"
        static let zombiName = "zombi"
        static let vpritikName = "vpritik"
        static let nameOne = "Jenya"
        static let nameTwo = "Sasha"
        static let nameThree = "Putin"
        static let dateToday = "3ч"
        static let dateWeek = "5д"
        static let noticeText = "упомянул(-а) вас в комментарии: @AnnaS спасибо"
        static let likedCommentText = "понравился ваш комментарий: \"Ух ты какая рядом страна\""
        static let subscribeOnYouText = "подпислся(-ась) на ваши обновления."
        static let textColor = "textColor"
        static let backgroundColor = "backgroundColor"
        static let todayText = "Сегодня"
        static let weekText = "На этой неделе"
        
        enum Sections {
            case today
            case week
        }
    }
    
    // MARK: IBOutlet
    
    @IBOutlet private var commentsTableView: UITableView!
    
    // MARK: UI Elements
    
    private var refresher = UIRefreshControl()
    
    // MARK: Private Properties
    
    private let numberOfSections: [Constants.Sections] = [.today, .week]
    private lazy var contents = createContents()

    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createContents()
        setUpRefresher()
    }
    
    // MARK: Private Properties
    
    
    @objc private func goRefresh() {
            refresher.endRefreshing()
        }
    
    private func setUpRefresher() {
        refresher.addTarget(self, action: #selector(goRefresh), for: .valueChanged)
        commentsTableView.addSubview(refresher)
    }
    
    private func createContents() -> [CommentItems] {
        var instaItems: [CommentItems] = []
        instaItems.append(CommentItems.requestSubscribe)
        instaItems.append(CommentItems.notice(Notice(text: Constants.noticeText,
                                                     senderPhotoName: Constants.twentyOneName,
                                                     likedPhotoName: Constants.stiflerName,
                                                     date: Constants.dateToday,
                                                     name: Constants.nameOne)))
        instaItems.append(CommentItems.likedComment(LikedComment(text: Constants.likedCommentText,
                                                                 senderPhotoName: Constants.euroturName,
                                                                 likedPhotoName: Constants.millersName,
                                                                 date: Constants.dateWeek,
                                                                 name: Constants.nameThree)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateToday,
                                                                     name: Constants.nameThree)))
        instaItems.append(CommentItems.likedComment(LikedComment(text: Constants.likedCommentText,
                                                                 senderPhotoName: Constants.twentyOneName,
                                                                 likedPhotoName: Constants.vpritikName,
                                                                 date: Constants.dateWeek,
                                                                 name: Constants.nameOne)))
        instaItems.append(CommentItems.likedComment(LikedComment(text: Constants.likedCommentText,
                                                                 senderPhotoName: Constants.vpritikName,
                                                                 likedPhotoName: Constants.millersName,
                                                                 date: Constants.dateWeek,
                                                                 name: Constants.nameTwo)))
        instaItems.append(CommentItems.notice(Notice(text: Constants.noticeText,
                                                     senderPhotoName: Constants.zombiName,
                                                     likedPhotoName: Constants.stiflerName,
                                                     date: Constants.dateWeek,
                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.notice(Notice(text: Constants.noticeText,
                                                     senderPhotoName: Constants.twentyOneName,
                                                     likedPhotoName: Constants.vpritikName,
                                                     date: Constants.dateWeek,
                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.millersName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.notice(Notice(text: Constants.noticeText,
                                                     senderPhotoName: Constants.twentyOneName,
                                                     likedPhotoName: Constants.vpritikName,
                                                     date: Constants.dateWeek,
                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.likedComment(LikedComment(text: Constants.likedCommentText,
                                                                 senderPhotoName: Constants.euroturName,
                                                                 likedPhotoName: Constants.millersName,
                                                                 date: Constants.dateWeek,
                                                                 name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.notice(Notice(text: Constants.noticeText,
                                                     senderPhotoName: Constants.twentyOneName,
                                                     likedPhotoName: Constants.vpritikName,
                                                     date: Constants.dateWeek,
                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        instaItems.append(CommentItems.likedComment(LikedComment(text: Constants.likedCommentText,
                                                                 senderPhotoName: Constants.euroturName,
                                                                 likedPhotoName: Constants.millersName,
                                                                 date: Constants.dateWeek,
                                                                 name: Constants.nameTwo)))
        instaItems.append(CommentItems.subscribeOnYou(SubscribeOnYou(text: Constants.subscribeOnYouText,
                                                                     senderPhotoName: Constants.zombiName,
                                                                     date: Constants.dateWeek,
                                                                     name: Constants.nameTwo)))
        return instaItems
    }
}

// MARK: Table view data source

extension CommentsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return numberOfSections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch numberOfSections[section] {
        case .today:
            return 3
        case .week:
            return 9
        }
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.text = header.textLabel?.text?.localizedCapitalized
        header.textLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        header.textLabel?.textColor = UIColor(named: Constants.textColor)
        header.tintColor = UIColor(named: Constants.backgroundColor)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return Constants.todayText
        default:
            return Constants.weekText
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = createContents()[indexPath.row]
        switch item {
        case .requestSubscribe where indexPath.section == 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.requestSubscribeIdentifier,
                                                     for: indexPath)
            
            return cell
            
        case let .notice(noticeItem):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.noticeIdentifier,
                                                     for: indexPath) as? NoticeCell
            else { return UITableViewCell() }
            cell.updateData(currentNotice: noticeItem)
            return cell
            
        case let .likedComment(likedItem):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.likedCommentIdentifier,
                                                     for: indexPath) as? LikedCommentCell
            else { return UITableViewCell() }
            cell.updateData(currentLikeComment: likedItem)
            return cell
            
        case let .subscribeOnYou(subscribeItem):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.subscribeOnYouIdentifier,
                                                     for: indexPath) as? SubscribeOnYouCell
            else { return UITableViewCell() }
            cell.updateData(currentSubscribe: subscribeItem)
            return cell
        default:
            return UITableViewCell()
        }
    }
}
