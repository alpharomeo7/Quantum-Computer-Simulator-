import Foundation


//
//  C-Not.swift
//
//
//  Created by Ajay R. Rawat on 29/03/18.
//

import UIKit
import PlaygroundSupport

class CNot: UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Use Simulator", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 18)
                TextView.isEditable = false
        TextView.text =
        """
        C-Not Gate
        
        The C-NOT gate acts on two Qubits
        A Control Qubit and Target Qubit.
        
        It applies an X Gate on the Target Qubit
        if the Control Qubit is 1.
        
        For Example
        If the first qubit is the Control and
        the the zeroth qubit is the Target,
        
        then CNOT would swap the state of
        |10> and 11> and the rest would
        reamain unaffected.
        
        Let us use the Simulator to apply
        Hadamard on zeroth Qubit
        and C-Not
        with zeroth Qubit as control and
        first Qubit as target
        
        
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        ExecuteCnot()
    }
    
}
public func CNot_Gate()
{
    PlaygroundPage.current.liveView = CNot()
}

//
//  Conclusion.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//

import UIKit
import PlaygroundSupport

class Conclusion: UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Main Menu", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 15)
                TextView.isEditable = false
        TextView.text =
        """
        Thank You !! 😄
        
        Thank you for using this Tutorial.
        
        Quantum Computers have a lot of applications.
        The power of Quantum Computers comes from
        its ability to exist in Superpositions.
        
        Thus they can be used to execute a lot of
        complex algorithms in resaonable time
        that would take a classical computer a lot
        more time.
        
        For Example, to factorize a 2048
        digits number, a classical computer
        would literally take millions of years,
        but a Quantum Computer , just 100 seconds!
        😮😮
        
        Use the Simulator to experiment with a
        Quantum Computer and continue to
        learn more about Quantum Computng.
        
        
        Thank you and Have Fun!! 😊😊
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        DisplayMainMenu()
    }
    
}
public func Display_Conclusion()
{
    PlaygroundPage.current.liveView = Conclusion()
}


//
//  Grover 11.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//





import Foundation
import UIKit
import PlaygroundSupport

class Grover_11: UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Use Simulator", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 15)
                TextView.isEditable = false
        TextView.text =
        """
        Grover's Algorithm
        
        After the Oracle Function, we apply an
        Amplitude Amplification function that
        increases the probability of finding
        the marked Qubit state.
        
        The following gates are be applied after
        the Oracle function : 
        
        Hadamard 0
        Hadamard 1
        X 0
        X 1
        
        Hadamard 1
        C-NOT 0 1
        Hadamard 1
        
        X 0
        X 1
        Hadamard 0
        Hadamard 1
        
        Use the Simulator to execute Grover's
        Algorithm for |11> state
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        Grover_Result()
    }
    
}
public func Grover_11_Gate()
{
    PlaygroundPage.current.liveView = Grover_11()
}

//
//  Grover_1.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//

import Foundation
import UIKit
import PlaygroundSupport

class Grover_1: UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 15)
                TextView.isEditable = false
        TextView.text =
        """
        Grover's Algorithm
        
        Grover's Algorithm is a Quantum Algorithm that is
        used to search an element in an unsorted list.
        
        It works on a Quantum Computer which is in
        all the possible superpositions of the states.
        i.e A Hadamard gate is applied on all the Qubits.
        
        It is a two-step process:
        
        First Step :
        
        Apply gates to get a state where the index to
        be searcehd has a negative sign.
        
        Second Step:
        
        Apply a global operation to amplify the
        probability of the "marked" state.
        
        
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        GroverIntroIntro()
    }
    
}
public func Grover_1_Gate()
{
    PlaygroundPage.current.liveView = Grover_1()
}

import UIKit
import PlaygroundSupport

