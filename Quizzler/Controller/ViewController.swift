//
//  ViewController.swift
//  Quizzler
//
//  Created by Aleksandra Asichka on 2023-01-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirdAnswer: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz = BrainQuizz()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else {
            return
        }
        let solution = quiz.checkAnswer(userAnswer)
        sender.backgroundColor = solution ? .green : .red
        quiz.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc private func updateUI() {
        self.firstAnswer.backgroundColor = .clear
        self.secondAnswer.backgroundColor = .clear
        self.thirdAnswer.backgroundColor = .clear
        questionLabel.text = quiz.getQuestionText()
        firstAnswer.setTitle(quiz.getAnswers()[0], for: .normal)
        secondAnswer.setTitle(quiz.getAnswers()[1], for: .normal)
        thirdAnswer.setTitle(quiz.getAnswers()[2], for: .normal)
        progressBar.progress = quiz.getProgress()
        scoreLabel.text = "Score: \(quiz.getScore())"
    }
}
