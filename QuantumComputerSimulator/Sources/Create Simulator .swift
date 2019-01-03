import Foundation
import UIKit
import PlaygroundSupport

class CreateSimulator : UIViewController
{
    var Label  : UILabel!
    var Stepper : UIStepper!
    var CreateButton : UIButton!
    
    
    override func loadView() {
        
        
        let view = UIView()
        view.backgroundColor = .white
        
        Label = UILabel()
        
        Label.font = UIFont.systemFont(ofSize: 30)
        
        Stepper = UIStepper()
        Stepper.tintColor = .red
        Stepper.addTarget(self, action: #selector(updateView), for: .valueChanged)
        Stepper.value = 1
        Stepper.minimumValue = 1
        Stepper.maximumValue = 10
        Stepper.stepValue = 1
        
        CreateButton = UIButton(type: .system)
        CreateButton.setTitle("Create", for: .normal)
        CreateButton.tintColor = .red
        CreateButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        CreateButton.titleLabel?.font = UIFont.systemFont(ofSize: 60)
        
        view.addSubview(Label)
        view.addSubview(CreateButton)
        view.addSubview(Stepper)
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        Stepper.translatesAutoresizingMaskIntoConstraints = false
        CreateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            Label.topAnchor.constraint(equalTo: view.topAnchor, constant : 20 ),
            Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant : 40),
            
            
            Stepper.centerYAnchor.constraint(equalTo: Label.centerYAnchor),
            Stepper.leadingAnchor.constraint(equalTo: Label.trailingAnchor, constant :20),
            
            CreateButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            CreateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
            
            
            ])
        
        self.view = view
        updateView()
        
    }
    
    @objc func updateView()
    {
        Label.text = "No of Qubits : \(Int(Stepper.value))"
    }
    
    @objc func dos()
        
    {
        Insert(n : Int(Stepper.value))
    }
}

public func CreateSimulatorPage()
{
    PlaygroundPage.current.liveView = CreateSimulator()
    
}

