// 
//  HomeModuleBuilder.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import UIKit
import Foundation

final class HomeModuleBuilder {
    
    static func build() -> UIViewController {
        
        guard let view = R.storyboard.homeViewController.homeViewController() else {
            return ErrorViewController()
        }
        
        let router = HomeRouter()
        let interactor = HomeInteractor()
        let presenter = HomePresenter(view: view,
                                      interactor: interactor,
                                      router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
}
