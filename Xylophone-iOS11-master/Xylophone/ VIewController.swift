//
//  ViewController.swift
//  Xylophone
//
//  Created by maJor on 10/02/2020.
//  Copyright © 2020 maJor. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var tag:Int = sender.tag
        playSound(x: tag)
        
    }
    
    func playSound(x:Int){
        let soundUrl = Bundle.main.url(forResource: "note\(x)", withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }catch{
            print(error)
        }
        audioPlayer.play()
        
    }
    
  

}

