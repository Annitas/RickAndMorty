//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 20.11.2023.
//

import UIKit

class RMEpisodeDetailViewViewModel {
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl, let request = RMRequest(url: url) else {
            return
        }
        RMService.shared.execute(request, expecting: RMEpisode.self) { reuslt in
            switch reuslt {
            case .success(let success):
                print(String(describing: success))
            case .failure(let failure):
                break
            }
        }
    }
}
