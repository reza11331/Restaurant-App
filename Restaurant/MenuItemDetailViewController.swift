//
//  MenuItemDetailViewController.swift
//  Restaurant
//
//  Created by Reza on 06/06/2020.
//  Copyright © 2020 Reza. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    var menuItem: MenuItem!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        updateUI()
        addToOrderButton.layer.cornerRadius = 5.0
        
    }
    
    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = "€ \(menuItem.price)"
        detailTextLabel.text = menuItem.detailText
        
        MenuController.shared.fetchImage(url:menuItem.imageURL) { (image) in
                 guard let image = image else { return }
                 DispatchQueue.main.async {
                     self.imageView?.image = image
                 }
             }
    }
    
    @IBAction func orderButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.addToOrderButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        MenuController.shared.order.menuItems.append(menuItem)
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

