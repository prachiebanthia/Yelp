//
//  BusinessCell.swift
//  Yelp
//
//  Created by Prachie Banthia on 10/23/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var CaregoriesLabel: UILabel!
    @IBOutlet weak var addrLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    var business: Business! {
        didSet{
            nameLabel.text = business.name
            thumbView.setImageWith(business.imageURL!)
            CaregoriesLabel.text = business.categories
            addrLabel.text = business.address
            distanceLabel.text = business.distance
            ratingImageView.setImageWith(business.ratingImageURL!)
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbView.layer.cornerRadius = 3
        thumbView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
