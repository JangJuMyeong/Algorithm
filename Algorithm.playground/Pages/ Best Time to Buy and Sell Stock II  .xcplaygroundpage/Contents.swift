import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    
    var count = 0
    
    for i in 0..<prices.count {
        if i < prices.count - 1 && prices[i] < prices[i + 1] {
            count += prices[i + 1] - prices[i]
            print(prices[i])
        }
    }
    
    return count
}

maxProfit([7,1,5,3,6,4])
