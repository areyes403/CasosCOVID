//
//  PaisCeldaTableViewCell.swift
//  CasosCOVID
//
//  Created by mac17 on 28/04/22.
//

import UIKit

class PaisCeldaTableViewCell: UITableViewCell {


    @IBOutlet weak var lblCasosRecuperadosCelda: UILabel!
    @IBOutlet weak var lblNombrePaisCelda: UILabel!
    @IBOutlet weak var lblCasosActivosCelda: UILabel!
    @IBOutlet weak var imgCelda: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
