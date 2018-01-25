//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Tia King on 1/24/18.
//  Copyright © 2018 Tia King. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let photos = ["bench", "flowers", "forest", "river", "lake", "bench", "flowers", "forest", "river", "lake", "bench", "flowers", "forest", "river", "lake"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        
//        cell.cellView.layer.cornerRadius = cell.cellView.frame.height
//        cell.landImage.layer.cornerRadius = cell.landImage.frame.height
        cell.landLabel.text = photos[indexPath.row]
        cell.landImage.image = UIImage(named: photos[indexPath.row])
        return cell
    }


}

