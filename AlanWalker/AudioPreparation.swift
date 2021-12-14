//
//  AudioPreparation.swift
//  AlanWalker
//
//  Created by Hady Helal on 06/12/2021.
//  Copyright © 2021 HadyOrg. All rights reserved.
//

import Foundation
import AVFoundation

protocol AudioPreparationProtocol {
    func playingAudio(with audioName: String) -> AVAudioPlayer?
}

class AudioPreparation: AudioPreparationProtocol {
//    let audioName: String
//
//    init(audioName: String) {
//        self.audioName = audioName
//
//    }
    
    func playingAudio(with audioName: String) -> AVAudioPlayer? {
        let audio: AVAudioPlayer?
        
        guard let url = Bundle.main.url(forResource: audioName, withExtension: ".mp3") else {
            return nil
        }
        
        do {
            audio = try AVAudioPlayer(contentsOf: url)
        }
        catch {
            print("Error while playing audio :: \(error)")
            
            return nil
        }
        return audio
    }
}
