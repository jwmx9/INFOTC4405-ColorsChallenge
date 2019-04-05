//
//  ColorsViewController.swift
//  ColorsTableView
//
//  Created by John Williams III on 4/5/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorsCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        
        return cell
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
