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


class ResultPage : UIViewController
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
          TextView.isEditable = false
        
        NextButton.setTitle("Measure", for: .normal)
        NextButton.tintColor = .red
        NextButton.addTarget(self, action: #selector(dos), for: .touchUpInside)
        
        NextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        
        
        
        TextView.text =  "Index " + "\t \t " + " State " + " \t \t" + " Probabilty" + " \t \t " + "\n"
        
        let qc = QuantumComputer(size : ResultPage.n)
        
        var i = 0
        
        for gate in ResultPage.Gates
        {
            switch gate {
            case "X":
                qc.X(qubit: ResultPage.Indexes[i])
            case "Hadamard" :
                qc.Hadamard(qubit: ResultPage.Indexes[i])
            case "C-NOT":
                let j = i + 1
                qc.ControlNot(control: ResultPage.Indexes[i], target: ResultPage.Indexes[j])
                i = i+1
                
            case "Y":
                qc.Y(qubit: ResultPage.Indexes[i])
            case "S":
                qc.SGate(qubit: ResultPage.Indexes[i])
            case "Z" :
                qc.Z(qubit: ResultPage.Indexes[i])
                
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
        for p in qc.Proabability
        {
            var s1 = ""
            let s2 = String(index , radix : 2)
            if(ResultPage.n-s2.count > 0 )
            {
                for _ in 1...(ResultPage.n-s2.count)
                {
                    s1 = s1 + "0"
                }
            }
            s1 = s1 + s2
            TextView.text = TextView.text + "|" +  s1 + ">" + "\t \t  \t" + qc.CombinedRegister[index] + "\t \t" + "\t \t " + "\(p)" + " \n \n"
            index  = index + 1
            
        }
        
        ScrollView.addSubview(NextButton)
        
        NextButton.translatesAutoresizingMaskIntoConstraints = false
        
        ScrollView.addConstraints([ NextButton.topAnchor.constraint(equalTo: ScrollView.topAnchor, constant: 500),
                                    NextButton.centerXAnchor.constraint(equalTo: ScrollView.centerXAnchor, constant: 0)])
        
        
  
        
        self.view = ScrollView
        ResultPage.Prob = qc.Proabability
    }
    
    
    @objc func dos()
    {
        MeasureQubits( p : ResultPage.Prob , n : ResultPage.n)
    }
}

public func Execute(gates: [String], indexes: [Int] , N: Int)
{
    ResultPage.Gates = gates
    ResultPage.n = N
    ResultPage.Indexes = indexes
    PlaygroundPage.current.liveView =  ResultPage()
}
