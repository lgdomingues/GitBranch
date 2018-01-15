//
//  ViewController.swift
//  GitBranch
//
//  Created by Swift on 15/01/2018.
//  Copyright © 2018 Corporate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMensagem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Exibir a mensagem na Label
        self.labelMensagem.text = self.mensagem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mensagem() -> String {
        
        // Resgatar a hora atual
        let agora = Date()
        
        // Criar datas para comparação
        guard let meioDia = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: agora) else { return "" }
        guard let seisHoras = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: agora) else { return "" }
        
        // Comparação para definir a mensagem
        if agora >= meioDia && agora <= seisHoras {
            return "Boa tarde."
        } else if agora >= seisHoras { 
            return "Boa noite."
        } else {
            return "Bom dia."
        }
        
    }

}

