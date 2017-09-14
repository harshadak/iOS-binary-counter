//
//  ViewController.swift
//  BinaryCounter
//
//  Created by H on 9/13/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import UIKit

class BinaryCounterViewController: UIViewController, UITableViewDataSource, BinaryCounterDelegate {
    
    var numbers = [1, 10, 100, 1000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000, 100000000000, 1000000000000, 10000000000000, 100000000000000, 1000000000000000, 10000000000000000]
    
    var total = 0

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        cell.delegate = self
        cell.numberLabel?.text = String(numbers[indexPath.row])
        return cell
    }
    
    func subtraction(text: String) {
        total -= Int(text)!
        totalResult.text = String(total)
    }
    
    func addition(text: String) {
        total += Int(text)!
        totalResult.text = String(total)
    }

}

