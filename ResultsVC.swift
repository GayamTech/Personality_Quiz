//
//  ResultsVC.swift
//  Personality_Quiz
//
//  Created by Anu Gayam on 4/4/21.
//

import UIKit

class ResultsVC: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefintion: UILabel!
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        
        
        
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        
        let responseType = responses.map { $0.type }
        
        
        
        for response in responseType {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted{ (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        }
        
        let mostCommonAnswer =  frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        
        resultDefintion.text = mostCommonAnswer.definition
    }
   

}
