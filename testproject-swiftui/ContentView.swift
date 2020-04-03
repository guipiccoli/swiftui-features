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
            VStack(spacing: 30) {
                NavigationLink(destination: SearchContentView()) {
                    Text("Table View")
                        .frame(width: 200, height: 75, alignment: .center)
                        .cornerRadius(20)
                        .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.red, lineWidth: 2))

                }
                
                
                NavigationLink(destination: TableView()) {
                    Text("Search Table View")
                        .frame(width: 200, height: 75, alignment: .center)
                        .cornerRadius(20)
                        .foregroundColor(Color.red)
                        .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2))

                }
                                
                NavigationLink(destination: CollectionView()) {
                    Text("Collection View")
                        .frame(width: 200, height: 75, alignment: .center)
                        .foregroundColor(Color.blue)
                        .overlay(
                               RoundedRectangle(cornerRadius: 16)
                                   .stroke(Color.red, lineWidth: 2))
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
