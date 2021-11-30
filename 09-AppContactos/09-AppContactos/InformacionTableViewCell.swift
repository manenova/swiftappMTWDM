//
//  InformacionTableViewCell.swift
//  09-AppContactos
//
//  Created by Emmanuel Noriega Vaca on 05/11/21.
//

import UIKit

class InformacionTableViewCell: UITableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    //MARK: Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var emailLabel:UILabel!
    @IBOutlet weak var movilLable:UILabel!
    @IBOutlet weak var noteLabel:UILabel!
}
