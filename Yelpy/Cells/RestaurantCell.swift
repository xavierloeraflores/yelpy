//
//  RestaurantCell.swift
//  Yelpy
//
//  Created by Xavier Loera Flores on 9/5/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
