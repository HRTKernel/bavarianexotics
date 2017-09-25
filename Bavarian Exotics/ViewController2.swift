//
//  ViewController2.swift
//  Bavarian Exotics
//
//  Created by Maik Diebenkorn on 23.09.17.
//  Copyright © 2017 Maik Diebenkorn. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        funktionenlabel.text = funktionen_de
        vistfacebooklabel.text = vistfacebook
        sendemaillabel.text = sendemail
        aboutlabel.text = abouttext
        developerfacebooklabel.text = developerfacebook_string
        developergithublabel.text = developergithub_string
        copyrightlabel.text = copyright
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    @IBAction func facebook(_ sender: Any)
    
    {
    
        if UIApplication.shared.canOpenURL(URL(string: openfacebook)!) {
            UIApplication.shared.open(URL(string: openfacebook)!, options: [:])
        } else {
            UIApplication.shared.open(URL(string: facebookurl)!, options: [:])
        }
        
    }
    
    @IBAction func email(_ sender: Any)
    
    {
    
        UIApplication.shared.open(URL(string: "mailto:" + sendemailadress)! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func about(_ sender: Any)
    
    {
    
        let alertController = UIAlertController(title: abouttext, message:
            developerinfo , preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func developerfacebook(_ sender: Any)
    
    {
        
        if UIApplication.shared.canOpenURL(URL(string: opendeveloperfacebook)!) {
            UIApplication.shared.open(URL(string: opendeveloperfacebook)!, options: [:])
        } else {
            UIApplication.shared.open(URL(string: devloperfacebookurl)!, options: [:])
        }
        
    }
    
    @IBAction func developergithub(_ sender: Any)
    
    {
        
        UIApplication.shared.open(URL(string: devlopergithub)!, options: [:])
        
    }
    
    @IBOutlet var funktionenlabel: UILabel!
    @IBOutlet var vistfacebooklabel: UILabel!
    @IBOutlet var sendemaillabel: UILabel!
    @IBOutlet var aboutlabel: UILabel!
    @IBOutlet var developerfacebooklabel: UILabel!
    @IBOutlet var developergithublabel: UILabel!
    @IBOutlet var copyrightlabel: UILabel!
    
    
}
