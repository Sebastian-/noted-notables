//
//  AddNoteViewController.swift
//  noted-noteables
//
//  Created by Sebastian Murgu on 2020-03-02.
//  Copyright © 2020 Sebastian Murgu. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
    _ = navigationController?.popViewController(animated: true)
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
