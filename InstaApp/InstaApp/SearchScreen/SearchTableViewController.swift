//
//  SearchTableViewController.swift
//  InstaApp
//
//  Created by Валентин Коскин on 22.10.2022.
//

import UIKit

/// Search screen
final class SearchTableViewController: UITableViewController {
    
    // MARK: Constants
    
    private enum Constants {
        static let headerCellIdentifier = "headerCell"
        static let informationCellIdentifier = "informationCell"
        static let actualCellIdentifier = "actualCell"
        static let photoCellIdentifier = "photoCell"
    }
    
    // MARK: IBOutlets
        
    @IBOutlet private var searchTableView: UITableView!
    
    // MARK: Visual Components
    
    private let refreshControll = UIRefreshControl()
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    // MARK: Private Properties
    
    private lazy var contents = createProfileContents()
    
    // MARK: Private Methods
    
    private func configUI() {
        setUpRefresher()
    }
    
    private func setUpRefresher() {
        refreshControll.addTarget(self, action: #selector(goRefreshAction), for: .valueChanged)
        searchTableView.addSubview(refreshControll)
    }
    
    private func createProfileContents() -> [ProfileItem] {
        var profileItems: [ProfileItem] = []
        profileItems.append(.header)
        profileItems.append(.information)
        profileItems.append(.actual)
        profileItems.append(.photo)
        return profileItems
    }
    
    @objc private func goRefreshAction() {
        refreshControll.endRefreshing()
    }

    // MARK: Table View Data Source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = contents[indexPath.row]
        switch item {
        case .header:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.headerCellIdentifier,
                                                           for: indexPath) as? HeaderCell
            else { return UITableViewCell() }
            return cell
            
        case .information:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.informationCellIdentifier,
                                                           for: indexPath) as? InformationCell
            else { return UITableViewCell() }
            return cell
            
        case .actual:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.actualCellIdentifier,
                                                           for: indexPath) as? ActualCell
            else { return UITableViewCell() }
            return cell
            
        case .photo:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.photoCellIdentifier,
                                                           for: indexPath) as? PhotoCell
            else { return UITableViewCell() }
            return cell
        }
    }
}
