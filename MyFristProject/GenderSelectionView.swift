//
//  GenderSelectionView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 23/10/26.
//

import SwiftUI

struct GenderSelectionView: View {
    @State private var selectedGender: String? = nil
    var body: some View {
        
            VStack{
                Text("Who Are You?")
                    .font(.largeTitle)
                    .bold()
            .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal)
                
            Image("Mailimage")
                    .resizable()
                    .scaledToFit()
                    .frame(width:167,height: 167)
                    .clipShape(Circle())
                    .overlay(
                    Circle()
                    .stroke(style:StrokeStyle(lineWidth: 3,dash: [9]))
                    .foregroundColor(selectedGender == "Male" ? .yellow : .clear)
                    .scaleEffect(1.15)
                    )
                    .onTapGesture {
                        selectedGender = "Male"
                    }
                Text("Male")
                    .font(.title3)
                    .bold()
                    .padding()
                Image("FemaleImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width:167,height: 167)
                    .clipShape(Circle())
                    .overlay(
                    Circle()
                    .stroke(style:StrokeStyle(lineWidth: 3,dash: [6]))
                    .foregroundColor(selectedGender == "Female" ? .yellow : .clear)
                    .scaleEffect(1.15)
                    )
                    .onTapGesture {
                        selectedGender = "Female"
                    }
                Text("Female")
                    .font(.title3)
                    .bold()
                   // .padding()
                Button(action: {}){
                    Text("Submit")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(selectedGender == nil ? Color(red: 255/255,green: 234/255,blue: 175/255) :Color(.yellow).opacity(1))
                        .cornerRadius(24)
                        .padding(.horizontal)
                        .padding(.top,60)
                }
            
        }
    }
}

#Preview {
    GenderSelectionView()
}
