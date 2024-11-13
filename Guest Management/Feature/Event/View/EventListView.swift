//
//  EventListView.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import RealmSwift
import SwiftUI

struct EventListView: View {
    
    @StateObject var viewModel = EventViewModel()
    
    var body: some View {
        List(viewModel.events!) { event in
            Text(event.name)
        }
    }
}

#Preview {
    EventListView()
}
