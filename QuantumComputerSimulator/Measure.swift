//
//  Measure.swift
//  
//
//  Created by Ajay R. Rawat on 28/03/18.
//


import UIKit
import PlaygroundSupport

class Measurement : UIViewController {
    
    static var Probabilities : [Double] = [0.2,0.4,0.4]
    static var num = 2
    func toBinary (n : Int) -> String
    {
        return " "
        
    }
    override func loadView() {
        
        // UI
        
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Measured State : "
        let TextView = UITextView(frame : CGRect(x: 20, y: 90, width: 500, height: 300) )
        
        label.font = UIFont.systemFont(ofSize: 25)
        
        
        view.addSubview(label)
        view.addSubview(TextView)
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Main Menu", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        // Layout
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        TextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
            
            ])
        
        
        let m = Double(Int(arc4random())%1000)/1000
        
        var current = 0.0
        var index = 0
        for p in Measurement.Probabilities
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(Measurement.num-s2.count > 0 )
            {
                for _ in 1...(Measurement.num-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            s1 = s1 + s2
            
            current = current + p
            if(m < (current))
            {
                label.text = label.text! + "|" +  s1 + ">"
                break
            }
            index = index + 1
        }
        
        
        self.view = view
    }
    
    @objc func dos()
    {
        DisplayMainMenu()
    }
}
public func MeasureQubits( p : [Double] , n : Int)
{
    Measurement.Probabilities = p
    Measurement.num = n
    PlaygroundPage.current.liveView = Measurement()
}
