//
//  CollectionView.swift
//  testproject-swiftui
//
//  Created by Guilherme Piccoli on 03/04/20.
//  Copyright © 2020 Guilherme Piccoli. All rights reserved.
//

import SwiftUI


//List(self.musics.enumerated().map({$0}), id: \.element) { index,name in
//
//
//}

struct CollectionView: View {
    
    let musics = ["Yellow Submarine", "Eleanor Rigby", "Let it be", "Help!", "Imagine"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(self.musics.enumerated().map({$0}), id: \.element) { index,music in
                    VStack{
                        Text(music)
                        
                        Image("capa-\(index)")
                            .resizable()
                            .frame(width: 200,height: 200)
                            .aspectRatio(contentMode: .fit)
                            .padding(5)
                    }.padding(.leading, 20)
                }
            }
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
