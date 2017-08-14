//
//  PopUpViewController.swift
//  seahunt
//
//  Created by Fowler, Elena on 8/1/17.
//  Copyright © 2017 Chen, Alan (DS). All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closePopUp(_ sender: UIButton) {
        
        self.view.removeFromSuperview()
    }
    
    
    @IBAction func closePopUpTaken(_ sender: UIButton) {
        self.view.removeFromSuperview()
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
