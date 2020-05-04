//
//  ViewController.swift
//  SearchApp
//
//  Created by Guy Macin on 04/05/2020.
//  Copyright © 2020 Guy Macin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var main_EDT_search: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        main_EDT_search.delegate = self
    }

    @IBAction func searchClicked(_ sender: Any) {
        var input: String = main_EDT_search.text ?? ""
        print(input)
    }
    

    
}

extension ViewController: UITextFieldDelegate {
    
        func search(input: String) {
            main_EDT_search.endEditing(true)
            print("\(input)")
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            var input = main_EDT_search.text ?? ""
            search(input: input)
            return true
        }
        
        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            if main_EDT_search.text != "" {
                return true
            } else {
                print("try again")
                return false
            }
            
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            main_EDT_search.text = ""
        }
        
    }

