//
//  ViewController.swift
//  Algorythm
//
//  Created by Apurv Gupta on 30/11/15.
//  Copyright (c) 2015 Apurv Gupta. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistsArray: [UIImageView] = []
    @IBOutlet var playlistImageView0: UIImageView!
    @IBOutlet var playlistImageView1: UIImageView!
    
    @IBOutlet var playlistImageView2: UIImageView!
    @IBOutlet var playlistImageView3: UIImageView!
    
    
    @IBOutlet var playlistImageView4: UIImageView!
    
    @IBOutlet var playlistImageView5: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playlistsArray += [playlistImageView0, playlistImageView1, playlistImageView2, playlistImageView3, playlistImageView4, playlistImageView5]

        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(Index: index)
            let playlistImageView = playlistsArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        
        }
    
        
        
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            
            let playlistImageView = sender!.view as! UIImageView
            if let index = find(playlistsArray, playlistImageView){
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(Index: index)
            }
            
            
            
        }
    }
    
    
    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
   
    }
    
    
    
}

