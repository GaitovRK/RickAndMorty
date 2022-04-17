//
//  CharacterDetailsViewController.swift
//  RickAndMortyApp
//
//  Created by Nihat on 30.03.2022.
//

import UIKit
import Kingfisher

class CharacterDetailsViewController: UIViewController {
    
    var chosenCharacter : Results!

    @IBOutlet weak var characterGenderLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterRaceLabel: UILabel!
    @IBOutlet weak var characterStatusLabel: UILabel!
    @IBOutlet weak var characterLocationLabel: UILabel!
    @IBOutlet weak var characterEpisodesLabel: UILabel!

    @IBOutlet weak var characterDetailsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = chosenCharacter.name ?? "Character Details"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.characterDetailsImageView.layer.cornerRadius = 25
        
        if let url = URL(string: chosenCharacter.image!){
            characterDetailsImageView.kf.setImage(with: url)
        }
        characterNameLabel.text = chosenCharacter.name
        characterGenderLabel.text = chosenCharacter.gender
        characterRaceLabel.text = chosenCharacter.species
        characterStatusLabel.text = chosenCharacter.status
        characterLocationLabel.text = "Last location: \(chosenCharacter.location.name!)"
        characterEpisodesLabel.text  = "Number of episodes: \(chosenCharacter.episode.count)"
    }
}
