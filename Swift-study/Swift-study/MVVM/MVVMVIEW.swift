//
//  MVVMView.swift
//  Swift-study
//
//  Created by dgsw8th36 on 2023/09/18.
//

import SwiftUI

struct MVVMView: View {
    
    @ObservedObject var viewModel = MVVMViewModel()
    
    var body: some View {
        VStack {
            if let data = viewModel.data {
                Text("\(data.name)님, 환영합니다.")
                Text("\(data.email)")
            }
        }
        .onAppear(perform: viewModel.fetchData)
    }
}
