//
//  NoteViewController.swift
//  SegueApplication
//
//  Created by Mohammad Kiani on 2019-11-11.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit
import AVFoundation

class NoteViewController: UIViewController {

    var audioplayer: AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func playNote(_ sender: UIButton) {
        let selectedButton = soundArray[sender.tag - 1]
        let soundURL = Bundle.main.url(forResource: selectedButton, withExtension: "wav")
        audioplayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioplayer.play()
    }
}
