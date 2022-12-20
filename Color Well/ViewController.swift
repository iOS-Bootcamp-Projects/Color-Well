//
//  ViewController.swift
//  Color Well
//
//  Created by Aamer Essa on 19/12/2022.
//

import Cocoa

class ViewController: NSViewController {


    @IBOutlet weak var greenValue: NSSlider!
    @IBOutlet weak var blueBox: NSBox!
    @IBOutlet weak var redValue: NSSlider!
    @IBOutlet weak var greenBox: NSBox!
    @IBOutlet weak var blueValue: NSSlider!
    @IBOutlet weak var redBox: NSBox!
    @IBOutlet weak var colorBox: NSBox!
    @IBOutlet weak var colorLabel: NSTextField!
    
    var redSliderValue = Double()
    var greenSliderValue = Double()
    var blueSliderValue = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redBox.fillColor = NSColor(red: 1, green: 0, blue: 0, alpha: 1)
        greenBox.fillColor = NSColor(red: 0, green: 1, blue: 0, alpha: 1)
        blueBox.fillColor = NSColor(red: 0, green: 0, blue: 1, alpha: 1)
        colorBox.fillColor = NSColor(red: 0, green: 0, blue: 0, alpha: 1)
        colorLabel.stringValue = "NSColor(red: 0, green: 0, blue: 1, alpha: 1)"
       

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func changeRedColor(_ sender: NSSlider) {
        redSliderValue = sender.doubleValue
        redBox.fillColor = NSColor(red: sender.doubleValue, green: 0, blue: 0, alpha: 1)
       colorBox.fillColor = NSColor(red: sender.doubleValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        colorLabel.stringValue = "NSColor(red: \(String(format: "%3.2f",sender.doubleValue)), green: \(String(format: "%3.2f",greenSliderValue)), blue: \(String(format: "%3.2f",blueSliderValue)), alpha: 1)"
    }
    
    @IBAction func changeGreenColor(_ sender: NSSlider) {
        greenSliderValue = sender.doubleValue
        greenBox.fillColor = NSColor(red: 0, green: sender.doubleValue, blue: 0, alpha: 1)
        colorBox.fillColor = NSColor(red: redSliderValue, green: sender.doubleValue, blue: blueSliderValue, alpha: 1)
        colorLabel.stringValue = "NSColor(red: \(String(format: "%3.2f",redSliderValue)), green: \(String(format: "%3.2f",sender.doubleValue)), blue: \(String(format: "%3.2f",blueSliderValue)), alpha: 1)"
    }
    
    @IBAction func changeBlueColor(_ sender: NSSlider) {
        blueSliderValue = sender.doubleValue
        blueBox.fillColor = NSColor(red: 0, green: 0, blue: sender.doubleValue, alpha: 1)
        colorBox.fillColor = NSColor(red: redSliderValue, green: greenSliderValue, blue: sender.doubleValue, alpha: 1)
        colorLabel.stringValue = "NSColor(red: \(String(format: "%3.2f", redSliderValue)), green: \(String(format: "%3.2f",greenSliderValue)), blue: \(String(format: "%3.2f",sender.doubleValue)), alpha: 1)"
    }
}

