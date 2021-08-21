//
//  QuizzBrain.swift
//  Quizzler
//
//  Created by Marlon Junior🦈⚓️ on 18/08/21.
//

import Foundation

struct QuizzBrain {
    
    var quetionNumber: Int = 0
    var score: Int = 0
    var answerNumber: [Int] = [1,2,3]
    
    let quiz = [
        question(question: "Quantas horas de conteúdo são enviadas ao site de vídeos Youtube a cada minuto?", correctAnswer: "72 horas", secondAnswer: "52 horas", thirdAnswer: "32 horas"),
        question(question: "O Monte Everest cesce?", correctAnswer: "4 milímetros por ano", secondAnswer: "Não ta louco", thirdAnswer: "4 metros por ano"),
        question(question: "Qual o maior tempo em que uma lâmpada ficou ligada?", correctAnswer: "113 anos", secondAnswer: "143 anos", thirdAnswer: "13 anos"),
        question(question: "Quando o cachorro quente foi inventado?", correctAnswer: "século XV", secondAnswer: "século XXI", thirdAnswer: "século XVIII"),
        question(question: "Quantos degraus uma vaca consegue subir?", correctAnswer: "Nenhum", secondAnswer: "20", thirdAnswer: "10"),
        question(question: "Quantos % da população do mundo é canhota?", correctAnswer: "4 %", secondAnswer: "16 %", thirdAnswer: "24 %"),
        question(question: "Brasil significa", correctAnswer: "Vermelho como brasa",secondAnswer: "Um por todos e todos por um", thirdAnswer: "Rico em Natureza e Amor"),
        question(question: "Na Holanda o numéro de bicicleta é ", correctAnswer: "3x maior que carros", secondAnswer: "0", thirdAnswer: "igual"),
        question(question: " A avenida mais larga do mundo fica na", correctAnswer: "Argentina", secondAnswer: "Alemanha", thirdAnswer: "Bolivia"),
        
        question(question: "A parte mais profundo do oceano tem", correctAnswer: "11 mil metros", secondAnswer: "110 mil metros", thirdAnswer: "200 mil metros"),
        
    ]
    
    func getTextQuestion() -> String {
        return quiz[quetionNumber].question
    }
    
    func getProgress() -> Float {
        return  Float(quetionNumber) / Float(quiz.count - 1)
    }
    
    func getScore() -> String{
        return "Score: \(score)/\(quiz.count)"
    }
    mutating func getOption() -> String{
        var choice: String = ""
        
        
        if answerNumber.count == 0 {
            answerNumber = [1,2,3]
            answerNumber = answerNumber.shuffled()
        }
        
        switch answerNumber[0] {
        case 2:
            choice = quiz[quetionNumber].secondAnswer
        case 3:
            choice = quiz[quetionNumber].thirdAnswer
        default:
            choice = quiz[quetionNumber].correctAnswer
        }
        
        answerNumber.remove(at: 0)
        answerNumber = answerNumber.shuffled()
        return choice
        
    }
    
    mutating func nextQuestion() {
        if quetionNumber == quiz.count - 1 {
            quetionNumber = 0
            score = 0
        }
        else {
            quetionNumber+=1
        }
    }
    mutating func chekAwnser(_ userAnswer: String ) ->  Bool {
        
        if userAnswer == quiz[quetionNumber].correctAnswer {
            score += 1
            nextQuestion()
            return true
        }
        else {
            nextQuestion()
            return false
        }
    }
    
    
    
}


