//
//  movieCellTableViewCell.swift
//  TableView
//
//  Created by ㅣ on 2023/04/09.
//

import UIKit

class movieCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
