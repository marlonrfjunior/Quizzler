//
//  ViewController.swift
//  Quizzler
//
//  Created by Marlon Junior🦈⚓️ on 13/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var fristChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoice3Button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizzBrain = QuizzBrain()
    

    var progress:Float = 0.0
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        progressBar.progress = progress
    }
    
    
    @IBAction func anwserPressedButton(_ sender: UIButton) {
        
        if quizzBrain.chekAwnser(sender.currentTitle!) {
            sender.backgroundColor =   UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    

    @objc func updateQuestion() {
        questionLabel.text = quizzBrain.getTextQuestion()
        progressBar.progress = quizzBrain.getProgress()
        fristChoiceButton.backgroundColor = UIColor.clear
        secondChoiceButton.backgroundColor = UIColor.clear
        thirdChoice3Button.backgroundColor = UIColor.clear
        fristChoiceButton.setTitle(quizzBrain.getOption(), for: .normal)
        secondChoiceButton.setTitle(quizzBrain.getOption(), for: .normal)
        thirdChoice3Button.setTitle(quizzBrain.getOption(), for: .normal)
        scoreLabel.text = quizzBrain.getScore()
          
    }
}

