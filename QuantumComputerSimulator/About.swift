import Foundation

import UIKit
import PlaygroundSupport

class About : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Main Menu", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 520))
        TextView.font = UIFont.systemFont(ofSize: 22)
        TextView.isEditable = false
        TextView.text =
        """
         Hi,
        
         I'm Ajay R. Rawat. I love
         Computer Science, as much
         as I love Quantum Mecahnics.
         Quantum Computing is where
         these two topics meet.
        
        Quantum Computing is an
        amazing concept and I want
        to share this with the world.
        You can learn about Quantum
        Computing in this Playground
        and even Simulate  a
        Quantum Computer.
        
        I hope you like it!!😊
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 525),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        DisplayMainMenu()
    }
    
}
public func DisplayAbout()
{
    PlaygroundPage.current.liveView = About()
}
