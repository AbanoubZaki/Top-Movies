// 
//  HomeModuleProtocols.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

protocol HomeRouterProtocol: AnyObject {
    func navigate(to destination: HomeRouterDestination, from source: HomeViewProtocol?)
}

protocol HomeInteractorProtocol: AnyObject {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
    func getPopularMovies()
}

protocol HomeInteractorToPresenterProtocol: AnyObject {
    var interactor: HomeInteractorProtocol! { get set }
}

protocol HomeViewProtocol: AnyObject {
    var presenter: HomeViewToPresenterProtocol! { get set }
    func reloadData()
}

protocol HomeViewToPresenterProtocol: AnyObject {
    var view: HomeViewProtocol? { get set }
    func initializeMovies()
    func getMoviesCount() -> Int
    func getMovie(_ index: Int) -> Movie
    func isAddedToWatchList(_ index: Int) -> Bool
    func didSelectCountryAtRow(_ index: Int)
    func searchFor(_ searchText: String)
}
