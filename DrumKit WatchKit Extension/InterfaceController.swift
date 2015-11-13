//
//  InterfaceController.swift
//  DrumKit WatchKit Extension
//
//  Created by Adam Rais on 11/09/2015.
//  Copyright © 2015 Adamgoodapp. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var player: WKAudioFilePlayer!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func playSound() {
        let filePath = NSBundle.mainBundle().pathForResource("say_your_prayers", ofType: "wav")!
        let fileUrl = NSURL.fileURLWithPath(filePath)
        let asset = WKAudioFileAsset(URL: fileUrl)
        let playerItem = WKAudioFilePlayerItem(asset: asset)
        player = WKAudioFilePlayer(playerItem: playerItem)
        player.play()
    }
}
