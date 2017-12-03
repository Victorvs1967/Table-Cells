//
//  ViewController.swift
//  Table Cells
//
//  Created by Victor Smirnov on 02/12/2017.
//  Copyright © 2017 Victor Smirnov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
  let cellTableIdetifier = "CellTableIdentifier"
  
  let computers = [
    ["Name": "MacBookAir", "Color": "Silver"],
    ["Name": "MacBook Pro", "Color": "Silver"],
    ["Name": "iMac", "Color": "Silver"],
    ["Name": "Mac Pro", "Color": "Black"]
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    tableView.register(NameAndColorCell.self, forCellReuseIdentifier: cellTableIdetifier)
    let xib = UINib(nibName: "NameAndColorCell", bundle: nil)
    tableView.register(xib, forCellReuseIdentifier: cellTableIdetifier)
    tableView.rowHeight = 65
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: TableView Data Source
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return computers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellTableIdetifier, for: indexPath) as! NameAndColorCell
    let rowData = computers[indexPath.row]
    cell.name = rowData["Name"]!
    cell.color = rowData["Color"]!
    
    return cell
  }
  
  
}

