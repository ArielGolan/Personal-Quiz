//
//  ResultViewController.swift
//  Personal Quiz
//
//  Created by Ariel Golan on 12.08.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var animalTypeLable: UILabel!
    @IBOutlet var descriptionLable: UILabel!
    
    
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}


// MARK: - Private Methods
extension ResultViewController {
    private func updateResult() {
        var frequencyOfAnimals: [Animal : Int] = [:]
        let animals = answers.map { $0.animal }
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        
        let sortedFrequencyAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostfrequensyAnimals = sortedFrequencyAnimals.first?.key else { return }
        
        updateUI(with: mostfrequensyAnimals)
    }
    
    private func updateUI(with animal: Animal?) {
        animalTypeLable.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        descriptionLable.text = animal?.definition ?? ""
    }
}





