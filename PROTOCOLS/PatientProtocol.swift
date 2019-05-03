//
//  PatientProtocol.swift
//  PROTOCOLS
//
//  Created by Oleksandr Bardashevskyi on 5/3/19.
//  Copyright © 2019 Oleksandr Bardashevskyi. All rights reserved.
//

import Foundation

protocol Patient: NSObject {
    var name: String { get set }
    var kindOfClass: String { get set }
    func areYouOK() -> Bool
    func takePill()
    func makeShot()
}

extension Patient {
    
    func areYouOK() -> Bool {
        let answer = (arc4random()%2 == 0) ? true : false
        print("Is \(self.kindOfClass) \(self.name) OK? - \(answer ? "YES" : "NO") ")
        return answer
    }
    func takePill() {
        print("\(self.kindOfClass) \(self.name) takes a pill")
    }
    func makeShot() {
        print("\(self.kindOfClass) \(self.name) takes a pill")
    }
}
//MARK: - Optional method
extension Patient {
    func howIsYourFamilly() {
       print("==============")
    }
    func howIsYourJob() {
        
    }
}
