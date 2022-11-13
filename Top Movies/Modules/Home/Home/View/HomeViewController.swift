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

    @IBOutlet weak var searchBar: UISearchBar!
}

// MARK: - Extension: UISearchBarDelegate -
extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)  {
        print(searchText)
//        presenter.searchFor(searchText)
    }
}

// MARK: - Extension: HomeViewProtocol
extension HomeViewController: HomeViewProtocol {}
