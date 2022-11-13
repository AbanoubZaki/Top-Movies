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
extension HomePresenter: HomeViewToPresenterProtocol {}

// MARK: - Extension: HomeInteractorToPresenterProtocol
extension HomePresenter: HomeInteractorToPresenterProtocol {}
