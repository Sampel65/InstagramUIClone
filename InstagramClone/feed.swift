//
//  feed.swift
//  InstagramClone
//
//  Created by Sampel on 30/03/2022.
//

import SwiftUI

struct feed: View {
    let captionButtons=[
        Asset.heart.name,
        Asset.comment.name,
        Asset.share.name,
        Asset.bookmark.name
    ]
    var body: some View {
        VStack{
            HStack{
                Image(Asset.friend.name)
                Button(action: {}){
                    Text("F6ary")
                        .bold()
                }.foregroundColor(.black)
                    Spacer()
                
                    Button (action: {}){
                    Image(Asset.more.name)
                }
            }.padding(.horizontal, 4)
        Image(Asset.feedImage.name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            VStack(alignment: .leading){
            HStack(spacing: 12){
                ForEach(captionButtons, id:\.self){
                    button in
                    Button(action:{}){
                        Image(button)
                    }
                    if button == Asset.share.name{
                        Spacer()
                    }
                }
            }//top
            Button(action:{}){
                Text("100 likes")
                    .bold()
            }.foregroundColor(.black)
                HStack(spacing: 4){
                Button(action:{}) {
                    Text("F6ary")
                        .bold()
                        .foregroundColor(.black)
                    Text("Hello world!!")
                        .foregroundColor(.black)
                }
                    
                }
                HStack{
                    Image(Asset.friend.name)
                    TextField("Add comment.....", text: . constant(""))
                    
                    Button(action: {}){
                        Image(Asset.plus.name)
                    }
                }
                Text("10 minutes ago")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray3))
                Spacer()
            }.padding(.horizontal,4)
        }
    }
}

struct feed_Previews: PreviewProvider {
    static var previews: some View {
        feed()
    }
}
