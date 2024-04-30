//
//  FirstScreenViewController.swift
//  ProtocolDelegate
//
//  Created by Students on 26/04/24.
//

import UIKit

class FirstScreenViewController: UIViewController, SecondscreenViewController {
    
    
    func popvalus(value: String) {
        SecondField.text = value
    }
    
    

    @IBOutlet weak var FirstField: UITextField!
    @IBOutlet weak var SecondField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func firstButtonPressed(_ sender: Any) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "secondScreenViewController") as? SecondScreenViewController
        controller?.firstFieldString = self.FirstField.text!
        controller?.delegate = self
//        controller?.firstFieldString = self.SecondField.text!
//        controller?.delegate = self
        self.navigationController?.pushViewController(controller!, animated: true)
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
