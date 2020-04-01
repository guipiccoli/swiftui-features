//
//  DetailsView.swift
//  testproject-swiftui
//
//  Created by Guilherme Piccoli on 01/04/20.
//  Copyright © 2020 Guilherme Piccoli. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    
    let music: String
    
    var body: some View {
        NavigationView {
            Text(music)
        }.navigationBarTitle("Music", displayMode: .inline)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(music: "teste")
    }
}
