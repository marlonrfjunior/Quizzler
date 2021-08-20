//
//  ViewController.swift
//  Quizzler
//
//  Created by Marlon Junior🦈⚓️ on 13/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizzBrain = QuizzBrain()
    

    var progress:Float = 0.0
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        progressBar.progress = progress
    }
    
    
    @IBAction func anwserPressedButton(_ sender: UIButton) {
        
        quizzBrain.quetionNumber+=1
        
        if quizzBrain.chekAwnser(sender.currentTitle!) {
            sender.backgroundColor =   UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    

    @objc func updateQuestion() {
        questionLabel.text = quizzBrain.getTextQuestion()
        progressBar.progress = quizzBrain.getProgress()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
            if quetionNumber + 1 >= quiz.count {
                quetionNumber = 0
            }
    }
}

