//
//  HomeViewController.swift
//  gittest
//
//  Created by Min Aung Hein on 12/30/20.
//  Copyright © 2020 Min Aung Hein. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showView(_ sender: UIButton) {
        
        let viewName = sender.titleLabel?.text ?? ""
        var sbName = ""
        switch (viewName){
        case "View MAH": sbName = "MAH"
        case "View ZYH": sbName = "ZYH"
        case "View HMP": sbName = "HMP"
        case "View MN": sbName = "MN"
        case "View NYH": sbName = "NYH"
        case "View PS": sbName = "PS"
        case "View TZ": sbName = "TZ"
        case "View TNO": sbName = "ViewTno"
        default:sbName = "MAH"
        }
        
        let sb = UIStoryboard(name: sbName, bundle: nil)
        if let vc = sb.instantiateInitialViewController() {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
