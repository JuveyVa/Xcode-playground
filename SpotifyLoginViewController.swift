//
//  SpotifyLoginViewController.swift
//  mobiles2
//
//  Created by ITIT on 19/02/25.
//

import UIKit
import SwiftVideoBackground

class SpotifyLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Spotify Login"
        try? VideoBackground.shared.play(view: view, videoName: "videoSpotifyLogin", videoType: "mp4")
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    

}
