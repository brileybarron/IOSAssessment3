//
//  personCell.swift
//  Week3Assessment
//
//  Created by Briley Barron on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class personCell: UITableViewCell {
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var favoriteThing: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
