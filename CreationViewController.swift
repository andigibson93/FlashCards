//
//  CreationViewController.swift
//  FlashCards
//
//  Created by Andi Gibson on 3/6/20.
//  Copyright © 2020 Andi Gibson. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {

     var flashcardsController: ViewController!
   
    @IBOutlet weak var questionTextFeild: UITextField!
    @IBOutlet weak var answerTextFeild: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapOnCancel(_ sender: Any) {
    dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextFeild.text
        
        let answerText = answerTextFeild.text
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
