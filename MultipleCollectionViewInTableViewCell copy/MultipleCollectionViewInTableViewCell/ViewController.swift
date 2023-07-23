//
//  ViewController.swift
//  MultipleCollectionViewInTableViewCell
//
//  Created by Sainath Bamen on 21/04/23.
//

import UIKit

var data = [
    MovieData(sectionType: "sainath", Movies: ["dell1","dell1","dell1","dell1","dell1"]),
    MovieData(sectionType: "arjun", Movies: ["dell2","dell2","dell2","dell2","dell2"]),
    MovieData(sectionType: "bamen", Movies: ["dell3","dell3","dell3","dell3","dell3"])
]

class ViewController: UIViewController {

    @IBOutlet weak var collctionView2: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! MyTableViewCell
        
        if cell.myCollectionView.tag == indexPath.section{
            
        }
        else{
            
            
        }
 
    return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.tintColor = .red
    }
    
}
