// 
//  HomePresenter.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

final class HomePresenter {
    
    internal weak var view: HomeViewProtocol?
    internal var interactor: HomeInteractorProtocol!
    private var router: HomeRouterProtocol!
    private var movies: [Movie] = []
    
    
    init(view: HomeViewProtocol,
         interactor: HomeInteractorProtocol,
         router: HomeRouterProtocol
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - Extension: HomeViewToPresenterProtocol
extension HomePresenter: HomeViewToPresenterProtocol {
    
    func initializeMovies() {
        movies = [
            Movie(id: "okay", original_title: "Iron Man 2", overview: "Okay okay okay Okay okay okay Okay okay okay Okay okay okay Okay okay okay"),
        ]
        interactor.getPopularMovies()
        view?.reloadData()
    }
    
    func getMoviesCount() -> Int {
        return movies.count
    }
    
    func getMovie(_ index: Int) -> Movie {
        return movies[index]
    }
    
    func isAddedToWatchList(_ index: Int) -> Bool {
        //TODO: check core data
        return false
    }
    
    func didSelectCountryAtRow(_ index: Int) {
        //TODO: handle on movie selected
    }
    
    func searchFor(_ searchText: String) {
        if searchText.isEmpty {
            initializeMovies()
        } else {
            //TODO: search for movies
            view?.reloadData()
        }
    }
    
}

// MARK: - Extension: HomeInteractorToPresenterProtocol
extension HomePresenter: HomeInteractorToPresenterProtocol {}
