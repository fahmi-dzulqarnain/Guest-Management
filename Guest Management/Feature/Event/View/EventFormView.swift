//
//  EventFormView.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import SwiftUI

struct EventFormView: View {
    @State var eventName: String = ""
    @State var eventDate: Date = Date()
    @State var eventNotes: String = ""
    
    var body: some View {
        NavigationView { // It's a view to navigate between views
            List {
                Section(header: Text("Event Details")) {
                    
                    HStack {
                        Text("Name")
                            .bold()
                        
                        Spacer()
                        
                        TextField(
                            "Type your event name...",
                            text: $eventName
                        )
                        .multilineTextAlignment(.trailing)
                    }
                    .padding(.vertical, 8)
                    
                    HStack {
                        Text("Date Time")
                            .font(.headline)
                        
                        Spacer()
                        
                        DatePicker(
                            selection: $eventDate,
                            in: Date()...
                        ) { }
                    }
                    .padding(.vertical, 8)
                }
                
                Section(header: Text("Notes")) {
                    TextArea(text: $eventNotes)
                }
                .padding(.top)
            }
            .navigationTitle("Add Event")
            .toolbar {
                Button("Save") {
                    print("Saved!")
                }
            }
        }
    }
}

#Preview {
    EventFormView()
}
