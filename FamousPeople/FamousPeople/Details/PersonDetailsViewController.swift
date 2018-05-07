//
//  PersonDetailsViewController.swift
//  FamousPeople
//
//  Created by Sashen Pillay on 5/7/18.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var occupation: UILabel!
    @IBOutlet weak var des: UILabel!
    var person : Person?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateUI()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func populateUI(){

        name.text = person?.name
        image.image = person?.image
        occupation.text = person?.occupation
        des.text = person?.description
        des.sizeToFit()
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
