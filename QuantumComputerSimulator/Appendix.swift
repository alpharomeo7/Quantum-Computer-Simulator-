import Foundation

import UIKit
import PlaygroundSupport

class Appendix : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Main Menu", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 525))
        TextView.font = UIFont.systemFont(ofSize: 15)
        TextView.text =
        """
        Appendix
        Y gate
        |0> =>  -i |1>
        |1> =>   i |0>
        
        Z gate
        |0> =>    1 |0>
        |1> =>   -1 |1>
        
        S gate
        |0> =>    1 |0>
        |1> =>    i |1>
        
        i = √-1
        
        HCH reprents :
        Hadamrd 1
        CNOT 0 1
        Hadamrd 1
        
        Oracles
        |00>            |01>            |10>
        
        S 0             S 0              S 1
        S 1
        HCH            HCH              HCH
        S 0
        S 1             S 0             S 1
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 530),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        DisplayMainMenu()
    }
    
}
public func DisplayAppendix()
{
    PlaygroundPage.current.liveView = Appendix()
}
