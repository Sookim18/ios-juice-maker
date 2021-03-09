//
//  JuiceMaker - JuiceMaker.swift
//  Created by sookim. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 예시) 입력된다면


enum Juice: String {
    case strawberryJuice = "strawberry"
    case bananaJuice = "banana"
    case kiwiJuice = "kiwi"
    case pineappleJuice = "pineapple"
    case mangoJuice = "mango"
    case strawberryBananaJuice = "strawberryBanana"
    case mangoKiwiJuice = "mangoKiwi"
}

//과일 재고 변수
private(set) var strawberryCount: Int = 10
private(set) var bananaCount: Int = 10
private(set) var kiwiCount: Int = 10
private(set) var mangoCount: Int = 10
private(set) var pineappleCount: Int = 10

class JuiceMaker {

    //쥬스 소모하는 양
    let juiceDictionary: [Juice: Int] = [.strawberryJuice: 16, .bananaJuice: 2, .kiwiJuice: 3, .pineappleJuice: 2, .mangoJuice: 3,
                                         .strawberryBananaJuice: 0, .mangoKiwiJuice: 0]

    //과일 재고
    var countDictionary: [Juice: Int] = [.strawberryJuice: strawberryCount, .bananaJuice: bananaCount, .kiwiJuice: kiwiCount, .mangoJuice: mangoCount
                                         ,.pineappleJuice: pineappleCount, .strawberryBananaJuice: 0, .mangoKiwiJuice: 0]

    func checkGo(inputString: String) {
        for (key, value) in juiceDictionary{
            guard var count = countDictionary[key] else {
                break
            }
            switch key.rawValue {
            case inputString:
                    if count - value > 0 && inputString != "strawberryBanana" && inputString != "mangoKiwi"{
                        count -= value
                        print("쥬스 성공")
                        print("입력과일: \(inputString), 개수 : \(count)")
                        
                    }
                    else if inputString == "strawberryBanana" && strawberryCount - 10 > 0 && strawberryCount - 1 > 0{
                        print("딸바주스 성공")
                    }
                    else if inputString == "mangoKiwi" && mangoCount - 2 > 0 && kiwiCount - 1 > 0{
                        print("망키주스 성공")
                    }
                    else { print("과일 재고없음") }
            default:
                print("키찾기")
            }
        }
    }
}

//var fewof:JuiceMaker = JuiceMaker()
//print("쥬스를 선택하세요(1.strawberry 2. banana 3.kiwi 4.pineapple 5.mango 6.strawberryBanana 7.mangoKiwi) : " ,terminator: "")
//
//if let inputString = readLine() {
//    fewof.checkGo(inputString: inputString)
//}
