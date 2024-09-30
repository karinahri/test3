//
//  ViewController.swift
//  test_3
//
//  Created by Karina on 19.09.2024.
//

import UIKit

class ViewController: UITableViewController {
    var flags = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    var selectedFlag: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flags.sort()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = flags[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFlag = flags[indexPath.row]
        performSegue(withIdentifier: "ShowDetail", sender: nil)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController, let flagName = selectedFlag {
            detailVC.selectedFlagName = flagName
            selectedFlag = nil
        }
    }
}