class GroverIntros : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Use Simulator", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 500))
        TextView.font = UIFont.systemFont(ofSize: 18)
                TextView.isEditable = false
        TextView.text =
        """
        Grover's Algorithm :  Oracle
        
        The Oracle Function works on a
        superposition of all possible
        states i.e a Hadamard Gate is
        applied on all of the Qubits.
        
        The Oracle Function inserts a negative
        sign on a specific state. For example:
        
        Oracle for |11>
        
        We first apply Hadamard Gates
        
        Hadamard 0
        Hadamard 0
        
        and then, 

        Hadamard 1
        C-NOT 0 1
        Hadamard 1
        
        Let's use the Simulator to try this.
        
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
        Grover_Oracle()
        
    }
    
}
public func GroverIntroIntro()
{
    PlaygroundPage.current.liveView = GroverIntros()
}

//
//  GroverOracle.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//



import Foundation

import UIKit
import PlaygroundSupport


class GroverOracle : UIViewController
{
    static var Gates : [String] = ["Hadamard","Hadamard", "Hadamard","C-NOT","Hadamard"]
    static var Indexes  : [Int] =  [0,1,1,0,1,1]
    static var n = 2
    static var Prob : [Double] = []
    var TextView : UITextView!
    override func loadView() {
        
        TextView = UITextView(frame : CGRect(x: 0, y: 0, width: 500, height: 500) )
        TextView.font = UIFont.systemFont(ofSize: 22)
                TextView.isEditable = false
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        
        TextView.text = "Grover's Algoithm (Oracle)\n"
        
        
        
        TextView.text = TextView.text  + "\n"
        TextView.text = TextView.text  + "\n"
        
        TextView.text =  TextView.text + "Index " + "\t \t " + " State " + " \t \t" + " Probabilty" + " \t \t " + "\n"
        
        let qc = QuantumComputer(size : GroverOracle.n)
        
        var i = 0
        
        for gate in GroverOracle.Gates
        {
            switch gate {
            case "X":
                qc.X(qubit: GroverOracle.Indexes[i])
            case "Hadamard" :
                qc.Hadamard(qubit: GroverOracle.Indexes[i])
            case "C-NOT":
                let j = i + 1
                qc.ControlNot(control: GroverOracle.Indexes[i], target: GroverOracle.Indexes[j])
                i = i+1
                
            case "Y":
                qc.Y(qubit: GroverOracle.Indexes[i])
            case "S":
                qc.SGate(qubit: GroverOracle.Indexes[i])
            case "Z" :
                qc.Z(qubit: GroverOracle.Indexes[i])
                
            default: break
                
            }
            i = i+1
        }
        let ScrollView = UIScrollView()
        
        ScrollView.addSubview(TextView)
        ScrollView.flashScrollIndicators()
        ScrollView.backgroundColor = .white
        
        ScrollView.addSubview(NextButton)
        
        qc.combine()
        var index = 0
        var str = ""
        for p in qc.Proabability
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(GroverOracle.n-s2.count > 0 )
            {
                for _ in 1...(GroverOracle.n-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            if(index == 0 || index == 2 || index == 1)
            {
                str = " "
            }
            else
            {
                str = ""
            }
            s1 = s1 + s2
            TextView.text = TextView.text  + "|" + s1 + ">"  + str   + "\t \t  \t" + qc.CombinedRegister[index] + str + "\t \t" + "\t \t " + "\(p)" + " \n \n"
            index  = index + 1
            
        }
        
        ScrollView.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        ScrollView.addConstraints([ NextButton.topAnchor.constraint(equalTo: ScrollView.topAnchor, constant: 500),
                                    NextButton.centerXAnchor.constraint(equalTo: ScrollView.centerXAnchor, constant: 0)])
        
        
        TextView.text = TextView.text +
        """
        \n
        The Oracle Function inserts a negative
        on the |11> state
        """
        
        self.view = ScrollView
        GroverOracle.Prob = qc.Proabability
    }
    
    
    @objc func dos()
    {
        Grover_11_Gate()
    }
}

public func Grover_Oracle()
{
    
    PlaygroundPage.current.liveView =  GroverOracle()
}


//
//  GroverResult.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//

import Foundation

import UIKit
import PlaygroundSupport


class ResultGrover : UIViewController
{
    static var Gates : [String] = ["Hadamard","Hadamard", "Hadamard","C-NOT","Hadamard", "Hadamard","Hadamard","X","X"
        ,"Hadamard","Hadamard", "Hadamard","C-NOT","Hadamard","X","X"
        , "Hadamard","Hadamard"]
    static var Indexes  : [Int] =  [0,1,1,0,1,1,0,1,0,1,0,1,1,0,1,1,0,1,0,1]
    static var n = 2
    static var Prob : [Double] = []
    var TextView : UITextView!
    override func loadView() {
        
        TextView = UITextView(frame : CGRect(x: 0, y: 0, width: 500, height: 500) )
        TextView.font = UIFont.systemFont(ofSize: 22)
        let NextButton = UIButton(type: .system)
                TextView.isEditable = false
        NextButton.setTitle("Measure", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        
        TextView.text = "Grover's Algoithm \n"
        
        
        
        TextView.text = TextView.text  + "\n"
        TextView.text = TextView.text  + "\n"
        
        TextView.text =  TextView.text + "Index " + "\t \t " + " State " + " \t \t" + " Probabilty" + " \t \t " + "\n"
        
        let qc = QuantumComputer(size : ResultGrover.n)
        
        var i = 0
        
        for gate in ResultGrover.Gates
        {
            switch gate {
            case "X":
                qc.X(qubit: ResultGrover.Indexes[i])
            case "Hadamard" :
                qc.Hadamard(qubit: ResultGrover.Indexes[i])
            case "C-NOT":
                let j = i + 1
                qc.ControlNot(control: ResultGrover.Indexes[i], target: ResultGrover.Indexes[j])
                i = i+1
                
            case "Y":
                qc.Y(qubit: ResultGrover.Indexes[i])
            case "S":
                qc.SGate(qubit: ResultGrover.Indexes[i])
            case "Z" :
                qc.Z(qubit: ResultGrover.Indexes[i])
                
            default: break
                
            }
            i = i+1
        }
        let ScrollView = UIScrollView()
        
        ScrollView.addSubview(TextView)
        ScrollView.flashScrollIndicators()
        ScrollView.backgroundColor = .white
        
        ScrollView.addSubview(NextButton)
        
        qc.combine()
        var index = 0
        var str = ""
        for p in qc.Proabability
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(ResultGrover.n-s2.count > 0 )
            {
                for _ in 1...(ResultGrover.n-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            if(index == 0 || index == 2 || index == 1)
            {
                str = " "
            }
            else
            {
                str = ""
            }
            s1 = s1 + s2
            TextView.text = TextView.text  + "|" + s1 + ">"  + str   + "\t \t  \t" + qc.CombinedRegister[index] + str + "\t \t" + "\t \t " + "\(p)" + " \n \n"
            index  = index + 1
            
        }
        
        ScrollView.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        ScrollView.addConstraints([ NextButton.topAnchor.constraint(equalTo: ScrollView.topAnchor, constant: 500),
                                    NextButton.centerXAnchor.constraint(equalTo: ScrollView.centerXAnchor, constant: 0)])
        
        
        TextView.text = TextView.text +
        """
        \n
        The |11> state is Amplified to have
        100% probability
        """
        
        self.view = ScrollView
        ResultGrover.Prob = qc.Proabability
    }
    
    
    @objc func dos()
    {
        MeasureGrover( p : ResultGrover.Prob , n : ResultGrover.n)
    }
}

public func Grover_Result()
{
    
    PlaygroundPage.current.liveView =  ResultGrover()
}


//
//  Hadamard.swift
//
//
//  Created by Ajay R. Rawat on 29/03/18.
//

import UIKit
import PlaygroundSupport

class Hadamard: UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Use Simulator", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 18)
        TextView.text =
        """
        Hadamard Gate
        
        The Hadamard Gate is used to create and
        remove superpositions
        
        It acts as follows :
        
        |0>  => 1/√2 |0>  + 1/√2 |1>
        
        |1>  => 1/√2 |0>  - 1/√2 |1>
        
        Lets Use a Simulator for an example
        
        
        We would apply a X gate on the both
        Qubits and a Hadamard Gate on
        the zeroth Qubit
        
        The inital state is 1|00>
        
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        ExecuteHadamard()
    }
    
}
public func Hadamard_Gate()
{
    PlaygroundPage.current.liveView = Hadamard()
}

