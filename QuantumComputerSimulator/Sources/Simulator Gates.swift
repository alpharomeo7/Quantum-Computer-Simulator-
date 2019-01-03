
//
//  Simulator Gates.swift
//
//
//  Created by Ajay R. Rawat on 16/03/18.
//
//

import Foundation

import UIKit
import PlaygroundSupport


class SimulatorPage :  UIViewController
{
    var TitleLabel :  UILabel!
    var Indexes : [Int] = []
    var GatesAdded : [String] = []
    var RunButton  : UIButton!
    var RemoveButton : UIButton!
    var AddButton : UIButton!
    var Add : UIButton!
    var Gate1 : UILabel!
    var Gate2 : UILabel!
    var Gate3 : UILabel!
    
    var control = false
    var GatesView : UITextView!
    
    var SegmentsNot :UISegmentedControl!
    var SegmentsControlNot : UISegmentedControl!
    var SegmentsPhase : UISegmentedControl!
    
    let NOT = ["  X  " , "  Y  "  , "  Z  "  ]
    let ControlNot = ["  C-NOT "  ]
    let Phase = [" Hadamard " , " S ",]
    var CurrentGate : UILabel!
    var items = [""]
    
    var Qubit : UILabel!
    
    var Stepper : UIStepper!
    
    
    
    var QubitControl : UILabel!
    var StepperControl : UIStepper!
    var GreaterControl = true
    
    
    static  var n = 1
    
