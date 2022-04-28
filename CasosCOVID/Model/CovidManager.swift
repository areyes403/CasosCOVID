//
//  CovidManager.swift
//  CasosCOVID
//
//  Created by mac17 on 25/04/22.
//

import Foundation

protocol covidManagerDelegado {
    func actualizar()
}

struct CovidManager {
    var delegado: covidManagerDelegado?
    func buscarEstadisticas(){
        let urlString = "https://corona.lmao.ninja/v3/covid-19/countries/"
        if let url = URL (string: urlString){
            let sesion = URLSession(configuration: .default)
            let tarea = sesion.dataTask(with: url){datos, respuesta,
                error in
                if let error != nil {
                    print("error")
                }
            }
        }
        
    }
    
}
