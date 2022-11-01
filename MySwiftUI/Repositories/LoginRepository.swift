//
//  LoginRepository.swift
//  MySwiftUI
//
//  Created by Sathya Chinnasamy on 01/11/22.
//

import Foundation


protocol LoginRepositoryProtocol {
    func fetch(completion : (User) -> Void)
}


final class LoginRepository: LoginRepositoryProtocol {
    private let apiService : ApiServiceProtocol
    
    init (apiSevice: ApiServiceProtocol = Apiservice()) {
        self.apiService = apiSevice
    }
    func fetch(completion : (User) -> Void) {
        apiService.fetch(completion: completion)
    }
}
