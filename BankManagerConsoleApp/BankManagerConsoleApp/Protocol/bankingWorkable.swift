//
//  bankingWorkable.swift
//  BankManagerConsoleApp
//
//  Created by yeha on 2021/12/24.
//

import Foundation

protocol bankingWorkable {
    func work(for clientIdentifier: Int)
}

extension bankingWorkable {
    func work(for clientIdentifier: Int) {
        print("\(clientIdentifier)번 고객 업무 시작")
        Thread.sleep(forTimeInterval: 0.7)
        print("\(clientIdentifier)번 고객 업무 완료")
    }
}