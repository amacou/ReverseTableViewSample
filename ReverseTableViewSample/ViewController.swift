//
//  ViewController.swift
//  ReverseTableViewSample
//
//  Created by amano on 2018/03/07.
//  Copyright © 2018年 amacou. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.transform = CGAffineTransform(scaleX: 1, y: -1);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        cell.textLabel?.text = "\(indexPath.row)"
        cell.transform = CGAffineTransform(scaleX: 1, y: -1);
        return cell
    }
}

