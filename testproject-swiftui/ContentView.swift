//
//  ContentView.swift
//  testproject-swiftui
//
//  Created by Guilherme Piccoli on 01/04/20.
//  Copyright © 2020 Guilherme Piccoli. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SearchContentView()) {
                    Text("Show detail view")
                        .frame(width: 200, height: 75, alignment: .center)
                        .background(Color.red)
                        .cornerRadius(20)
                }
                
                Divider()
                
                NavigationLink(destination: TableView()) {
                    Text("Show test")
                        .frame(width: 200, height: 75, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .foregroundColor(Color.red)
                }
                
            }.navigationBarTitle("Master view")
            
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
