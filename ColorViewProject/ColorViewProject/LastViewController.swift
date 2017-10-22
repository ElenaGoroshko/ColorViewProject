//
//  LastViewController.swift
//  ColorViewProject
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonMenu(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }

    
}
