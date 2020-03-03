//
//  NoteListViewController.swift
//  noted-noteables
//
//  Created by Sebastian Murgu on 2020-03-02.
//  Copyright © 2020 Sebastian Murgu. All rights reserved.
//

import UIKit
import CoreData

class NoteListViewController: UITableViewController {

  let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
  
  var notes = [Note]()

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return notes.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath)
    let note = notes[indexPath.row]

    // Configure the cell...
    cell.textLabel?.text = note.title

    return cell
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
