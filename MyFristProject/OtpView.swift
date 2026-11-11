//
//  OtpView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 21/10/26.
//

import SwiftUI

struct OtpView: View {
    @State private var mobileNo = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Mobile Nomber")
            HStack{
                Text("+91")
                    .foregroundStyle(.orange)
                TextField("",text: $mobileNo)
            }
            .frame(width:353,height: 60)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding()
            
            Text("we keep your number 100% safe It's never sare")
                .font(.subheadline)
                .foregroundColor(.green)
            Button(action:{}){
                Text("Get OTP")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height:50)
                    .background(.yellow)
                    .cornerRadius(24)
                    .padding(.horizontal,50)
                    .padding()
            }
            Text("By prociding I accept The")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
            Text("Cummunity guideline & turm of Use")
                .bold()
                .padding(.top,4)
                .padding(.horizontal)
            
        }
    }
}

#Preview {
    OtpView()
}
