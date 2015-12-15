//
//  ViewController.swift
//  MultilineDemo
//
//  Created by Ray Fix on 12/14/15.
//  Copyright © 2015 Pelfunc, Inc. All rights reserved.
//

import UIKit

class MultilineTableVC: UITableViewController {

  let data = ["This is a short line", "This is a much longer line that is going to cause wrapping and need to be adjusted so that you can see all of the text."]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.estimatedRowHeight = 44
    tableView.rowHeight = UITableViewAutomaticDimension
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("TextCell", forIndexPath: indexPath) as! TextCell
    cell.selectionStyle = .None
    cell.contentTextLabel.text = data[indexPath.row]
    cell.contentTextLabel.numberOfLines = 1
    return cell
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    tableView.deselectRowAtIndexPath(indexPath, animated: true)  // required because of separator line glitch
    
    if let cell = tableView.cellForRowAtIndexPath(indexPath) as? TextCell {
        let label = cell.contentTextLabel
        tableView.beginUpdates()
        label.numberOfLines = label.numberOfLines == 0 ? 1 : 0
        tableView.endUpdates()
    }
  }

}

