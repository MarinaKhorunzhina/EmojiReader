//
//  NewTableViewController.swift
//  EmojiReader
//
//  Created by Marina on 1.03.22.
//

import UIKit

class NewTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTextFild: UITextField!
    
    
    @IBOutlet weak var nameTextFild: UITextField!
    
    
    @IBOutlet weak var descriptionTextFild: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    private func updateSaveButtonState (){
        let emojiText = emojiTextFild.text ?? ""
        let nameText = nameTextFild.text ?? ""
        let descriptionText = descriptionTextFild.text ?? ""
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI () {
        emojiTextFild.text = emoji.emoji
        nameTextFild.text = emoji.name
        descriptionTextFild.text = emoji.description
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI ()
        updateSaveButtonState()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {return}
        
        let emoji = emojiTextFild.text ?? ""
        let name = nameTextFild.text ?? ""
        let description = descriptionTextFild.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
    
}
