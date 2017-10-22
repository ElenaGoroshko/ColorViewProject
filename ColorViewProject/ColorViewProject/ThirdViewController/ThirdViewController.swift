//
//  ThirdViewController.swift
//  ColorViewProject
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var colorRed:CGFloat = 0.0
    var colorGreen:CGFloat = 0.0
    var colorBlue:CGFloat = 0.0

    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!

    @IBOutlet weak var hSliderRed: UISlider!
    @IBOutlet weak var hSliderGreen: UISlider!
    @IBOutlet weak var hSliderBlue: UISlider!

    @IBOutlet weak var viewColor: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonMedium(_ sender: Any) {
        self.hSliderRed.setValue(127, animated: true)
        self.hSliderGreen.setValue(127, animated: true)
        self.hSliderBlue.setValue(127, animated: true)
        self.labelRed.text = "127"
        self.labelGreen.text = "127"
        self.labelBlue.text = "127"
        colorRed = 127/255
        colorGreen = 127/255
        colorBlue = 127/255
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)
    }

    @IBAction func buttonMin(_ sender: Any) {
        self.hSliderRed.setValue(0, animated: true)
        self.hSliderGreen.setValue(0, animated: true)
        self.hSliderBlue.setValue(0, animated: true)
        self.labelRed.text = "0"
        self.labelGreen.text = "0"
        self.labelBlue.text = "0"
        colorRed = 0
        colorGreen = 0
        colorBlue = 0
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)
    }

    @IBAction func buttonMax(_ sender: Any) {
        self.hSliderRed.setValue(255, animated: true)
        self.hSliderGreen.setValue(255, animated: true)
        self.hSliderBlue.setValue(255, animated: true)
        self.labelRed.text = "255"
        self.labelGreen.text = "255"
        self.labelBlue.text = "255"
        colorRed = 1
        colorGreen = 1
        colorBlue = 1
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)
    }

    @IBAction func hSliderRed(_ sender: Any) {
        self.labelRed.text = String(Int(self.hSliderRed.value))
        colorRed = CGFloat(self.hSliderRed.value / 255)
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)

    }

    @IBAction func hSliderGreen(_ sender: Any) {
        self.labelGreen.text = String(Int(self.hSliderGreen.value))
        colorGreen = CGFloat(self.hSliderGreen.value / 255)
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)
    }

    @IBAction func hSliderBlue(_ sender: Any) {
        self.labelBlue.text = String(Int(self.hSliderBlue.value))
        colorBlue = CGFloat(self.hSliderBlue.value / 255)
        self.viewColor.backgroundColor = UIColor(red:colorRed, green:colorGreen, blue:colorBlue, alpha:1)
    }

}


