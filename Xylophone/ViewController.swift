//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressedC(_ sender: UIButton) {
        playSound(key: "C")
    }
    
    @IBAction func keyPressedD(_ sender: UIButton) {
        playSound(key: "D")
    }
    
    
    @IBAction func keyPressedE(_ sender: UIButton) {
        playSound(key: "E")
    }
    
    @IBAction func keyPressedF(_ sender: UIButton) {
        playSound(key: "F")
    }
    
    @IBAction func keyPressedG(_ sender: UIButton) {
        playSound(key: "G")
    }
    
    @IBAction func keyPressedA(_ sender: UIButton) {
        playSound(key: "A")
    }
    
    @IBAction func keyPressedB(_ sender: UIButton) {
        playSound(key: "B")
    }
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

