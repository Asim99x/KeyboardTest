//
//  AnimalKeyboardView.swift
//  KeyboardTest
//
//  Created by Asim Roy on 24/01/25.
//

import SwiftUI

struct AnimalKeyboardView: View {
    
    var insertText: (String) -> Void

    private let animalList = ["🐱", "🐷", "🦫", "🦭", "🐼", "🐮", "🐰", "🐭", "🐘", "🐹", "🦊", "🐬"]
    private let column = GridItem.init(.adaptive(minimum: 56, maximum: 56), spacing: 32)

    var body: some View {
       // VStack(spacing: 24) {
                LazyVGrid(columns: [column], spacing: 24, content: {
                    ForEach(animalList, id: \.self) { animal in
                        Button(action: {
                            insertText(animal)
                        }, label: {
                            Text(animal)
                                .font(.system(size: 32))
                                .padding(.all, 8)
                                .background( RoundedRectangle(cornerRadius: 8)
                                    .fill(.white.opacity(0.8))
                                )
                        })
                    }
                })
            //}
            .padding(.top, 32)
            .padding(.bottom, 16)
            .frame(height: 300)
            .frame(maxWidth: .infinity)
    }
}
