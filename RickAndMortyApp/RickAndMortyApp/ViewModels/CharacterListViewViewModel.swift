//
//  CharacterListViewViewModel.swift
//  RickAndMortyApp
//
//  Created by Anita Stashevskaya on 05.02.2023.
//

import Foundation

struct CharacterListViewViewModel {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: \(model.info.count)")
                print("Page results total: \(model.results.count)")
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
