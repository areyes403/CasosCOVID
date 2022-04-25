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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaPaises.delegate = self
        tablaPaises.dataSource = self
        // Do any additional setup after loading the view.
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaPaises.dequeueReusableCell(withIdentifier: "celda", for:indexPath)
        celda.textLabel?.text="Mexico"
        celda.detailTextLabel?.text="10101"
        celda.imageView?.image = UIImage(systemName: "flag")
        return celda
    }
    
    
}
