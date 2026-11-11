//
//  Tab2View.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 22/10/26.
//

import SwiftUI

struct Tab2View: View {
    var body: some View {
        ZStack{
            Color(.yellow)
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("Emotion can't be texted!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal,8)
                Text("Speak your mind. sare your story")
                    .font(.title2)
                    .bold()
                    .padding(.horizontal,10)
                HStack{
                    Spacer()
                    Image("ManAndText")
                }
            }
        }
    }
}

#Preview {
    Tab2View()
}
