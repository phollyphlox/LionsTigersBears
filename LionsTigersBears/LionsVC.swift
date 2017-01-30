//
//  LionsVC.swift
//  LionsTigersBears
//
//  Created by admin on 1/30/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class LionsVC: UIViewController {
    
    var myLions:[Lion] = []
    var curretIndex = 0
    
    
    @IBOutlet weak var lblLionName: UILabel!
    @IBOutlet weak var imgLion: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var myLion = Lion()
        myLion.name = "ALion"
        myLion.description = "A description of a Lion"
        myLion.image = UIImage(named: "LionsTigersBears.jpg")
        
        lblLionName.text = myLion.name
        imgLion.image = myLion.image
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNextLion(_ sender: UIButton) {
    }
    
  
    @IBAction func lblPreviousLion(_ sender: UIButton) {
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
