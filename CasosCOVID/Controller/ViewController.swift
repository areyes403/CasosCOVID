//
//  ViewController.swift
//  CasosCOVID
//
//  Created by mac17 on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tablaPaises: UITableView!
    var covidManager = CovidManager()
    
    var paisAMandar: CovidDatos?
    var paisesTabla:[CovidDatos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tablaPaises.register(UINib(nibName: "PaisCeldaTableViewCell", bundle: nil), forCellReuseIdentifier:"celda")
        tablaPaises.register(UINib(nibName: "PaisCeldaTableViewCell", bundle: nil), forCellReuseIdentifier: "celda")
        tablaPaises.delegate = self
        tablaPaises.dataSource = self
        //covidManager.delegado = self
        covidManager.buscarEstadisticas()
    }

//    func buscarEstadisticas(){
//        let urlString = "https://corona.lmao.ninja/v3/covid-19/countries/"
//
//        if let url = URL(string: urlString){
//            DispatchQueue.global().async {
//                if let imagenData = try? Data(contentsOf: url){
//                    let imagen = UIImage(data: imagenData)
//
//                    DispatchQueue.main.async {
//                        <#code#>
//                    }
//
//                }
//            }
//        }
//    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paisesTabla.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaPaises.dequeueReusableCell(withIdentifier: "celda", for:indexPath) as! PaisCeldaTableViewCell
        
        
        
        celda.detailTextLabel?.text="10101"
        celda.imageView?.image = UIImage(systemName: "flag")
        return celda
    }
    
    
}