//
//  Introductoion.swift
//
//
//  Created by Ajay R. Rawat on 29/03/18.
//

import UIKit
import PlaygroundSupport

class Introduction : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 400))
        TextView.font = UIFont.systemFont(ofSize: 20)
        TextView.text =
        """
        
        Welcome to the Quantum World 🤗
        
        In this tutorial, you will learn about
        quantum computers and the basic
        operations on them.
        
        Let us start with the basic building
        block of a Quantum Computer : Qubit
        
        
        
        
        Click Next to Continue
        
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        QubitIntro()
    }
    
}
public func Intro()
{
    PlaygroundPage.current.liveView = Introduction()
}


//
//  Measure C-not.swift
//
//
//  Created by Ajay R. Rawat on 30/03/18.
//

import Foundation
import UIKit
import PlaygroundSupport

class MeasurementCNot : UIViewController {
    
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
        TextView.font = UIFont.systemFont(ofSize: 20)
        TextView.text =
        """
        On measuring the Qubits:
        This Entangled state Collapses to either
        00 or 11.
        
        Either way, the individual states of both
        the Qubits is the same. i.e. they are
        Entangled. By knowing the state of one,
        you would instantaneously know the state
        of the other  Qubit.
        
        
        """
        
        view.addSubview(label)
        view.addSubview(TextView)
        
        let NextButton = UIButton(type: .system)
                TextView.isEditable = false
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        // Layout
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        TextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
            
            ])
        
        
        let m = Double(Int(arc4random())%1000)/1000
        
        var current = 0.0
        var index = 0
        for p in MeasurementCNot.Probabilities
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(MeasurementCNot.num-s2.count > 0 )
            {
                for _ in 1...(MeasurementCNot.num-s2.count)
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
        Grover_1_Gate()
    }
}
public func MeasureCNot( p : [Double] , n : Int)
{
    MeasurementCNot.Probabilities = p
    MeasurementCNot.num = n
    PlaygroundPage.current.liveView = MeasurementCNot()
}


import UIKit
import PlaygroundSupport

class MeasurementHadamard : UIViewController {
    
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
        TextView.font = UIFont.systemFont(ofSize: 20)
        TextView.text =
        """
        On measuring the Qubits
        The state Collapes to either
        10 or 11
        
        """
                TextView.isEditable = false
        view.addSubview(label)
        view.addSubview(TextView)
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        // Layout
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        TextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
            
            ])
        
        
        let m = Double(Int(arc4random())%1000)/1000
        
        var current = 0.0
        var index = 0
        for p in MeasurementHadamard.Probabilities
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(MeasurementCNot.num-s2.count > 0 )
            {
                for _ in 1...(MeasurementCNot.num-s2.count)
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
        CNot_Gate()
    }
}
public func MeasureHadamard( p : [Double] , n : Int)
{
    MeasurementHadamard.Probabilities = p
    MeasurementHadamard.num = n
    PlaygroundPage.current.liveView = MeasurementHadamard()
}

//
//  MeasureGrover.swift
//
//
//  Created by Ajay R. Rawat on 31/03/18.
//

import Foundation
import UIKit
import PlaygroundSupport

class MeasurementGrover : UIViewController {
    
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
        label.font = UIFont.systemFont(ofSize: 20)
        
        label.text = "Measured State : "
        let TextView = UITextView(frame : CGRect(x: 20, y: 90, width: 500, height: 300) )
        TextView.font = UIFont.systemFont(ofSize: 20)
        TextView.text =
        """
        
        Grover's Algorithm amplifies
        the sate marked by the
        Oracle Function
        
        On measuring the Qubits, it is
        guaranteed that the measured
        state will be |11>.
        
        
        
        
        
        There are Oracle Functions
        for other states in the appendix
        
        
        """
        
        view.addSubview(label)
        view.addSubview(TextView)
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
                TextView.isEditable = false
        // Layout
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        TextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
            
            ])
        
        
        let m = Double(Int(arc4random())%1000)/1000
        
        var current = 0.0
        var index = 0
        for p in MeasurementGrover.Probabilities
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(MeasurementGrover.num-s2.count > 0 )
            {
                for _ in 1...(MeasurementGrover.num-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            
            
            s1 = s1 + s2
            
            current = current + p
            if(m < (current))
            {
                label.text = label.text! +  "|" +  s1 + ">"
                break
            }
            index = index + 1
        }
        
        
        self.view = view
    }
    
    @objc func dos()
    {
        Display_Conclusion()
    }
}
public func MeasureGrover( p : [Double] , n : Int)
{
    MeasurementGrover.Probabilities = p
    MeasurementGrover.num = n
    PlaygroundPage.current.liveView = MeasurementGrover()
}

import UIKit
import PlaygroundSupport

class MultiQubits : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 16)
        TextView.text =
        """
        Multiple Qubits
        
        For a combination of Qubits, we multiplying
        their corresponding states
        
        For example,
        Let the qubit at zeroth place be in
        0 |0> + 1 |1>
        
        and the first place be in
        1/√2 |0> + 1/√2 |1>
        
        Then the combined state is
        
        0 |00>  + 1/√2 |01> + 0 |10> + 1/√2 |11>
        
        Notice that a Quantum Computer of
        'n' Qubits can store 2^n classical bits
        at the same time.
        
        So to Simulate 40 qubits, we need
        2^40 classical bits
        That's more than 128 GB of Memory!!
        😮😮
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 510),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        X_Gate()
    }
    
}
public func MultiQubitIntro()
{
    PlaygroundPage.current.liveView = MultiQubits()
}

