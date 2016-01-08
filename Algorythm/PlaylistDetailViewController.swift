//
//  PlaylistDetailViewController.swift
//  Algorythm
//
//  Created by Apurv Gupta on 30/11/15.
//  Copyright (c) 2015 Apurv Gupta. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    var playlist : Playlist?
    
    @IBOutlet var playlistCoverImage: UIImageView!
    
    @IBOutlet var playlistTitle: UILabel!
    @IBOutlet var playlistDescription: UILabel!
    @IBOutlet var playlistArtist0: UILabel!
    @IBOutlet var playlistArtist1: UILabel!
    @IBOutlet var playlistArtist2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if playlist != nil{
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundColor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            
            playlistArtist0.text = playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
        
        }// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
