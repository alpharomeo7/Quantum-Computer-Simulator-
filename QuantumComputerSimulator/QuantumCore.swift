//: Playground - noun: a place where people can play



import UIKit
import PlaygroundSupport

var str = "Hello, playground"

let sqrt2 = 2.squareRoot()


public func twoRaiedTo(num : Int) -> Int
{
    var n = num
    var Answer = 1
    while(n > 0)
    {
        Answer = Answer * 2
        n = n-1
        
    }
    return Answer
}

public class QuantumComputer
{
    
    public  var register : [Double] = []
    var ImaginaryRegister : [Double] = []
    public   var CombinedRegister  : [String] = []
    public    var Proabability : [Double] = []
    
    public  var size = 0
    
    public  init(size : Int)
    {
        self.size = size
        let  n = twoRaiedTo(num: self.size)
        
        for _ in  1...n
        {
            register.append(0)
            ImaginaryRegister.append(0)
        }
        register[0] = 1
    }
    
    public func Y ( qubit : Int)
    {
        let   n = twoRaiedTo(num: self.size)-1
        let powerOfQubit = twoRaiedTo(num: qubit)
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        for i in 0...n
        {
            
            if( qubitStateOf(qubit: qubit, index: i) == 0)
            {
                
                newRegister.append(-ImaginaryRegister[i + powerOfQubit])
                newImaginaryRegister.append(register[i + powerOfQubit])
            }
            else
            {
                
                newRegister.append(ImaginaryRegister[i - powerOfQubit])
                
                newImaginaryRegister.append(-register[i-powerOfQubit])
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
        
        
    }
    public func Z ( qubit : Int)
    {
        let   n = twoRaiedTo(num: self.size)-1
        
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        for i in 0...n
        {
            
            if( qubitStateOf(qubit: qubit, index: i) == 0)
            {
                
                newRegister.append(register[i ])
                newImaginaryRegister.append(ImaginaryRegister[i])
            }
            else
            {
                
                newRegister.append(-register[i ])
                
                newImaginaryRegister.append(-ImaginaryRegister[i])
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
        
        
    }
    
    public func qubitStateOf(qubit : Int , index : Int) -> Int
    {
        
        if ((index / twoRaiedTo(num: qubit)) % 2 == 0)
        {
            
            return 0
        }
        else
        {
            return 1
            
        }
    }
    
    public func Hadamard ( qubit : Int)
    {
        let   n = twoRaiedTo(num: self.size)-1
        let powerOfQubit = twoRaiedTo(num: qubit)
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        for i in 0...n
        {
            
            if( qubitStateOf(qubit: qubit, index: i) == 0)
            {
                
                newRegister.append((register[i] + register[i + powerOfQubit])/sqrt2)
                newImaginaryRegister.append((ImaginaryRegister[i] + ImaginaryRegister[i + powerOfQubit])/sqrt2)
                
            }
            else
            {
                
                newRegister.append((register[i - powerOfQubit] -  register[i])/sqrt2)
                newImaginaryRegister.append((ImaginaryRegister[i-powerOfQubit] - ImaginaryRegister[i])/sqrt2)
                
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
    }
    
    public func X ( qubit : Int)
    {
        let   n = twoRaiedTo(num: self.size)-1
        let powerOfQubit = twoRaiedTo(num: qubit)
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        for i in 0...n
        {
            
            if( qubitStateOf(qubit: qubit, index: i) == 0)
            {
                
                newRegister.append(register[i + powerOfQubit])
                newImaginaryRegister.append(ImaginaryRegister[i + powerOfQubit])
            }
            else
            {
                
                newRegister.append(register[i - powerOfQubit])
                
                newImaginaryRegister.append(ImaginaryRegister[i-powerOfQubit])
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
        
        
    }
    
    public func SGate ( qubit : Int)
    {
        let   n = twoRaiedTo(num: self.size)-1
        let powerOfQubit = twoRaiedTo(num: qubit)
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        for i in 0...n
        {
            
            if( qubitStateOf(qubit: qubit, index: i) == 0)
            {
                
                newRegister.append(register[i ])
                newImaginaryRegister.append(ImaginaryRegister[i ])
            }
            else
            {
                
                newRegister.append(-(ImaginaryRegister[i ]))
                
                newImaginaryRegister.append(register[i-powerOfQubit])
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
        
        
        
    }
    
    
    public func ControlNot(control : Int , target : Int)
    {
        
        let   n = twoRaiedTo(num: self.size)-1
        let powerOfQubit = twoRaiedTo(num : target)
        var newRegister : [Double] = []
        var newImaginaryRegister : [Double ] = []
        
        for i in 0...n
        {
            if(qubitStateOf(qubit: control, index: i) == 1)
            {
                if( qubitStateOf(qubit: target, index: i) == 0)
                {
                    
                    newRegister.append(register[i + powerOfQubit])
                    newImaginaryRegister.append(ImaginaryRegister[i+powerOfQubit])
                    
                }
                else
                {
                    
                    newRegister.append(register[i - powerOfQubit])
                    newImaginaryRegister.append(ImaginaryRegister[i-powerOfQubit])
                    
                    
                }
                
            }
            else
            {
                newRegister.append(register[i])
                newImaginaryRegister.append(ImaginaryRegister[i])
            }
        }
        for i in 0...n
        {
            register[i] = newRegister[i]
            ImaginaryRegister[i] = newImaginaryRegister[i]
        }
        
        
    }
    
    public func combine()
    {
        let   n = twoRaiedTo(num: self.size)-1
        for i in 0...n
        {
            ImaginaryRegister[i] = ImaginaryRegister[i]*1000000
            ImaginaryRegister[i].round()
            ImaginaryRegister[i] = ImaginaryRegister[i]/1000000
            
            register[i] = register[i]*1000000
            register[i].round()
            register[i] = register[i]/1000000
            if(ImaginaryRegister[i] == 0)
            {
                CombinedRegister.append("\(register[i])")
                
            }
            else
            {
                CombinedRegister.append("\(register[i])" + " " + "\(ImaginaryRegister[i])" + "i")
                
                
            }
            Proabability.append(register[i]*register[i] + ImaginaryRegister[i]*ImaginaryRegister[i])
            Proabability[i] = Proabability[i]*1000000
            Proabability[i].round()
            Proabability[i] = Proabability[i]/1000000
        }
    }
}






