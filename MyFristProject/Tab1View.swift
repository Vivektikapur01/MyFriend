//
//  tab1View.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 21/10/26.
//

import SwiftUI

struct tab1View: View {
    var body: some View {
        ZStack{
            Color(.yellow)
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .leading){
                    Text("Real voice real people")
                        .font(.largeTitle)
                    Text("No fake profile no bots")
                        .font(.title2)
                }
                
                HStack{
                    Spacer()
                    Image("girlsImage")
                        .padding(.bottom,-110)
                }
                
            }
        }
    }
}

#Preview {
    tab1View()
}