//
//  Qubit.swift
//
//
//  Created by Ajay R. Rawat on 29/03/18.
//

import UIKit
import PlaygroundSupport

class Qubits : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 15)
        TextView.text =
        """
        Qubit
        
        A classical bit can be in either 1 or 0 state, but
        
        a Quantum bit or Qubit can be in both, 1 and 0
        states simultaneously! ( called Superposition).
        
        The states can be in any proportion, negative or
        Complex, as long as sum of squares of
        all the states equal 1.
        
        |0> represents the 0 state.
        |1> represents the 1 state.
        
        For example the qubit might be in a state
        
        1/2 |0> - (√3)/2 |1>
        
        Since (1/2)² + (√3/4)² = 1
        
        But when we try to measure a Qubit, it
        collapses into one of the state with
        probability equal to square of that state.
        
        In our case
        Probability of measuring 0 is 1/4 and 1 is 3/4
        
        All the Qubits in the Simulator are initially
        in the |0> state
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        MultiQubitIntro()
    }
    
}
public func QubitIntro()
{
    PlaygroundPage.current.liveView = Qubits()
}

//
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


class ResultPageHadamard : UIViewController
{
    static var Gates : [String] = ["X","X","Hadamard",]
    static var Indexes  : [Int] =  [0,1,0]
    static var n = 2
    static var Prob : [Double] = []
    var TextView : UITextView!
    override func loadView() {
        
        TextView = UITextView(frame : CGRect(x: 0, y: 0, width: 500, height: 500) )
        TextView.font = UIFont.systemFont(ofSize: 18)
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Measure", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
                 TextView.isEditable = false
        TextView.text = " Gates Applied \n"
        
        var ind = 0
        for gate in ResultPageHadamard.Gates
        {
            TextView.text =  TextView.text +  gate + " \(ResultPageHadamard.Indexes[ind])"
            if(gate == "C-NOT")
            {
                TextView.text = TextView.text + " \(ResultPageHadamard.Indexes[ind])"
                ind = ind  + 1
            }
            ind = ind  + 1
            TextView.text = TextView.text  + "\n \n"
        }
        TextView.text = TextView.text  + "\n"
        TextView.text = TextView.text  + "\n"
        
        TextView.text =  TextView.text + "Index " + "\t \t " + " State " + " \t \t \t" + " Probabilty" + " \t \t " + "\n"
        
        let qc = QuantumComputer(size : ResultPageHadamard.n)
        
        var i = 0
        
        for gate in ResultPageHadamard.Gates
        {
            switch gate {
            case "X":
                qc.X(qubit: ResultPageHadamard.Indexes[i])
            case "Hadamard" :
                qc.Hadamard(qubit: ResultPageHadamard.Indexes[i])
            case "C-NOT":
                let j = i + 1
                qc.ControlNot(control: ResultPageHadamard.Indexes[i], target: ResultPageHadamard.Indexes[j])
                i = i+1
                
            case "Y":
                qc.Y(qubit: ResultPageHadamard.Indexes[i])
            case "S":
                qc.SGate(qubit: ResultPageHadamard.Indexes[i])
            case "Z" :
                qc.Z(qubit: ResultPageHadamard.Indexes[i])
                
            default: break
                
            }
            i = i+1
        }
        let ScrollView = UIScrollView()
        
        ScrollView.addSubview(TextView)
        ScrollView.flashScrollIndicators()
        ScrollView.backgroundColor = .white
        
        ScrollView.addSubview(NextButton)
        
        qc.combine()
        var index = 0
        var str = ""
        for p in qc.Proabability
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(ResultPageHadamard.n-s2.count > 0 )
            {
                for _ in 1...(ResultPageHadamard.n-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            if(index == 0 || index == 1)
            {
                str = "          "
            }
            else
            {
                str = ""
            }
            s1 = s1 + s2
            TextView.text = TextView.text + "|" +  s1 + ">" + "\t \t  \t" + qc.CombinedRegister[index] + str + "\t \t" + "\t \t " + "\(p)" + " \n \n"
            index  = index + 1
            
        }
        
        ScrollView.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        ScrollView.addConstraints([ NextButton.topAnchor.constraint(equalTo: ScrollView.topAnchor, constant: 500),
                                    NextButton.centerXAnchor.constraint(equalTo: ScrollView.centerXAnchor, constant: 0)])
        
        
        TextView.text = TextView.text +
        """
        \n
        These are the States after The Gates
        are applied
        
        Press Measeue
        """
        
        self.view = ScrollView
        ResultPageHadamard.Prob = qc.Proabability
    }
    
    
    @objc func dos()
    {
        MeasureHadamard( p : ResultPageHadamard.Prob , n : ResultPageHadamard.n)
    }
}

public func ExecuteHadamard()
{
    
    PlaygroundPage.current.liveView =  ResultPageHadamard()
}


//
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


class ResultPageCnot : UIViewController
{
    static var Gates : [String] = ["Hadamard","C-NOT",]
    static var Indexes  : [Int] =  [0,0,1]
    static var n = 2
    static var Prob : [Double] = []
    var TextView : UITextView!
    override func loadView() {
        
        TextView = UITextView(frame : CGRect(x: 0, y: 0, width: 500, height: 500) )
        TextView.font = UIFont.systemFont(ofSize: 15)
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Measure", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        
        TextView.text = " Gates Applied \n"
        
        var ind = 0
        for gate in ResultPageCnot.Gates
        {
            TextView.text =  TextView.text +  gate + " \(ResultPageCnot.Indexes[ind])"
            if(gate == "C-NOT")
            {
                ind = ind  + 1
                TextView.text = TextView.text + " \(ResultPageCnot.Indexes[ind])"
                
            }
            ind = ind  + 1
            TextView.text = TextView.text  + "\n \n"
        }
        TextView.text = TextView.text  + "\n"
        TextView.text = TextView.text  + "\n"
        
        TextView.text =  TextView.text + "Index " + "\t \t " + " State " + " \t \t" + " \t \t \t Probabilty" + " \t \t " + "\n"
        
        let qc = QuantumComputer(size : ResultPageCnot.n)
        
        var i = 0
        
        for gate in ResultPageCnot.Gates
        {
            switch gate {
            case "X":
                qc.X(qubit: ResultPageCnot.Indexes[i])
            case "Cnot" :
                qc.Hadamard(qubit: ResultPageCnot.Indexes[i])
            case "C-NOT":
                let j = i + 1
                qc.ControlNot(control: ResultPageCnot.Indexes[i], target: ResultPageCnot.Indexes[j])
                
                i = i+1
            case "Hadamard" :
                qc.Hadamard(qubit: ResultPageCnot.Indexes[i])
            case "Y":
                qc.Y(qubit: ResultPageCnot.Indexes[i])
            case "S":
                qc.SGate(qubit: ResultPageCnot.Indexes[i])
            case "Z" :
                qc.Z(qubit: ResultPageCnot.Indexes[i])
                
            default: break
                
            }
            i = i+1
        }
        let ScrollView = UIScrollView()
        
        ScrollView.addSubview(TextView)
        ScrollView.flashScrollIndicators()
        ScrollView.backgroundColor = .white
        
        ScrollView.addSubview(NextButton)
        
        qc.combine()
        var index = 0
        var str = ""
        for p in qc.Proabability
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(ResultPageCnot.n-s2.count > 0 )
            {
                for _ in 1...(ResultPageCnot.n-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            
            if(index == 1 || index == 2)
            {
                str = "          "
            }
            else
            {
                str = ""
            }
            
            s1 = s1 + s2
            TextView.text = TextView.text + "|" +  s1 + ">" + "\t \t  \t" + qc.CombinedRegister[index] + str  +  "\t \t" + "\t \t " + "\(p)" + " \n \n"
            index  = index + 1
            
        }
        
        ScrollView.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        ScrollView.addConstraints([ NextButton.topAnchor.constraint(equalTo: ScrollView.topAnchor, constant: 500),
                                    NextButton.centerXAnchor.constraint(equalTo: ScrollView.centerXAnchor, constant: 0)])
        
        
        TextView.text = TextView.text +
        """
        \n
        The above state is called an Entangled state
        because it cannot be separated into individual
        Qubit states. Both the qubits are in superposition
        of 1 and 0, but on measuring, Qubits will
        collapse to |00> or |11>
        """
                 TextView.isEditable = false
        self.view = ScrollView
        ResultPageCnot.Prob = qc.Proabability
    }
    
    
    @objc func dos()
    {
        MeasureCNot( p : ResultPageCnot.Prob , n : ResultPageCnot.n)
    }
}

public func ExecuteCnot()
{
    
    PlaygroundPage.current.liveView =  ResultPageCnot()
}
//
//  X GAte.swift
//
//
//  Created by Ajay R. Rawat on 29/03/18.
//

import UIKit
import PlaygroundSupport

class X : UIViewController {
    
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let NextButton = UIButton(type: .system)
        
        NextButton.setTitle("Next", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        let TextView = UITextView(frame : CGRect(x: 20, y: 20, width: 500, height: 480))
        TextView.font = UIFont.systemFont(ofSize: 18)
        TextView.text =
        """
        X Gate
        
        The X gate is analogous to the Classical
        Not Gate
        
        It "swaps" the  0 and 1 states of a Qubit
        
        For example
        
        Let a Qubit be in a state
        
        0 |0>   - 1 |1>
        
        Applying a X  gate would change it to
        
        -1 |0>  + 0 |1>
        
        
        Side note: There are also Y and Z gates
        (see: Appendix)
        """
        TextView.isEditable = false
        
        
        view.addSubview(TextView)
        view.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            NextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)])
        
        self.view = view
        
    }
    
    @objc func dos()
    {
        Hadamard_Gate()
    }
    
}
public func X_Gate()
{
    PlaygroundPage.current.liveView = X()
}
