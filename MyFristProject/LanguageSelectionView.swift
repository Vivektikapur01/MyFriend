//
//  LanguageSelectionView.swift
//  MyFristProject
//
//  Created by Rupesh Mishra on 23/10/26.
//

import SwiftUI

struct LanguageSelectionView: View {
    let languageDictionary: [String:String] = [
        "Hindi":"h", "English":"e", "Bengali":"B",
        "Marathi":"M", "Telgu":"t", "Tamil":"Ta",
        "Gujarati":"g","Kannada":"k","Odia":"O",
        "Malayalam":"Mal","Punjabi":"p","Assamese":"a"
    ]
    var sortedLanguages:[(english: String,nativ:String)]{
        languageDictionary.map{($0.key,$0.value)}.sorted{$0.english<$1.english}
    }
    @State private var selectedLanguage: String? = nil
    private let columns:[GridItem] = Array(repeating: GridItem(.flexible(),spacing: 12),count: 3)
    private let peimsryYellow = Color(red:236/255,green: 175/255,blue: 49/255)
    private let unselectedCardBackground = Color(red:245/255,green: 245/255,blue: 245/255)
    var body: some View {
        VStack{
            VStack(alignment: .leading,spacing:0){
                Text("Choose the language\nyou wish to speak in!")
                    .font(.title)
                    .bold()
                    
                Text("Choose one language")
                    .font(.title3)
                    .padding(.top)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            //.frame(height: 97)
            
            .padding(.horizontal,20)
            .padding(.top,20)
            
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: columns,spacing: 12){
                    ForEach(sortedLanguages, id: \.english){ item in
                        let isSelected = (selectedLanguage == item.english)
                        LanguageCard(
                            nativeName: item.nativ,
                            englishName: item.english,
                            isSelected: isSelected,
                            seclectedColor: peimsryYellow,
                            unselectedColor: unselectedCardBackground
                        ){
                            toggleSelection(for: item.english)
                        }
                        
                    }
                }
                .padding(.horizontal,20)
            }
            Spacer()
            Button(action:{
            if let selected = selectedLanguage{print("Seclected language: \(selected)")
            }
            }){
                Text("Submit")
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(selectedLanguage == nil ? peimsryYellow.opacity(0.4):peimsryYellow)
                    .cornerRadius(24)
            }
            .disabled(selectedLanguage == nil)
            .padding(.horizontal,20)
            .padding(.bottom,20)
        }
        .background(Color.white.ignoresSafeArea())
    }
    private func toggleSelection(for languageKey: String){
        if selectedLanguage == languageKey{
            selectedLanguage = nil
        }else{
            selectedLanguage = languageKey
        }
    }
}
    struct LanguageCard: View{
        let nativeName: String
        let englishName: String
        let isSelected: Bool
        let seclectedColor: Color
        let unselectedColor: Color
        let action: () -> Void
        var body: some View{
            Button(action: action){
                VStack(spacing: 4){
                    Text(nativeName)
                       .font(.title3)
                    Text(englishName)
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 119)
                .background(isSelected ? seclectedColor : unselectedColor)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(isSelected ? seclectedColor : Color.gray.opacity(0.15),lineWidth: 1)
                )
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
    


#Preview {
    LanguageSelectionView()
}
