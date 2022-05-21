//
//  ViewController.swift
//  Signos
//
//  Created by Igor S. Menezes on 20/05/22.
//

import UIKit

class ViewController: UITableViewController {

    var signos:[String] = []
    var significadoSignos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //Configura significados
        significadoSignos.append("O Ariano é uma pessoa cheia de energia e entusiamo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as ideias novas.")
        significadoSignos.append("Zeloso e possessivo, um touro pode tender a ser inflexível e ressentido. As vezes os Touros pecam de ser cobiçosos e de permitir-se tudo.")
        significadoSignos.append("Apesar de sua curiosidade nata, sua natureza não é atraída pela profundidade e por assuntos pesados.")
        significadoSignos.append("Câncer, o signo das emoções. Se existe um signo que veio para aprender a fluir nas oscilações e na beleza dos feelings todos é esse.")
        significadoSignos.append("Todo mundo conhece o clichê da descrição leonina, mas ela é a mais pura verdade: Leão brilha muito.")
        significadoSignos.append("A maioria das virginianas se orgulha das qualidades de seu signo, pois ele é sinônimo de pragmatismo, trabalho, funcionalidade, organização e saúde, coisas que são muito bem vindas por todos nós nos dias de hoje.")
        significadoSignos.append("Libra é um signo ligado ao elemento Ar e regido pelo planeta Vênus e, por isso, usa suas habilidades para trazer harmonia a tudo que a cerca através de seu talento de enxergar a mesma coisa através de muitos pontos de vista. ")
        significadoSignos.append("Escorpião é o mais indecifrável de todos os signos, e ele prefere manter as coisas assim, do jeito que estão, sob seu controle, pois seu enigmatismo lhe confere bastante poder.")
        significadoSignos.append("Todo signo traz uma reação ao signo anterior, e como Sagitário vem depois do profundo e intenso Escorpião, ele costuma ter um pouco de preguiça de entrar em questões emocionais. ")
        significadoSignos.append("Capricórnio é um dos signos mais julgados do zodíaco. Sem querer inserir trocadilhos, mas, por coincidência, Capricórnio é o próprio signo ligado ao julgamento.")
        significadoSignos.append("Aquário é o signo ligado ao novo, ao futuro, à tecnologia, à liberdade e a tudo que é diferente. Ele veio para questionar e renovar tudo o que veio antes dele – muitas vezes, pensando em como essas mudanças afetariam a sociedade")
        significadoSignos.append("O povo se apaixona pelas piscianas, mas nem sempre elas estão interessadas, elas apenas estão sendo legais. Peixes aceita a todos e trata todo mundo bem, o que pode ser confundido com amor em alguns casos.")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[indexPath.row ]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Significado do signo", message: significadoSignos[ indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(acaoConfirmar)
        present(alertController , animated: true, completion: nil)
//        print( significadoSignos[ indexPath.row])
    }


}

