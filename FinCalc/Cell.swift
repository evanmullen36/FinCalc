//
//  Cell.swift
//  FinCalc
//
//  Created by Evan Mullen on 10/23/21.
//

import UIKit

class Cell: UITableViewCell {
    
    
    @IBOutlet var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
