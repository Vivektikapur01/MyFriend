//
//  SubmitOtpView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 22/10/26.
//

import SwiftUI

struct SubmitOtpView: View {
    @State private var otpText:[String] = Array(repeating: "", count: 6)
    @FocusState private var focusedField: Int?
    @State private var timeRemaining = 9
    var mobileNumber = 8282838721
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Auto detecting OTP")
                    .font(.title2)
                    .foregroundStyle(.gray)
                    .padding(.horizontal)
                HStack{
                    Text("mobile no")
                    Spacer()
                    Text("Change No.")
                        .font(.title3)
                        .foregroundStyle(.orange)
                }
                .padding(.horizontal)
            }
            
            HStack(spacing: 10){
                ForEach(0..<6, id: \.self){index in
                    TextField("",text: $otpText[index])
                        .frame(width: 44,height: 43)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(12)
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                }
            }
            //button
            HStack(spacing: 12){
                Button(action: {}){
                    Text("Resent in(00:\(String(format:"%02d",timeRemaining)))")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.orange)
                        .padding(.vertical,20)
                        .frame(maxWidth:.infinity)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.orange.opacity(0.5),lineWidth: 1)
                        )
                }
                //submit butten
                Button(action:{}){
                    Text("Submit")
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .padding(.vertical,20)
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow.opacity(0.4))
                        .cornerRadius(20)
                }
            }
            .padding()
            VStack(alignment: .leading){
                Text("By prociding I accept the")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                Text("Comunity gidelines & turms of Use")
            }
            .padding()
        }
    }
}

#Preview {
    SubmitOtpView()
}
