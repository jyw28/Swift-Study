//
//  MVVMViewModel.swift
//  Swift-study
//
//  Created by dgsw8th36 on 2023/09/18.
//

import Foundation

class MVVMViewModel: ObservableObject {
    @Published var data: User?
    
    func fetchData() {
        self.data = User(name: "조영우", email: "joyoungwoo28@gmail.com")
    }
}
