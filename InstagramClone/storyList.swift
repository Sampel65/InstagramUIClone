//
//  storyList.swift
//  InstagramClone
//
//  Created by Sampel on 30/03/2022.
//

import SwiftUI

struct storyList: View {
    static let imageNames = [
        Asset.avatar2.name,
        Asset.avatar0.name,
        Asset.avatar1.name,
        Asset.avatar2.name,
        Asset.avatar3.name,
        Asset.avatar2.name,
        Asset.avatar0.name,
        Asset.avatar1.name,
        Asset.avatar2.name,
        Asset.avatar2.name,
        Asset.avatar3.name,
        
        
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(Array(storyList.imageNames.enumerated()),id: \.offset){ index, name in
                    VStack(spacing:0){
                    Story(imageNme: name)
                    Text(name)
                            .font(.system(size: 12))
                    }
                }
            }.padding(.vertical)
        }
    }
}

struct storyList_Previews: PreviewProvider {
    static var previews: some View {
        storyList()
    }
}
