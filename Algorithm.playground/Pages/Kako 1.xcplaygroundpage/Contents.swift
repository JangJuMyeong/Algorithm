//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var caseDic = [String:Int]()
    var termDic = [(String,String)]()
    var answer = [Int]()
    
    
    for term in terms {
        var sArr = term.components(separatedBy: " ")
        caseDic[String(sArr[0])] = Int(sArr[1])
    }
    
    for i in privacies {
        var sArr = i.components(separatedBy: " ")
        termDic.append((sArr[1],sArr[0]))
    }
    
    for (index,(key, value)) in termDic.enumerated() {
        var vaild = caseDic[key]
        var sArr = value.components(separatedBy: ".")
        var endArr = today.components(separatedBy: ".")
        guard var termYear = Int(sArr[0]), var termMonth = Int(sArr[1]), var termDay = Int(sArr[2]) else { return []}
        
        termMonth += vaild!
        
        if termMonth > 12{
            termYear += 1
            termMonth -= 12
        }
        
        guard let endYear = Int(endArr[0]), let endMonth = Int(endArr[1]), let endDay = Int(endArr[2]) else { return []}
        
        if termYear < endYear {
            answer.append(index + 1)
        } else if termMonth < endMonth {
            answer.append(index + 1)
        } else if termMonth == endMonth && termDay <= endDay {
            answer.append(index + 1)
        }
        
    }

    return answer
}


solution(
    "2022.05.19", ["A 6", "B 12", "C 3"], ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"])
