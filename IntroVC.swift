//
//  IntroVC.swift
//  Personality_Quiz
//
//  Created by Anu Gayam on 4/4/21.
//

import UIKit

class IntroVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func startQuizPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    
    @IBAction func unwindToIntroVC(segue: UIStoryboardSegue) {}
    
}
