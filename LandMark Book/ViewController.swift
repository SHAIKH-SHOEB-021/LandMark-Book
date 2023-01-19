//
//  ViewController.swift
//  LandMark Book
//
//  Created by shoeb on 19/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var landMarkName = [String]()
    var landMarkImage = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        landMarkName.append("Beijing")
        landMarkName.append("Cairo")
        landMarkName.append("Delhi")
        landMarkName.append("Dudai")
        landMarkName.append("Islamabad")
        landMarkName.append("Istanbul")
        landMarkName.append("Jerusalem")
        landMarkName.append("Kathmandu")
        landMarkName.append("London")
        landMarkName.append("Madrid")
        landMarkName.append("Manila")
        landMarkName.append("Monaco")
        landMarkName.append("Moscow")
        landMarkName.append("Mumbai")
        landMarkName.append("New York")
        landMarkName.append("Ottawa")
        landMarkName.append("Seoul")
        landMarkName.append("Sydney")
        landMarkName.append("Tokyo")
        landMarkName.append("Toronto")
        
        landMarkImage.append(UIImage(named: "Beijing.jpeg")!)
        landMarkImage.append(UIImage(named: "Cairo.jpeg")!)
        landMarkImage.append(UIImage(named: "Delhi.jpeg")!)
        landMarkImage.append(UIImage(named: "Dubai.jpeg")!)
        landMarkImage.append(UIImage(named: "Islamabad.jpeg")!)
        landMarkImage.append(UIImage(named: "Istanbul.jpeg")!)
        landMarkImage.append(UIImage(named: "Jerusalem.jpeg")!)
        landMarkImage.append(UIImage(named: "Kathmandu.jpeg")!)
        landMarkImage.append(UIImage(named: "London.jpeg")!)
        landMarkImage.append(UIImage(named: "Madrid.jpeg")!)
        landMarkImage.append(UIImage(named: "Manila.jpeg")!)
        landMarkImage.append(UIImage(named: "Monaco.jpeg")!)
        landMarkImage.append(UIImage(named: "Moscow.jpeg")!)
        landMarkImage.append(UIImage(named: "Mumbai.jpeg")!)
        landMarkImage.append(UIImage(named: "NewYork.jpeg")!)
        landMarkImage.append(UIImage(named: "Ottawa.jpeg")!)
        landMarkImage.append(UIImage(named: "Seoul.jpeg")!)
        landMarkImage.append(UIImage(named: "Sydney.jpeg")!)
        landMarkImage.append(UIImage(named: "Tokyo.jpeg")!)
        landMarkImage.append(UIImage(named: "Toronto.jpeg")!)
    }
    
    //Set TableViewCell counter Function
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkName.count
    }
    
    //Set Value TableViewCell Function
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landMarkName[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    //OnTableViewCell TableViewCell Function
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        detailVC.strName = landMarkName[indexPath.row]
        detailVC.imageUI = landMarkImage[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    //Deleting Data In TableViewCell Function
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.landMarkName.remove(at: indexPath.row)
            self.landMarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

