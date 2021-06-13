//
//  ViewController.swift
//  test2
//
//  Created by Maxim on 13.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testToSendField: UITextField!
    @IBAction func showMe(_ sender: Any) {
        NSLog("User wrote: %@", testToSendField.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageController = segue.destination as! MessageViewController
        messageController.messageData = testToSendField.text
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}

