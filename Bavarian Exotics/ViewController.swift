//
//  ViewController.swift
//  Bavarian Exotics
//
//  Created by Maik Diebenkorn on 20.09.17.
//  Copyright © 2017 Maik Diebenkorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
            
    @IBOutlet weak var navigationbar: UINavigationBar!
    
    @IBAction func back(_ sender: Any)
    {
        
      if webView.canGoBack
      
      {
        
        webView.goBack()
        
      }
        
    }
    
    @IBAction func next(_ sender: Any)
    {
        
       if webView.canGoForward
       
       {
        
        webView.goForward()
       
        }
        
    }
    
    @IBAction func refresh(_ sender: Any)
    
    {
    
        webView.reload()
        
    }
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = URL(string: baseurl)
        if let unwrappedURL = url {
            
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                if error == nil {
                    
                    self.webView.loadRequest(request)
                    
                } else {
                    
                    print("ERROR: \(String(describing: error))")
                    
                }
                
            }
            
            task.resume()
            
        }
    }
    
    @IBAction func openfacebook(_ sender: Any)
    
    {
        
        let url = URL(string: facebookurl)
        if let unwrappedURL = url {
            
            let request = URLRequest(url: unwrappedURL)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                if error == nil {
                    
                    self.webView.loadRequest(request)
                    
                } else {
                    
                    print("ERROR: \(String(describing: error))")
                    
                }
                
            }
            
            task.resume()
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
