//
//  VistaDetalladaViewController.swift
//  CasosCOVID
//
//  Created by mac17 on 28/04/22.
//

import UIKit

class VistaDetalladaViewController: UIViewController {

    @IBOutlet weak var imgFlag: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblRecovery: UILabel!
    @IBOutlet weak var lbltodayCases: UILabel!
    @IBOutlet weak var lblCritical: UILabel!
    @IBOutlet weak var lblActive: UILabel!
    @IBOutlet weak var lbltodayDeaths: UILabel!
    @IBOutlet weak var lbldeaths: UILabel!
    @IBOutlet weak var lblCases: UILabel!
    var recibirPais: CovidDatos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarDatos()
    }
    
    func cargarDatos(){
        if let urlString = recibirPais?.countryInfo?.flag{
            if let imagenURL = URL(string: urlString){
                DispatchQueue.global().async {
                    guard let imagenData = try? Data(contentsOf: imagenURL) else {return}
                    let image = UIImage(data: imagenData)
                    DispatchQueue.main.async {
                        self.imgFlag.image = image
                    }
                }
            }
        }
        lblNombre.text = recibirPais?.country
        lblRecovery.text = "Recuperados \(recibirPais?.recovered ?? 0)"
        lbltodayCases.text = "Casos hoy \(recibirPais?.todayCases ?? 0)"
        lbldeaths.text = "Recuperados \(recibirPais?.deaths ?? 0)"
        lbltodayDeaths.text = "Recuperados \(recibirPais?.todayDeaths ?? 0)"
        lblActive.text = "Recuperados \(recibirPais?.active ?? 0)"
        lblCritical.text = "Recuperados \(recibirPais?.critical ?? 0)"
        lblCases.text = "Recuperados \(recibirPais?.cases ?? 0)"
        
    }
    


}
