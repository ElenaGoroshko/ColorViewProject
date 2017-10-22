//
//  SecondViewController.swift
//  ColorViewProject
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!

    @IBOutlet weak var buttonHide: UIButton!
    @IBOutlet weak var buttonHide1: UIButton!
    @IBOutlet weak var buttonHide2: UIButton!

    var boolButtonHideDown = false
    var boolButtonHide1Down = false
    var boolButtonHide2Down = false



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonShowAll(_ sender: UIButton) {
        self.imageView.isHidden = false
        self.imageView1.isHidden = false
        self.imageView2.isHidden = false
    }

    @IBAction func buttonHide(_ sender: UIButton) {
        /* Максим, подскажите что я делаю неправильно. Почему текст кнопки мненяется на мгновение и возвращается в начальное состояние?
         */
        if boolButtonHideDown {
            self.imageView.isHidden = false
            // self.buttonHide.titleLabel?.text = "Hide"
            self.buttonHide.setTitle("Hide", for: .normal)
            boolButtonHideDown = false
        }else{
            self.imageView.isHidden = true
            //self.buttonHide.titleLabel?.text = "Show"
            self.buttonHide.setTitle("Show", for: .normal)
            boolButtonHideDown = true
        }
    }
    @IBAction func buttonHide1(_ sender: UIButton) {
        if boolButtonHide1Down {
            self.imageView1.isHidden = false
            self.buttonHide1.setTitle("Hide", for: .normal)
            boolButtonHide1Down = false
        }else{
            self.imageView1.isHidden = true
            self.buttonHide1.setTitle("Show", for: .normal)
            boolButtonHide1Down = true
        }
    }
    @IBAction func buttonHide2(_ sender: UIButton) {
        if boolButtonHide2Down {
            self.imageView2.isHidden = false
            // self.buttonHide2.titleLabel?.text = "Hide"
            self.buttonHide2.setTitle("Hide", for: .normal)
            boolButtonHide2Down = false
        }else{
            self.imageView2.isHidden = true
            // self.buttonHide2.titleLabel?.text = "Show"
            self.buttonHide2.setTitle("Show", for: .normal)
            boolButtonHide2Down = true
        }
    }

}


