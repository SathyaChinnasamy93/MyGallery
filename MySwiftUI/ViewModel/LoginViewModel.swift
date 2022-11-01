//
//  LoginViewModel.swift
//  MySwiftUI
//
//  Created by Sathya Chinnasamy on 01/11/22.
//

import Foundation

final class LoginModel : ObservableObject{
    @Published var userName = ""
    @Published var password = ""
    
    private let repository : LoginRepositoryProtocol
    
    init( repository: LoginRepositoryProtocol = LoginRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetch { user in
            self.userName = user.userName
            self.password = user.password
        }
    }
}

