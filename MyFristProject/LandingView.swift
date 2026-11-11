//
//  LandingView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 21/10/26.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [.white,.yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            HStack{
                Spacer()
                Image("threeHeartImage")
                    .padding(.top,-184)
            }
            VStack{
                Image("wfLogo")
                
                Text("weFrnd")
                    .font(.largeTitle)
                    .bold()
                
            }
            VStack{
                HStack{
                    
                    Image("oneheartImage")
                        .padding(.leading,-200)
                        .padding(.top,555)
                }
                HStack{
                    Text("Made in")
                    Image("indianFlag")
                }
            }
        
        }
    }
}

#Preview {
    LandingView()
}
