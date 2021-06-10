//
//  ViewController.swift
//  userDefaults
//
//  Created by Justin Kim on 2/11/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lasAppLaunchLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeViewAppear()
        NotificationCenter.default.addObserver(self, selector:#selector(ViewController.makeViewAppear), name:
            NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
    }
    
    
    
    func makeViewAppear() {
        let timeThing = UserDefaults.standard.object(forKey: Constants.UserDefaults.time)
        if timeThing == nil {
            lasAppLaunchLabel.text = "Last Active Session: "
        } else{
            lasAppLaunchLabel.text = "Last Active Session: \(timeThing!)"
            print(timeThing!)
        }

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

