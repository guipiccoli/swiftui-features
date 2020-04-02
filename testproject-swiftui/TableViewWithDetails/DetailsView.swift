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
    let imageName: String
    
    var body: some View {
            VStack(alignment: .center, spacing: 10) {
                Image(imageName).resizable().frame(width: 200, height: 200)
                Text(music)
            }.navigationBarTitle("Music", displayMode: .inline)
        }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(music: "teste", imageName: "capa-1")
    }
}
