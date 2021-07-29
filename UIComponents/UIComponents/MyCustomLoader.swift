//
//  MyCustomLoader.swift
//  UIComponents
//
//  Created by Mehmet Emin Deniz on 29.07.2021.
//

import UIKit
import NVActivityIndicatorView

public class MyCustomLoader: UIView{
   
    public override init(frame: CGRect) {
        super.init(frame: frame)
        addIndicator(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func addIndicator(frame: CGRect){
        let activityIndicator = NVActivityIndicatorView(frame: frame, type: .pacman ,color: .red)
        activityIndicator.startAnimating()
        addSubview(activityIndicator)
    }
}
