//
//  ViewController.swift
//  MovieApp
//
//  Created by Mehmet Emin Deniz on 6.04.2021.
//

import UIKit
import WebServiceLayer

class ViewController: UIViewController {

    @IBOutlet weak var bestMovieLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bestMovieLabel.text = MovieWebService().getBestMovieEver()

    }
}

