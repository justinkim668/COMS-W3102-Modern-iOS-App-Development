//
//  contentViewController.swift
//  finalApp
//
//  Created by Justin Kim on 3/2/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import Foundation
import UIKit

class contentViewController: UITableViewController {
    @IBOutlet var finalTableView: UITableView!
    
    var final = ["\(UserDefaults.standard.object(forKey: Constants.UserDefaults.username)!)"]{
        didSet{
            finalTableView.reloadData()
        }
    }
    
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return final.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = finalTableView.dequeueReusableCell(withIdentifier: "cell") as! cell
        let n = final[indexPath.section]
        tcell.finalLabel.text! = "\(n)"
        return tcell
    }
    
    
}
