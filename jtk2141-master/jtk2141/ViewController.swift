//
//  ViewController.swift
//  jtk2141
//
//  Created by Justin Kim on 2/4/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import UIKit
import Foundation

class mainViewController: UIViewController {
    
    @IBOutlet weak var pfimageView: UIImageView!
    
    var profileImage: UIImage = #imageLiteral(resourceName: "Justin")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func showImageButton(_ sender: Any) {
        pfimageView.image = profileImage
    }
}
