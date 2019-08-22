//
//  ViewController.swift
//  tableViewCreation
//
//  Created by Renan Baialuna on 22/08/19.
//  Copyright © 2019 Renan Baialuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    func escolha() {
//        let aleatorio = total.randomElement()
//        let posicaoAleatorio = total.firstIndex(of: aleatorio!)
//        grupo.append(aleatorio!)
//        total.remove(at: posicaoAleatorio!)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        while total.count >= 2{
//            var i = 0
//            while i < 2 {
//                escolha()
//                i += 1
//            }
//            grupoDeGrupos.append(grupo)
//            grupo.removeAll()
//        }
//        grupoDeGrupos.append(total)
//        let total = [1,2,3,4,5,6,7,8,9,10]
//        print(gerarGruposAleatorios(grupoInicial: total, numeroPorGrupo: 3))
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! TableViewController
        let total = [1,2,3,4,5,6,7,8,9,10]
        dvc.grupoDeGrupos = gerarGruposAleatorios(grupoInicial: total, numeroPorGrupo: 3)
    }
    
    func gerarGruposAleatorios(grupoInicial: [Int], numeroPorGrupo: Int) -> [[Int]] {
        var total = grupoInicial
        var grupo: [Int] = []
        var grupoDeGrupos: [[Int]] = []
        
        func escolha() {
            let aleatorio = total.randomElement()
            let posicaoAleatorio = total.firstIndex(of: aleatorio!)
            grupo.append(aleatorio!)
            total.remove(at: posicaoAleatorio!)
        }
        
        while total.count >= numeroPorGrupo {
            var i = 0
            while i < numeroPorGrupo {
                escolha()
                i += 1
            }
            grupoDeGrupos.append(grupo)
            grupo.removeAll()
        }
        if total.count > 0 {
            grupoDeGrupos.append(total)
        }
        return grupoDeGrupos
    }
}

