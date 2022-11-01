//
//  ApiService.swift
//  MySwiftUI
//
//  Created by Sathya Chinnasamy on 01/11/22.
//

import Foundation

protocol ApiServiceProtocol {
    func fetch (completion: (User) -> Void)
}

final class Apiservice: ApiServiceProtocol {
    func fetch (completion: (User) -> Void) {
        completion(.init(userName: "Test User", password: "Test@123"))
    }
}
