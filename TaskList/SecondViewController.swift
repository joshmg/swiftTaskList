import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var taskTitle: UITextField!;
    @IBOutlet var taskDescription: UITextField!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    @IBAction func addButtonClicked(sender: UIButton) {
        taskManager.addTask(taskTitle.text, taskDescription: taskDescription.text);
        taskTitle.text = "";
        taskDescription.text = "";
    }
    
}

