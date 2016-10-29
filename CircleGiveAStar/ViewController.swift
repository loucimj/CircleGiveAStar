//
//  ViewController.swift
//  CircleGiveAStar
//
//  Created by Javier Loucim on 10/28/16.
//  Copyright © 2016 Javier Loucim. All rights reserved.
//

import UIKit
import CircleMenu

class ViewController: UIViewController {

    
    @IBOutlet weak var circleMenu: CircleMenu!
    @IBOutlet weak var profilePicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: CircleMenuDelegate {
    func circleMenu(_ circleMenu: CircleMenu, willDisplay button: UIButton, atIndex: Int) {
        
        button.setBackgroundImage(UIImage(named: "icon_\(atIndex)"), for: .normal)
    }
}

