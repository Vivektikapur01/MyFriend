//
//  Let'sGoView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 21/10/26.
//

import SwiftUI

struct Let_sGoView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Make real frind on weFrnd \n100% safe and secure app")
                .font(.title2)
                .padding(.horizontal,14)
            Button(action: {}){
                Text("Let's go")
                    .foregroundStyle(.black)
                    .frame(width: 353,height: 50)
                    .background(.yellow)
                    .cornerRadius(24)
                    .padding(20)
               
                
            }
            Text("by proceedind I accept the")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal,14)
                Text("community Guideliens & turm of use")
                .padding(.horizontal,14)
        }
    }
}

#Preview {
    Let_sGoView()
}
