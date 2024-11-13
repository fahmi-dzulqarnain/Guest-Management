//
//  TextArea.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import SwiftUI

struct TextArea: View {
    
    @Binding var text: String
    
    var placeholder: String = "Type here..."
    
    var body: some View {
        ZStack {
            TextEditor(text: $text)
            
            if text.isEmpty {
                
                VStack {
                    
                    HStack {
                        Text(placeholder)
                            .foregroundStyle(.tertiary)
                            .padding(.top, 8)
                            .padding(.leading, 5)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    TextArea(text: .constant(""))
}
