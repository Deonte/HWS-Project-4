//
//  WebSelectTableViewController.swift
//  HWS: Project 4
//
//  Created by Deonte on 6/10/19.
//  Copyright © 2019 Deonte. All rights reserved.
//

import UIKit

var websites = ["duckduckgo.com", "hackingwithswift.com", "deontecodes.com", "youtube.com", "google.com", "kendrarufino.com", "apple.com"]

class WebSelectTableViewController: UITableViewController {

    let cellID = "Website"
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Easy Browser"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebView") as? WebViewController {
            vc.selectedWebsite = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

  
}