    override func loadView() {
        
        CurrentGate = UILabel()
        
        CurrentGate.text = " NO GATE Selected"
        
        let view = UIView()
        view.backgroundColor = .white
        
        Stepper = UIStepper()
        Qubit = UILabel()
        
        Qubit.text = " Qubit : "
        TitleLabel = UILabel()
        TitleLabel.text = " Insert Gates "
        
        RunButton = UIButton(type: .system)
        QubitControl = UILabel()
        QubitControl.text =  " Control Qubit : "
        Gate1 = UILabel()
        Gate2 = UILabel()
        Gate3 = UILabel()
        items = [" C-NOT " ]
        SegmentsControlNot = UISegmentedControl(items: items)
        
        
        
        items =  [" Hadamard " , " Pauli-S ", ]
        
        SegmentsPhase = UISegmentedControl(items: items)
        
        items = ["  X  " , "  Y  "  , "  Z  "  ]
        SegmentsNot = UISegmentedControl(items: items)
        
        SegmentsNot.addTarget(self, action: #selector(Segment1), for: .valueChanged)
        SegmentsControlNot.addTarget(self, action: #selector(Segment2), for: .valueChanged)
        SegmentsPhase.addTarget(self, action: #selector(Segment3), for: .valueChanged)
        
        
        
        
        Gate1.text = "NOT        :  "
        Gate2.text = "COTROL NOT :  "
        Gate3.text = "SINGLE     :  "
        
        Stepper.tintColor = .red
        Stepper.addTarget(self, action: #selector(Step), for: .valueChanged)
        Stepper.value = 0
        Stepper.minimumValue = 0
        Stepper.maximumValue = Double(SimulatorPage.n - 1)
        Stepper.stepValue = 1
        
        GatesView = UITextView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        
        GatesView.isEditable = false
        GatesView.text = "No Gates Added"
         GatesView.font = UIFont.systemFont(ofSize: 20)
        
        let scrollView = UIScrollView(frame : CGRect(x: 20, y: 400, width: 200, height: 200))
        
        scrollView.addSubview(GatesView)
        scrollView.flashScrollIndicators()
        scrollView.backgroundColor = .white
        
        
        AddButton = UIButton(type: .system)
        AddButton.setTitle("Add", for: .normal)
        AddButton.addTarget(self, action: #selector(addGate), for: .touchUpInside)
        
        RunButton.setTitle("Run", for: .normal)
        RunButton.addTarget(self, action: #selector(execute), for: .touchUpInside)
        
        
        RemoveButton  = UIButton(type: .system)
        RemoveButton.setTitle("remove Last Gate", for: .normal)
        RemoveButton.addTarget(self, action: #selector(Remove), for: .touchUpInside)
        
        StepperControl = UIStepper()
        StepperControl.tintColor = .red
        StepperControl.addTarget(self, action: #selector(StepControl), for: .valueChanged)
        StepperControl.value = 0
        StepperControl.minimumValue = 0
        StepperControl.maximumValue = Double(SimulatorPage.n-1)
        StepperControl.stepValue = 1
        
        view.addSubview(TitleLabel)
        view.addSubview(SegmentsNot)
        view.addSubview(scrollView)
        view.addSubview(SegmentsControlNot)
        view.addSubview(SegmentsPhase)
        view.addSubview(Gate1)
        view.addSubview(CurrentGate)
        view.addSubview(Gate2)
        view.addSubview(Gate3)
        view.addSubview(Qubit)
        view.addSubview(Stepper)
        
        TitleLabel.translatesAutoresizingMaskIntoConstraints = false
        SegmentsNot.translatesAutoresizingMaskIntoConstraints = false
        
        
        SegmentsPhase.translatesAutoresizingMaskIntoConstraints=false
        SegmentsControlNot.translatesAutoresizingMaskIntoConstraints=false
        Gate1.translatesAutoresizingMaskIntoConstraints = false
        Gate2.translatesAutoresizingMaskIntoConstraints = false
        Gate3.translatesAutoresizingMaskIntoConstraints = false
        CurrentGate.translatesAutoresizingMaskIntoConstraints = false
        Stepper.translatesAutoresizingMaskIntoConstraints = false
        Qubit.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                TitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                TitleLabel.topAnchor.constraint(equalTo: view.topAnchor , constant : 20),
                
                
                Gate1.topAnchor.constraint(equalTo: view.topAnchor , constant : 60),
                Gate2.topAnchor.constraint(equalTo: view.topAnchor , constant : 100),
                Gate3.topAnchor.constraint(equalTo: view.topAnchor , constant : 140),
                
                Gate1.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 5),
                Gate2.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 5),
                Gate3.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 5),
                SegmentsNot.topAnchor.constraint(equalTo: view.topAnchor , constant : 60),
                
                SegmentsNot.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 120),
                
                SegmentsControlNot.topAnchor.constraint(equalTo: view.topAnchor , constant : 100),
                
                SegmentsControlNot.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 125),
                
                SegmentsPhase.topAnchor.constraint(equalTo: view.topAnchor , constant : 140),
                
                SegmentsPhase.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 120),
                
                CurrentGate.topAnchor.constraint(equalTo: view.topAnchor , constant : 200),
                CurrentGate.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 20),
                
                Qubit.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
                
                
                Qubit.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 20),
                
                
                
                Stepper.topAnchor.constraint(equalTo: Qubit.topAnchor),
                Stepper.leadingAnchor.constraint(equalTo: Qubit.trailingAnchor, constant: 20)
            ])
        
        self.view = view
        Step()
        
    }
    @objc func Segment1() // NOT
    {
        SegmentsPhase.selectedSegmentIndex = UISegmentedControl.noSegment
        SegmentsControlNot.selectedSegmentIndex = UISegmentedControl.noSegment
        CurrentGate.text = NOT[SegmentsNot.selectedSegmentIndex]
        control = false
        QubitControl.removeFromSuperview()
        StepperControl.removeFromSuperview()
        
        view.addSubview(AddButton)
        
        AddButton.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([AddButton.topAnchor.constraint(equalTo: Qubit.topAnchor, constant: 40),
                             AddButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 20)])
        
        
        
        Step()
    }
    @objc func Segment2() // C NOT
    {
        SegmentsPhase.selectedSegmentIndex = UISegmentedControl.noSegment
        SegmentsNot.selectedSegmentIndex = UISegmentedControl.noSegment
        CurrentGate.text = ControlNot[SegmentsControlNot.selectedSegmentIndex]
        view.addSubview(StepperControl)
        view.addSubview(QubitControl)
        view.addSubview(AddButton)
        
        AddButton.translatesAutoresizingMaskIntoConstraints = false
        StepperControl.translatesAutoresizingMaskIntoConstraints = false
        
        QubitControl.translatesAutoresizingMaskIntoConstraints = false
        control = true
        view.addConstraints([
            QubitControl.topAnchor.constraint(equalTo: view.topAnchor, constant : 300),
            StepperControl.topAnchor.constraint(equalTo: view.topAnchor, constant : 300),
            QubitControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            StepperControl.leadingAnchor.constraint(equalTo: QubitControl.trailingAnchor, constant: 20),
            AddButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            AddButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 20)])
        
        Step()
        StepControl()
    }
    @objc func Segment3() // PHASE
    {
        SegmentsNot.selectedSegmentIndex = UISegmentedControl.noSegment
        SegmentsControlNot.selectedSegmentIndex = UISegmentedControl.noSegment
        CurrentGate.text = Phase[SegmentsPhase.selectedSegmentIndex]
        control = false
        QubitControl.removeFromSuperview()
        StepperControl.removeFromSuperview()
        
        view.addSubview(AddButton)
        
        AddButton.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([AddButton.topAnchor.constraint(equalTo: Qubit.topAnchor, constant: 40),
                             AddButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 20)])
        
        
        Step()
    }
    @objc func Step()
    {
        if(!control)
        {
            
            
            Qubit.text = "Qubit : \(Int(Stepper.value))"
            
        }
        else
        {
            Qubit.text = "Control Qubit : \(Int(Stepper.value))"
        }
        
    }
    @objc func StepControl()
    {
        
        QubitControl.text = "Target Qubitt : \(Int(StepperControl.value))"
    }
    
    @objc func addGate()
    {
        if(control)
        {
            if StepperControl.value != Stepper.value
            {
                GatesAdded.append(CurrentGate.text!.trimmingCharacters(in: NSCharacterSet.whitespaces)  )
                Indexes.append(Int(Stepper.value))
                Indexes.append(Int(StepperControl.value))
            }
            
        }
        else {
            GatesAdded.append(CurrentGate.text!.trimmingCharacters(in: NSCharacterSet.whitespaces)    )
            Indexes.append(Int(Stepper.value))
        }
        
        
        GatesView.text = ""
        var i = 0
        for gate in GatesAdded
        {
            GatesView.text = GatesView.text  + "\n"
            if(gate == "C-NOT")
            {
                GatesView.text = GatesView.text  + gate + " \(Indexes[i]) " + " \(Indexes[i+1])"
                i = i + 2
                
            }
            else{
                
                
                GatesView.text = GatesView.text  + gate + " \(Indexes[i])"
                i = i + 1
            }
            
        }
        view.addSubview(RemoveButton)
        view.addSubview(RunButton)
        RemoveButton.translatesAutoresizingMaskIntoConstraints = false
        
        RunButton.translatesAutoresizingMaskIntoConstraints=false
        view.addConstraints([RemoveButton.topAnchor.constraint(equalTo: AddButton.topAnchor, constant: 0),
                             RemoveButton.leadingAnchor.constraint(equalTo: AddButton.trailingAnchor, constant: 20)
            ,RunButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
             RunButton.leadingAnchor.constraint(equalTo: view.leadingAnchor ,  constant : 250),
             ])
        
    }
    @objc func Remove()
    {
        GatesView.text = " "
        
        if(GatesAdded.last == "C-NOT")
        {
            GatesAdded.removeLast()
            Indexes.removeLast()
            Indexes.removeLast()
        }
        else
        {
            GatesAdded.removeLast()
            Indexes.removeLast()
        }
        var i = 0
        for gate in GatesAdded
        {
            GatesView.text = GatesView.text  + "\n"
            GatesView.text = GatesView.text  + gate + "  \(Indexes[i])"
            i = i + 1
        }
        
        
        if(GatesAdded.isEmpty)
        {
            RemoveButton.removeFromSuperview()
            GatesView.text = " "
            RunButton.removeFromSuperview()
        }
    }
    @objc func execute()
    {
        Execute(gates: GatesAdded , indexes: Indexes , N: SimulatorPage.n)
    }
    
    
    
    
}




public func Insert(n :Int)
{
    SimulatorPage.n = n
    PlaygroundPage.current.liveView = SimulatorPage()
}

