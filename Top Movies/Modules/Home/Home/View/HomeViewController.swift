// 
//  HomeViewController.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import UIKit
import Foundation

final class HomeViewController: UIViewController {
    
    internal var presenter: HomeViewToPresenterProtocol!

    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var moviesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.keyboardDismissMode = .onDrag
        print(presenter == nil)
        presenter.initializeMovies()
    }
}

// MARK: - Extension: UISearchBarDelegate -
extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)  {
        print(searchText)
        presenter.searchFor(searchText)
    }
}

// MARK: - Extension: UITableViewDelegate, UITableViewDataSource -
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.getMoviesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.movieTableViewCell, for: indexPath) else {
            return UITableViewCell()
        }
        cell.bind(movie: presenter.getMovie(indexPath.row), isAddedToWatchList: presenter.isAddedToWatchList(indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        presenter.didSelectMovieAtRow(indexPath.row)
    }
}

// MARK: - Extension: HomeViewProtocol
extension HomeViewController: HomeViewProtocol {
    func reloadData() {
        moviesTableView.reloadData()
    }
}
