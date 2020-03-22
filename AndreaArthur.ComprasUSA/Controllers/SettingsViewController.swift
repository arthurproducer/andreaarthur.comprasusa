//
//  SettingsViewController.swift
//  AndreaArthur.ComprasUSA
//
//  Created by Andrea Chuang on 22/03/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tfUSDValue: UITextField!
    @IBOutlet weak var tfIOFValue: UITextField!
    
    let config = Configuration.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Refresh"), object: nil, queue: nil) { (notification) in
                self.formatView()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    func formatView(){
        tfUSDValue.text = String(format:"%.2f", config.usdValue)
        tfIOFValue.text = String(format:"%.2f", config.iofValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeUSDValue(_ sender: UITextField) {
        config.usdValue = Double(sender.text!) ?? 0
    }
    
    @IBAction func changeIOFValue(_ sender: UITextField) {
        config.usdValue = Double(sender.text!) ?? 0
    }
    
    @IBAction func btAddState(_ sender: UIButton) {
    }
    
}
