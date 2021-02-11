//
//  ContentView.swift
//  AssignmentNotebook
//
//  Created by Student on 2/4/21.
//

import SwiftUI


struct ContentView: View {
    @State var AssignmentItems = ["asdsad", "asdasd", "akljalkf" ]
    var body: some View {
        NavigationView {
            List {
                ForEach(AssignmentItems, id: \.self) { thing in
                    Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    AssignmentItems.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    AssignmentItems.remove(atOffsets: indexSet)
                })
            }

            .navigationBarTitle("AssignmentItems")
            .navigationBarItems(leading: EditButton())
        }
    }
}


struct AssignmentItem: Identifiable, Codable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}

    

