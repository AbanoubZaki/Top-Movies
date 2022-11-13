//
//  ErrorViewController.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import UIKit

class ErrorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addErrorLabel()
    }
    
    private func addErrorLabel() {
        self.view.backgroundColor = .white
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        label.center = self.view.center
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = R.string.localizable.error_view_controller_message()
        self.view.addSubview(label)
    }
}
