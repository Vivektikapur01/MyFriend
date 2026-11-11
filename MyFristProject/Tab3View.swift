//
//  Tab3View.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 23/10/26.
//

import SwiftUI

struct Tab3View: View {
    var body: some View {
        ZStack{
            Color(.yellow)
                //.ignoresSafeArea()
            VStack{
                VStack(alignment: .leading){
                    Text("Talk Connect Feel batter!")
                        .font(.largeTitle)
                        .bold()
                    Text("Start a call. Let real conversations\n begin")
                        .font(.title)
                    
                }
                HStack{
                    Spacer()
                    Image("emotional-intelligence")
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    Tab3View()
}
