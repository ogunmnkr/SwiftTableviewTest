//
//  ViewController.swift
//  fenerbahce
//
//  Created by Ogün Minkara on 15.12.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var fbFootballers = [footballers]()
    var chosenFootballer : footballers?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
// Futbolcuları sınıfta eklediğimiz bilgiler ile girdim
        
        let liva = footballers(name: "Dominic Livakovic", position: "Goalkeeper", image: UIImage(named: "livakovic")!)
        let osayi = footballers(name: "Osayi Samuel", position: "Defender", image: UIImage(named: "osayi")!)
        let becao = footballers(name: "Becao", position: "Defender", image: UIImage(named: "becao")!)
        let djiku = footballers(name: "Djiku", position: "Defender", image: UIImage(named: "djiku")!)
        let ferdi = footballers(name: "Ferdi Kadıoğlu", position: "Defender", image: UIImage(named: "ferdi")!)
        let fred = footballers(name: "Fred", position: "Midfielder", image: UIImage(named: "fred")!)
        let irfan = footballers(name: "İrfancan Kahveci", position: "Midfielder", image: UIImage(named: "irfan")!)
        let szymanski = footballers(name: "Sebastian Szymanski", position: "Midfielder", image: UIImage(named: "szymanski")!)
        let tadic = footballers(name: "Dusan Tadic", position: "Midfielder", image: UIImage(named: "tadic")!)
        let dzeko = footballers(name: "Edin Dzeko", position: "Striker", image: UIImage(named: "dzeko")!)

//bütün objeleri bir diziye yerleştirdim, diziyi ise her yerden erişmek için class altında tanımladım.
        fbFootballers.append(szymanski)
        fbFootballers.append(dzeko)
        fbFootballers.append(tadic)
        fbFootballers.append(irfan)
        fbFootballers.append(fred)
        fbFootballers.append(ferdi)
        fbFootballers.append(osayi)
        fbFootballers.append(djiku)
        fbFootballers.append(becao)
        fbFootballers.append(liva)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fbFootballers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fbFootballers[indexPath.row].name // . name demezsek string istediğini söyleyip hata veriyor.
        return cell
    }
// segue & aktarma işlemleri ;
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFootballer = fbFootballers[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedFootballers = chosenFootballer
        }
    }
}

