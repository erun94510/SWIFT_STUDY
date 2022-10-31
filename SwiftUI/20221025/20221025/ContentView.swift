//
//  ContentView.swift
//  20221025
//
//  Created by Donghoon Bae on 2022/10/25.
//

import SwiftUI

struct TodoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

var listData: [TodoItem] = [
    TodoItem(task: "Wash the car", imageName: "car.fill"),
    TodoItem(task: "Vacuum house", imageName: "house.fill"),
    TodoItem(task: "Pick up kids from school bus @ 3pm", imageName: "bus.doubledecker"),
    TodoItem(task: "Auction the kids on ebay", imageName: "cart.fill"),
    TodoItem(task: "Order Pizza for dinner", imageName: "fork.knife"),
]

struct ContentView: View {
    
    @State private var toggleStatus = true
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notification")
                    }
                }
                
                Section(header: Text("Todo Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(destination: Text("Hello")) {
                            HStack {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .listStyle(.sidebar)
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    
}

func deleteItem(at offset: IndexSet) {
    print("indexSet: \(offset)")
//    listData.remove(at: offset)
    print(listData)
}

func moveItem(from source: IndexSet, to destination: Int) {
    print("source: \(source)")
    print("destination: \(destination)")
    print(listData)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
