//
//  Extensions.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 06.02.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
