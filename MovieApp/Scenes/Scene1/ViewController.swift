//
//  ViewController.swift
//  MovieApp
//
//  Created by Mehmet Emin Deniz on 6.04.2021.
//

import UIKit
import WebServiceLayer
import UIComponents

class ViewController: UIViewController {

    @IBOutlet weak var bestMovieLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bestMovieLabel.text = MovieWebService().getBestMovieEver()

        SampleRequest().getEmailFromDummyData(completion: { email in
            self.emailLabel.text = email
        })
        
        view.addSubview(MyCustomLoader(frame: CGRect(x: 100,
                                                          y: 300,
                                                          width: 100,
                                                          height: 100)))
    }
}

