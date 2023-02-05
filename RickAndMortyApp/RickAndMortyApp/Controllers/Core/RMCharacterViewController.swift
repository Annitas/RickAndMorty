//
//  RMCharacterViewController.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 28.01.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
//        make api request
        let request = RMRequest(endpoint: .character,
                                queryParameters: [
                                    URLQueryItem(name: "name", value: "rick"),
                                    URLQueryItem(name: "status", value: "alive")
                                ])
        print(request.url)
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self) { result in
//            switch result {
//            case .success(<#T##Success#>)
//            }
        }
    }
}
