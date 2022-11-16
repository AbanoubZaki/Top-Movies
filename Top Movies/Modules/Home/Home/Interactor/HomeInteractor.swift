// 
//  HomeInteractor.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

final class HomeInteractor {
    
    internal weak var presenter: HomeInteractorToPresenterProtocol?
    private let apiManager: ApiManager = ApiManager.shared
}

// MARK: - Extension: HomeInteractorProtocol
extension HomeInteractor: HomeInteractorProtocol {
    
    func getPopularMovies() {
        apiManager.getPopularMovies()
    }
}

