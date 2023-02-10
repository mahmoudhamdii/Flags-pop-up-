//
//  TableViewClass.swift
//  tableViewII
//
//  Created by hamdi on 23/12/2022.
//

import UIKit

class TableViewClass: UITableViewCell {

    @IBOutlet weak var lblContryName: UILabel!
    @IBOutlet weak var flagImageViwe: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
