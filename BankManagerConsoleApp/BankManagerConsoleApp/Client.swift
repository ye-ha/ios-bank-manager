//
//  Client.swift
//  BankManagerConsoleApp
//
//  Created by yeha on 2021/12/24.
//

import Foundation

struct Client {
    var totalNumber: Int {
        let numberOfClients = Int.random(in: 10...30)
        return numberOfClients
    }
}