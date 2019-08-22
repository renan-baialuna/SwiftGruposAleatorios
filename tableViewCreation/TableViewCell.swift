//
//  TableViewCell.swift
//  tableViewCreation
//
//  Created by Renan Baialuna on 22/08/19.
//  Copyright © 2019 Renan Baialuna. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    var groupMenbers: [Int]!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        var ret = ""
        for a in groupMenbers {
            ret = "\(ret), \(a)"
        }
        label.text = ret
        // Configure the view for the selected state
    }

}
