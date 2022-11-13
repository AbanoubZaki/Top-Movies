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
}

protocol HomeInteractorToPresenterProtocol: AnyObject {
    var interactor: HomeInteractorProtocol! { get set }
}

protocol HomeViewProtocol: AnyObject {
    var presenter: HomeViewToPresenterProtocol! { get set }
}

protocol HomeViewToPresenterProtocol: AnyObject {
    var view: HomeViewProtocol? { get set }
}
