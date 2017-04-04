//
//  MusicListVCViewController.swift
//  swappingScreens
//
//  Created by Jiashan Wu on 4/4/17.
//  Copyright © 2017 Jiashan Wu. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    // Add segue for button
    @IBAction func playSongBtnPressed(_ sender: Any) {
        let songTitle = "Straight Outta Compton" // can be dictionary or other data types
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // Prepare to send data to PlaySongVC 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
