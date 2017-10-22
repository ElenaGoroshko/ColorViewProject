//
//  ThirdViewController.swift
//  ColorViewProject
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    let minColorValue:Float = 0
    let maxColorValue:Float = 255
    var mediumColorValue:Float  { get {return (minColorValue+(maxColorValue - minColorValue)/2)} }

    var colorValueRed:CGFloat = 0.0
    var colorValueGreen:CGFloat = 0.0
    var colorValueBlue:CGFloat = 0.0

    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!

    @IBOutlet weak var hSliderRed: UISlider!
    @IBOutlet weak var hSliderGreen: UISlider!
    @IBOutlet weak var hSliderBlue: UISlider!

    @IBOutlet weak var viewColor: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.hSliderRed.minimumValue = minColorValue
        self.hSliderGreen.minimumValue = minColorValue
        self.hSliderBlue.minimumValue = minColorValue

        self.hSliderRed.maximumValue = maxColorValue
        self.hSliderGreen.maximumValue = maxColorValue
        self.hSliderBlue.maximumValue = maxColorValue

        self.labelRed.text = String(Int(minColorValue))
        self.labelGreen.text = String(Int(minColorValue))
        self.labelBlue.text = String(Int(minColorValue))

        colorValueRed = CGFloat((minColorValue+minColorValue)/maxColorValue)
        colorValueGreen = CGFloat((minColorValue+minColorValue)/maxColorValue)
        colorValueBlue = CGFloat((minColorValue+minColorValue)/maxColorValue)

        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

    @IBAction func buttonMedium(_ sender: Any) {
        self.hSliderRed.setValue(Float(mediumColorValue), animated: true)
        self.hSliderGreen.setValue(Float(mediumColorValue), animated: true)
        self.hSliderBlue.setValue(Float(mediumColorValue), animated: true)

        self.labelRed.text = String(Int(mediumColorValue))
        self.labelGreen.text = String(Int(mediumColorValue))
        self.labelBlue.text = String(Int(mediumColorValue))

        colorValueRed = CGFloat((minColorValue+mediumColorValue)/maxColorValue)
        colorValueGreen = CGFloat((minColorValue+mediumColorValue)/maxColorValue)
        colorValueBlue = CGFloat((minColorValue+mediumColorValue)/maxColorValue)

        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

    @IBAction func buttonMin(_ sender: Any) {
        self.hSliderRed.setValue(Float(minColorValue), animated: true)
        self.hSliderGreen.setValue(Float(minColorValue), animated: true)
        self.hSliderBlue.setValue(Float(minColorValue), animated: true)
        self.labelRed.text = String(Int(minColorValue))
        self.labelGreen.text = String(Int(minColorValue))
        self.labelBlue.text = String(Int(minColorValue))

        colorValueRed = CGFloat((minColorValue+minColorValue)/maxColorValue)
        colorValueGreen = CGFloat((minColorValue+minColorValue)/maxColorValue)
        colorValueBlue = CGFloat((minColorValue+minColorValue)/maxColorValue)


        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

    @IBAction func buttonMax(_ sender: Any) {
        self.hSliderRed.setValue(Float(maxColorValue), animated: true)
        self.hSliderGreen.setValue(Float(maxColorValue), animated: true)
        self.hSliderBlue.setValue(Float(maxColorValue), animated: true)
        self.labelRed.text = String(Int(maxColorValue))
        self.labelGreen.text = String(Int(maxColorValue))
        self.labelBlue.text = String(Int(maxColorValue))
        colorValueRed = CGFloat((minColorValue+maxColorValue)/maxColorValue)
        colorValueGreen = CGFloat((minColorValue+maxColorValue)/maxColorValue)
        colorValueBlue = CGFloat((minColorValue+maxColorValue)/maxColorValue)

        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

    @IBAction func hSliderRed(_ sender: Any) {
        self.labelRed.text = String(Int(self.hSliderRed.value))
        colorValueRed = CGFloat((self.hSliderRed.value + minColorValue) / maxColorValue)
        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)

    }

    @IBAction func hSliderGreen(_ sender: Any) {
        self.labelGreen.text = String(Int(self.hSliderGreen.value))
        colorValueGreen = CGFloat((self.hSliderGreen.value + minColorValue) / maxColorValue)
        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

    @IBAction func hSliderBlue(_ sender: Any) {
        self.labelBlue.text = String(Int(self.hSliderBlue.value))
        colorValueBlue = CGFloat((self.hSliderBlue.value + minColorValue) / maxColorValue)
        self.viewColor.backgroundColor = UIColor(red:colorValueRed, green:colorValueGreen, blue:colorValueBlue, alpha:1)
    }

}


