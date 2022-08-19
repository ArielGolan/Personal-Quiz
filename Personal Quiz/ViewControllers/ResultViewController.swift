//
//  ResultViewController.swift
//  Personal Quiz
//
//  Created by Ariel Golan on 12.08.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var animalTypeLable: UILabel!
    @IBOutlet var descriptionLable: UIView!
    
    var answers: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    

}
