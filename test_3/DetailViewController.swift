//
//  DetailViewController.swift
//  test_3
//
//  Created by Karina on 19.09.2024.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedFlagName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let flagName = selectedFlagName {
            imageView.image = UIImage(named: flagName)
        }
    }
    @IBAction func shareFlagTapped(_ sender: UIBarButtonItem) {
        
        guard let flagImage = imageView.image else {
            return
        }
        
        let items: [Any] = [flagImage]
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        present(activityViewController, animated: true, completion: nil)
    }
}
