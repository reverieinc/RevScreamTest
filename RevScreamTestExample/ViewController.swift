//
//  ViewController.swift
//  RevScreamTestExample
//
//  Created by Chandan Bhagabati on 12/12/23.
//

import UIKit
import RevScreamTest

class ViewController: UIViewController {

    var revwss = RevWssMain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        revwss.TestResponse()
    }


}

