//
//  MovieTableViewCell.swift
//  Top Movies
//
//  Created by Abanoub Zaki on 13/11/2022.
//

import Foundation
import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieOverView: UILabel!
    @IBOutlet weak var addedToWatchListLabel: UILabel!
    
    func bind(movie: Movie, isAddedToWatchList: Bool) {
        // TODO: set image
        movieTitle.text = movie.title
        movieOverView.text = movie.overview
        addedToWatchListLabel.text = R.string.localizable.added_to_watchlist()
        addedToWatchListLabel.isHidden = !isAddedToWatchList
        
    }
}
