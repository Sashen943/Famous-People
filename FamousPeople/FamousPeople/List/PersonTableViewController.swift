//
//  PersonTableViewController.swift
//  FamousPeople
//
//  Created by Sashen Pillay on 5/4/18.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

import UIKit
import os.log


class PersonTableViewController: UITableViewController {

    var people = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPeople()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    private func loadPeople(){
        
        let imageNelsonMandela = UIImage(named: "nelsonmadela")
        let imageAlanTuring = UIImage(named: "alanturing")
        let imageGhandi = UIImage(named: "ghandi")
        let imageMartinLutherKing = UIImage(named: "martinlutherking")
        let imageStephenHawking = UIImage(named: "stephenhawking")
        let imageMargaretThatcher = UIImage(named: "margaretthatcher")
        let imageMozart = UIImage(named: "mozart")
        let imageVincentVanGogh = UIImage(named:"vincentvangogh")
        let imageEinstein = UIImage(named:"einstein")

        
        let nelsonMandela = Person(name: "Nelson Mandela", image: imageNelsonMandela, occupation: "Former president of South Africa",
        description: "Nelson Rolihlahla Mandela was a South African anti-apartheid revolutionary, political leader, and philanthropist who served as President of South Africa from 1994 to 1999")
        
        let ghandi = Person(name: "Mahatma Ghandi", image: imageGhandi, occupation: "Indian activist",
        description: "Mohandas Karamchand Gandhi was an Indian activist who was the leader of the Indian independence movement against British rule.")
        
        let alanTuring = Person(name: "Alan Turing", image: imageAlanTuring, occupation: "Computer scientist",
        description: "Alan Mathison Turing OBE FRS was an English computer scientist, mathematician, logician, cryptanalyst, philosopher, and theoretical biologist")
        
        let martinLutherKing = Person(name: "Martin Luther King Jr.", image: imageMartinLutherKing, occupation: "American minister",
        description: "Martin Luther King Jr. was an American Baptist minister and activist who became the most visible spokesperson and leader in the civil rights movement from 1954 until his death in 1968")
        
        let margaretThatcher = Person(name: "Margaret Thatcher", image: imageMargaretThatcher, occupation: "Former British prime minister",
        description: "Margaret Hilda Thatcher, Baroness Thatcher, LG, OM, PC, FRS, FRIC was a British stateswoman who served as Prime Minister of the United Kingdom from 1979 to 1990 and Leader of the Conservative Party from 1975 to 1990.")
        
        let stephenHawking = Person(name: "Stephen Hawking", image: imageStephenHawking, occupation: "Theoretical physicist",
        description: "Stephen William Hawking CH CBE FRS FRSA was an English theoretical physicist, cosmologist, author, and director of research at the Centre for Theoretical Cosmology at the University of Cambridge." )
        
        let wolfgangAmadeusMozart = Person(name: "Wolfgang Amadeus Mozart", image: imageMozart, occupation: "Composer",description: "Wolfgang Amadeus Mozart, baptised as Johannes Chrysostomus Wolfgangus Theophilus Mozart, was a prolific and influential composer of the classical era. Born in Salzburg, Mozart showed prodigious ability from his earliest childhood" )
        
         let albertEinstein = Person(name: "Albert Einstein", image: imageEinstein, occupation: "Theoretical physicist",description: "Albert Einstein was a German-born theoretical physicist who developed the theory of relativity, one of the two pillars of modern physics. His work is also known for its influence on the philosophy of science. " )
        
        let vincentVanGogh = Person(name: "Vincent van Gogh", image: imageVincentVanGogh, occupation: "Dutch painter",description: "Vincent Willem van Gogh was a Dutch Post-Impressionist painter who is among the most famous and influential figures in the history of Western art." )

        people += [nelsonMandela,ghandi,alanTuring,martinLutherKing,stephenHawking,margaretThatcher,wolfgangAmadeusMozart,albertEinstein,vincentVanGogh]
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PersonTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PersonTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        let person = people[indexPath.row]
        cell.name.text = person.name
        cell.occupation.text = person.occupation
        cell.photoImageView.image = person.image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          super.prepare(for: segue, sender: sender)
        guard let personDetailsViewController = segue.destination as? PersonDetailsViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let selectedPersonCell = sender as? PersonTableViewCell else {
            fatalError("Unexpected sender: \(String(describing: sender))")
            
        }
        
        guard let indexPath = tableView.indexPath(for: selectedPersonCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let selectedPerson = people[indexPath.row]
       personDetailsViewController.person = selectedPerson
    }
}
