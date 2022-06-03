//
//  Story.swift
//  InstagramClone
//
//  Created by Sampel on 30/03/2022.
//

import SwiftUI

struct Story: View {
    let imageNme : String
    
    var body: some View {
        Button(action: {}){
            Image(imageNme)
                .resizable()
                .frame(width: 64, height: 64)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .overlay(Circle()
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .bottomLeading, endPoint: .topTrailing)))
        }
    }
    
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story(imageNme: Asset.avatar2.name)
    }
}
