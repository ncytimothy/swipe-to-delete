//
//  ViewController.swift
//  Swipe-to-Delete
//
//  Created by Timothy Ng on 12/17/17.
//  Copyright © 2017 Timothy Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var names = ["Veronica", "Debbie", "Chloe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell") as! UITableViewCell
        let name = names[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = name
        return cell
    }


}

