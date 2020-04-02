//
//  TableView.swift
//  testproject-swiftui
//
//  Created by Guilherme Piccoli on 01/04/20.
//  Copyright © 2020 Guilherme Piccoli. All rights reserved.
//

import SwiftUI

struct TableView: View {
    let musics = ["Yellow Submarine", "Eleanor Rigby", "Let it be", "Help!", "Imagine"]
    
    var body: some View {
        VStack {
            List(self.musics.enumerated().map({$0}), id: \.element) { index,name in
                NavigationLink(destination: DetailsView(music: name, imageName: "capa-\(index)")) {
                    
                    HStack {
                        Image("capa-\(index)").resizable().frame(width: 100, height: 100)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(name)
                            
                            HStack(spacing: 5) {
                                Image(systemName: "star")
                                Text("5.0")
                            }.offset(x: 0, y: 20)
                        }
                    }
                }
            }
        }.navigationBarTitle("Search Song", displayMode: .automatic)
    }
}


struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
