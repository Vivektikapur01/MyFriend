//
//  weFrndCoinView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 24/10/26.
//

import SwiftUI

let coinBundles: [[String: String]] = [
 ["coins":"70000", "price": "19999", "discount": "Save 60%"],
 ["coins":"80000", "price": "999", "discount": "Save 50%"],
["coins":"90000", "price": "1999", "discount": "Save 60%"],
 ["coins":"60000", "price": "10000", "discount": "Save 40%"],
 ["coins":"9000", "price": "9999", "discount": "Save 60%"],
 ["coins":"10000", "price": "11111", "discount": "Save 30%"],
 ["coins":"2000", "price": "99", "discount": "Save 70%"],
 ["coins":"50000", "price": "11111", "discount": "Save 30%"],
 ["coins":"300", "price": "99", "discount": "Save 70%"]
]
let columns = [
 GridItem(.flexible()),
 GridItem(.flexible()),
 GridItem(.flexible())
]

struct weFrndCoinView: View {
    @State private var selectedTab = 0
    var body: some View {
        VStack{
            HStack{
                Button(action:{}){
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundStyle(.black)
                    //.resizable()
                    // .scaledToFit()
                    // .frame(width: 40,height: 40)
                    
                }
                Spacer()
                Text("weFrnd Coins")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "clock.arrow.circlepath")
                    .font(.title2)
                
            }
            .padding(.horizontal)
            Divider()
                .overlay(.black)
            
                .bold()
                .padding(.horizontal)
            ZStack{
                LinearGradient(
                    colors: [.yellow,.white],startPoint: .leading,endPoint: .trailing)
            HStack{
                VStack{
                    Text("Availabale Coins")
                        .font(.title2)
                        .foregroundStyle(.gray)
                        .padding(.leading,6)
                    HStack{
                        Text("100")
                            .font(.largeTitle)
                            .bold()
                            
                        Image("Coin")
                            .resizable()
                            .frame(width:25,height: 25)
                    }
                    .padding(.leading,-40)
                }
                Spacer()
                Image("tiltedwfLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200)
                    .frame(maxHeight: .infinity)
                    .bold()
            }
            
        }
                .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .cornerRadius(20)
                    .padding(.horizontal)
            ZStack{
                Color(.yellow)
                HStack{
                    Button(action:{withAnimation(.easeInOut){
                        selectedTab = 0
                    }
                    }){
                        Text("Coin Bundes")
                            .foregroundColor(selectedTab == 0 ? .black: .gray)
                            .frame(width: 131,height: 31)
                            .background(selectedTab == 0 ? Color(red: 255/255,green: 234/255, blue: 175/255,opacity: 1) : Color.clear)
                            .cornerRadius(20)
                    }
                    Button(action: {withAnimation(.easeInOut){
                        selectedTab = 1
                    }
                    }){
                       Text("Weekly Plans")
                            .foregroundColor(selectedTab == 1 ? .black: .gray)
                            .frame(width: 131,height: 31)
                            .background(selectedTab == 1 ? Color(red: 255/255,green: 234/255,blue: 175/255,opacity: 1): Color.clear)
                            .cornerRadius(20)
                    }
                }
            }
            .frame(width: 280,height: 40)
            .cornerRadius(24)
            .padding(.top,10)
            ZStack{
                Color(red:232/255,green: 245/255,blue: 233/255)

            }
            .frame(width: 360,height: 100)
             .cornerRadius(24)
             .padding()
            
            
            //////////////
            ScrollView{
                LazyVGrid(columns: columns,spacing: 12){
                    ForEach(coinBundles, id: \.self){bundle in
                        VStack(spacing: 8){
                            Image("coins")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50,height: 40)
                            Text(bundle["coins"] ?? "")
                            
                            Text("coins")
                            
                            Text(bundle["price"] ?? "")
                            
                            Text(bundle["discount"] ?? "")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(12)
                        //.shadow(color: .yellow,radius: 2,x: //0,y: 3)
                        .overlay(
                        RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.yellow.opacity(0.5),lineWidth: 2)
                        
                        )
                    }
                }
                .padding(.horizontal)
            }
            VStack{
                Button(action:{}){
                    Text("Add amount")
                }
                .frame(width: 350,height: 50)
                
                .background(.yellow)
                .cornerRadius(24)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 75)
        }
    }
}

#Preview {
    weFrndCoinView()
}
