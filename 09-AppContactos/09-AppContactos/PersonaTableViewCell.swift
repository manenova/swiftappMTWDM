//
//  PersonaTableViewCell.swift
//  09-AppContactos
//
//  Created by Emmanuel Noriega Vaca on 05/11/21.
//

import UIKit

class PersonaTableViewCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer
            .cornerRadius = profileImageView.frame.width / 2
        
        profileImageView.layer
            .masksToBounds = true
        
    }

    //MARK: Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
}
