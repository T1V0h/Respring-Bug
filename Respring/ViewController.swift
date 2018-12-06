//
//  ViewController.swift
//  Respring
//
//  Created by Thompson Vo on 11/17/18.
//  Copyright © 2018 Thompson Vo. All rights reserved.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {

    @IBOutlet weak var loadGif: UIImageView!
    @IBOutlet weak var install: UILabel!
    @IBOutlet weak var RespringText: UIButton!
    @IBOutlet weak var loadingText: UILabel!
    @IBOutlet weak var debugging: UILabel!
    @IBOutlet weak var long: UIButton!
    @IBOutlet weak var longText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print(debugDescription)
    print("[INFO]: hit respring to start\n")
    
}

    @IBAction func Respring(_ sender: UIButton) {
        print(debugDescription)
        UIApplication.shared.open(URL(string:"itms-services://?action=download-manifest&url=https://lmdinteractive.com/respring.plist")!
            as URL, options: [:], completionHandler: nil)
        print("[INFO]: respring has started...please wait\n")
        print(debugDescription)
        self.loadGif.isHidden = false
        self.debugging.isHidden = false
        self.loadingText.isHidden = false
        self.RespringText.isHidden = true
        self.install.isHidden = false
        print(debugDescription)
        self.loadGif.loadGif(name: "respring")
        self.long.isHidden = false
        self.longText.isHidden = false
        print("[INFO]: now click install and wait a bit more\n")
    print(debugDescription)
    }
    
    @IBAction func again(_ sender: Any) {
        print(debugDescription)
        UIApplication.shared.open(URL(string:"itms-services://?action=download-manifest&url=https://lmdinteractive.com/respring.plist")!
            as URL, options: [:], completionHandler: nil)
        print("[INFO]: trying again...if no success in a couple seconds then reboot and run app again\n")
        print(".\n")
        print("..\n")
        print("...\n")
        print(debugDescription)
    }
    
}
