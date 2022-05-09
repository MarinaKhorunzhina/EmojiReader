//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Marina on 27.02.22.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
}
