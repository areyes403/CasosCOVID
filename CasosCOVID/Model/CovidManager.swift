//
//  CovidManager.swift
//  CasosCOVID
//
//  Created by mac17 on 25/04/22.
//

import Foundation

protocol covidManagerprotocol {
    func cargarDatos(paises: [CovidDatos])
    func huboError(cualError:String)
}

struct CovidManager {
    var delegado: covidManagerprotocol?
    func buscarEstadisticas(){
        let urlString = "https://corona.lmao.ninja/v3/covid-19/countries/"
        if let url = URL (string: urlString){
            let sesion = URLSession(configuration: .default)
            let tarea = sesion.dataTask(with: url){datos, respuesta,error in
                if error != nil {
                    delegado?.huboError(cualError: error!.localizedDescription)
                }
                
                if let datosSeguros = datos {
                    if let listaPaises = self.parsearJSON(datosCovid: datosSeguros){
                        delegado?.cargarDatos(paises: listaPaises)
                    }
                }
            }
            tarea.resume()
        }
        
    }
    
    func parsearJSON(datosCovid: Data) -> [CovidDatos]? {
        let decodificador = JSONDecoder()
        do{
            let datosDecodificados: [CovidDatos] = try decodificador.decode([CovidDatos].self, from: datosCovid)
            let paises: [CovidDatos] = datosDecodificados
            return paises
        }catch{
            print("Error: \(error.localizedDescription)")
            return nil
        }
    }
}
