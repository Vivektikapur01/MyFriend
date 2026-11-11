//
//  IntroView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 23/10/26.
//

import SwiftUI

struct IntroView: View {
    @State private var name = ""
    @State private var date = ""
    @State private var month = ""
    @State private var year = ""
    @State private var referralCode = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("Oh hey! Let's start with an Intro")
                .font(.largeTitle)
                .bold()
                .padding()
            Text("your nick name")
                .bold()
                .padding(.horizontal)
            TextField("",text: $name)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .keyboardType(.numberPad)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.5),lineWidth: 1)
                    )

               .padding(.horizontal)
            Text("Your birthday")
                .font(.title3)
                .bold()
                .padding(.top)
                .padding(.horizontal)
            HStack(spacing: 10){
                TextField("Date",text: $date)
                    .frame(width: 80,height: 60)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.5),lineWidth: 1)
                        )
                TextField("Month",text: $month)
                    .frame(width: 90,height: 60)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.5),lineWidth: 1)
                        )
                TextField("Year",text: $year)
                    .frame(width: 150,height: 60)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray.opacity(0.5),lineWidth: 1)
                        )
                
                    
            }
            .padding(.horizontal)
            
            Text("Referral code(optional)")
                .bold()
                .font(.title2)
                .padding(.top)
                .padding(.horizontal)
            TextField("",text: $referralCode)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.5),lineWidth: 1)
                )
                .padding(.horizontal)
            Button(action: {}){
                Text("Submit")
                    .font(.title3)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(.yellow)
                    .cornerRadius(24)
                    .padding(.top,62)
                    .padding(.horizontal)
            }
            Text("By prociding I accept the")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .padding(.top,30)
                .padding(.horizontal)
            Text("Community Guidelines & Turm of Use")
                .bold()
                .padding(.horizontal)
        }
       
    }
}

#Preview {
    IntroView()
}
