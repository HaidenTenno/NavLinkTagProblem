//
//  ContentView.swift
//  test
//
//  Created by Петр Тартынских  on 29.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var data: [Int] = [1, 2, 3, 4, 5]
    @State var selectedItem: Int? = nil
    
    var body: some View {
        NavigationView {
//            NavigationLink(
//                destination: DetailView(selectedItem: $selectedItem),
//                tag: 123,
//                selection: $selectedItem,
//                label: { Text("\(123)") }
//            )
            List {
                ForEach(data, id: \.self) { element in
                    NavigationLink(
                        destination: DetailView(selectedItem: $selectedItem),
                        tag: element,
                        selection: $selectedItem,
                        label: { Text("\(element)") }
                    )
                    .isDetailLink(false)
                }
            }
        }
    }
}

struct DetailView: View {
    @Binding var selectedItem: Int?
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Text("DETAIL")
            Button("BUTTON") {
                selectedItem = nil
//                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
