//
//  AddNoteViewController.swift
//  noted-noteables
//
//  Created by Sebastian Murgu on 2020-03-02.
//  Copyright © 2020 Sebastian Murgu. All rights reserved.
//

import UIKit
import CoreData

class AddNoteViewController: UIViewController {
  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var bodyTextView: UITextView!
  
  let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
    
  @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
    if (!(titleTextField.text?.isEmpty ?? true) && !(bodyTextView.text?.isEmpty ?? true)) {
      let note = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context) as! Note
      note.title = titleTextField.text
      note.body = bodyTextView.text
      note.createdOn = Date.init()
      self.saveNote()
      
      NotificationCenter.default.post(name: NSNotification.Name(rawValue: "loadNotes"), object: nil)
      _ = navigationController?.popViewController(animated: true)
    }
  }
  
  func saveNote() {
    
    do {
        try context.save()
    } catch {
        fatalError("Failure to save context: \(error)")
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
