//
//  EnumView.swift
//  Swift-study
//
//  Created by dgsw8th36 on 2023/09/12.
//

import SwiftUI

struct EnumView: View {
    @State var helloArr: [String] = []
    var body: some View {
    
        ForEach(helloArr, id: \.self) { printHello in
            Text(printHello)
        }
        
        Button {
            helloArr = []
            
            for _ in 0...6 {
                let randomHello = Language(rawValue: Int.random(in: 0...6))
                
                helloArr.append("\(randomHello!) : \(randomHello?.getHelloWorld() ?? "none")")
            }
        } label: {
            Text("Button")
        }

    }
}

enum Language: Int, CaseIterable {
    
    case java
    case c
    case javascript
    case swift
    case kotlin
    case python
    case ruby
    
    func getHelloWorld() -> String {

        switch self {
            
        case .java:
            return "system.out.println(\"Hello, World!\");"
        case .c:
            return "printf(\"Hello, World!\");"
        case .javascript:
            return "console.log(\"Hello, World!\")"
        case .swift:
            return "print(\"Hello, World!\")"
        case .kotlin:
            return "println(\"Hello, World!\")"
        case .python:
            return "print(\"Hello, World!\")"
        case .ruby:
            return "put 'Hello, World!'"
        }
    }
}

// 민규선배 코드 분석해보고 혼자 처음부터 짜봤어요
