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
                List(self.musics, id: \.self) { music in
                    NavigationLink(destination: DetailsView(music: music)) {
                        Text(music)
                        
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
