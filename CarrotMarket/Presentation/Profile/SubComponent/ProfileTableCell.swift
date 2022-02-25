//
//  ProfileTableCell.swift
//  CarrotMarket
//
//  Created by test on 2022/02/26.
//

import UIKit

class ProfileTableCell: UITableViewCell {
    
    @IBOutlet weak var leftImgView: UIImageView!
    @IBOutlet weak var topTitle: UILabel!
    @IBOutlet weak var bottomDescription: UILabel!
    @IBOutlet weak var rightImgView: UIImageView!
    
    static var identifier = "profileTableCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let profileHeight : CGFloat = 80
        leftImgView.layer.cornerRadius = profileHeight / 2

        topTitle.font = .systemFont(ofSize: 20)
        
        bottomDescription.textColor = .darkGray
        bottomDescription.font = .systemFont(ofSize: 16)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
