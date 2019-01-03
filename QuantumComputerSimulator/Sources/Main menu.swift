//
//  Main menu.swift
//  
//
//
//  Created by Ajay R. Rawat on 14/03/18.
//
//

import Foundation

import UIKit
import PlaygroundSupport

class MainMenu : UIViewController
{
    
    var Label : UILabel!
    var LearnButton : UIButton!
    var SimulatorButton : UIButton!
     var AppendixButton : UIButton!
     var AboutButton : UIButton!
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        Label = UILabel()
        Label.text =  "Quantum Computer Simulator"
        
        LearnButton = UIButton(type:  .system)
        LearnButton.setTitle("Learn about Quantum Computing", for: .normal)
        LearnButton.tintColor = .blue
        LearnButton.addTarget(self, action: #selector(tutorial), for: .touchUpInside)
        LearnButton.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        
        SimulatorButton = UIButton(type:  .system)
        SimulatorButton.setTitle("Simulate A Quantum Computer", for: .normal)
         SimulatorButton.titleLabel?.font = UIFont.systemFont(ofSize: 25)
      
        SimulatorButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
       SimulatorButton.tintColor = .purple
        
        AppendixButton = UIButton(type:  .system)
        AppendixButton.setTitle("Appendix", for: .normal)
        
       
        AppendixButton.addTarget(self, action: #selector(Appendd), for: .touchUpInside)
        
        AboutButton = UIButton(type:  .system)
        AboutButton.setTitle("About the Developor", for: .normal)
        
        
        AboutButton.addTarget(self, action: #selector(Aboutt), for: .touchUpInside)
        
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(Label)
        view.addSubview(LearnButton)
        view.addSubview(SimulatorButton)
         view.addSubview(AppendixButton)
         view.addSubview(AboutButton)
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        LearnButton.translatesAutoresizingMaskIntoConstraints = false
        SimulatorButton.translatesAutoresizingMaskIntoConstraints = false
           AppendixButton.translatesAutoresizingMaskIntoConstraints = false
            AboutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            
            [
                Label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                Label.topAnchor.constraint(equalTo: view.topAnchor , constant : 20)
                ,
                
                LearnButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant : 0),
                LearnButton.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant : -210)
                
                ,
                SimulatorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor ,constant : -120)
                
                ,
                SimulatorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor ,constant : 0)
                ,
               AppendixButton.bottomAnchor.constraint(equalTo: view.bottomAnchor ,constant : -150),
               AppendixButton.leadingAnchor.constraint(equalTo: view.leadingAnchor ,constant : 50),
               
               AboutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor ,constant : -150),
               AboutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor ,constant : 220),
                
                
            ]
            
        )
        
        
        self.view = view
        
        
    }
    
    @objc func dos() {
        
        CreateSimulatorPage()
        
    }
    @objc func tutorial()
    {
     Intro()
    }
    @objc func Appendd()
    {
        DisplayAppendix()
    }
    @objc func Aboutt()
    {
        DisplayAbout()
    }
}


public func DisplayMainMenu()
{
    PlaygroundPage.current.liveView = MainMenu()
}
