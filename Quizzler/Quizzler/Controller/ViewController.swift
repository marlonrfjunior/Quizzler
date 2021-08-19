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
        quetionNumber+=1
        print(sender.currentTitle!)
        print("\(quiz[quetionNumber].question)")
        if sender.currentTitle! == quiz[quetionNumber].anwser {
            sender.backgroundColor =   UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    

    @objc func updateQuestion() {
        questionLabel.text = quiz[quetionNumber].question
        progressBar.progress = Float(quetionNumber) / Float(quiz.count - 1)
        print(Float(quetionNumber) / Float(quiz.count))
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
            if quetionNumber + 1 >= quiz.count {
                quetionNumber = 0
            }
    }
}

