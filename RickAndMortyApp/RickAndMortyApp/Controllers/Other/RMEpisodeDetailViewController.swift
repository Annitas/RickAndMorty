//
//  RMEpisodeDetailViewController.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 20.11.2023.
//

import UIKit

final class RMEpisodeDetailViewController: UIViewController {
    private let url: URL?

    init(url: URL?) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Episode"
    }
}
