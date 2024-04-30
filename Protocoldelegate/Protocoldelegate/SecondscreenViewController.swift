//
//  SecondScreenViewController.swift
//  ProtocolDelegate
//
//  Created by Students on 26/04/24.
//

import UIKit


protocol SecondscreenViewController {
    
    func popvalus (value:String)

}
class SecondScreenViewController: UIViewController {
    var delegate:SecondscreenViewController?
    var firstFieldString: String = ""

    @IBOutlet weak var FirstField: UITextField!
        
    @IBOutlet weak var secondField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstField.text = firstFieldString
        
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SecondBTN(_ sender: Any) {
   
        self.delegate? .popvalus(value: secondField.text!)
        self.navigationController?.popViewController(animated: true)

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
