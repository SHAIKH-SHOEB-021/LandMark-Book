//
//  DetailsViewController.swift
//  LandMark Book
//
//  Created by shoeb on 19/01/23.
//

import UIKit

class DetailsViewController: UIViewController {

    var strName : String!
    var imageUI : UIImage!
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var detailsImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLBL.text = strName
        detailsImage.image = imageUI
    }

}
