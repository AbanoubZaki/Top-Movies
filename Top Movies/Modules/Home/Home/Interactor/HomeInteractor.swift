// 
//  HomeInteractor.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation

final class HomeInteractor {
    
    internal weak var presenter: HomeInteractorToPresenterProtocol?
}

// MARK: - Extension: HomeInteractorProtocol
extension HomeInteractor: HomeInteractorProtocol {}

