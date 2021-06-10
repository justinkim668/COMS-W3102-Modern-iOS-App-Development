//
//  ViewController.swift
//  viewTRansformation
//
//  Created by Justin Kim on 2/19/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import UIKit
import CoreImage

class ViewController: UIViewController{
    
    @IBOutlet weak var twoxImageView: UIImageView!
    
    @IBOutlet weak var blurImageView: UIImageView!
    
    var context = CIContext(options: nil)
    
    func makeBigger() {
            self.twoxImageView.transform = CGAffineTransform(scaleX: 2, y: 2)
    }
    
    func makeBlurry(image: UIImage){
        blurImageView.addBlurEffect()
    }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let twoTapGesture = UITapGestureRecognizer(target: self, action: #selector(makeBigger))
            let blurTapGesture = UITapGestureRecognizer(target: self, action: #selector(makeBlurry))
            twoxImageView.addGestureRecognizer(twoTapGesture)
            twoxImageView.isUserInteractionEnabled = true
            blurImageView.addGestureRecognizer(blurTapGesture)
            blurImageView.isUserInteractionEnabled = true

        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

extension UIImageView
{
    func addBlurEffect()
    {
        let blurEffect = UIBlurEffect()
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        self.addSubview(blurEffectView)
    }
}

