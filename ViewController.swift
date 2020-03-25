//
//  ViewController.swift
//  FlashCards
//
//  Created by Andi Gibson on 2/15/20.
//  Copyright © 2020 Andi Gibson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.5
        // Do any additional setup after loading the view.
        
        backLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 20.0
        
        frontLabel.clipsToBounds = true
        frontLabel.layer.cornerRadius = 20.0
        
        btnOptionOne.clipsToBounds = true
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionOne.layer.shadowRadius = 5.0
        btnOptionOne.layer.shadowOpacity = 0.5
        
        btnOptionTwo.clipsToBounds = true
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionTwo.layer.shadowRadius = 5.0
        btnOptionTwo.layer.shadowOpacity = 0.5
        
        btnOptionThree.clipsToBounds = true
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        btnOptionThree.layer.cornerRadius = 20.0
        btnOptionThree.layer.shadowRadius = 5.0
        btnOptionThree.layer.shadowOpacity = 0.5
    }
    
        
    
    @IBAction func didTapOptionOne(_ sender: Any) {
    btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = !frontLabel.isHidden
    }
    
    func updateFlashcard(question: String, answer: String) {
        dismiss(animated: true)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
               
        let navigationController = segue.destination as! UINavigationController
               
        let creationController = navigationController.topViewController as! CreationViewController
               
        creationController.flashcardsController = self
          
    }
}

