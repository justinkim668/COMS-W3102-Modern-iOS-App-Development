//
//  ViewController.swift
//  tableView
//
//  Created by Justin Kim on 2/21/18.
//  Copyright © 2018 Justin Kim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    @IBOutlet var fibonacciTable: UITableView!
    
    @IBOutlet weak var cell: UITableViewCell!
    
    var fibonacci = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181]
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > -10{
            let w = fibonacci[fibonacci.count-1] + fibonacci[fibonacci.count-2]
            fibonacci.append(w)
            fibonacciTable.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return fibonacci.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = fibonacciTable.dequeueReusableCell(withIdentifier: "cell") as! fibTableViewCell
        let n = indexPath.section
        let val = fibonacci[n]
        tcell.numLable.text! = "\(val)"
        return tcell
    }

}

