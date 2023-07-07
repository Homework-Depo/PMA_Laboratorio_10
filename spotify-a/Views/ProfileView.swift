//
//  ProfileView.swift
//  spotify-a
//
//  Created by Javier Aponte on 23/06/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    @State var isOnToggle: Bool = false
    
    var body: some View {
        ZStack {
            Color("dark").ignoresSafeArea()
            
            VStack {
                VStack(alignment: .center, spacing: 20) {
                    TextView(text: "Free Account")
                    HStack(alignment: .center, spacing: 0) {
                        Text("Go Premium")
                            .font(
                                .system(size: 12)
                                .weight(.bold)
                            )
                            .kerning(0.4)
                            .multilineTextAlignment(.center)
                            .foregroundColor(
                                Color("dark"))
                    }
                    .padding(.horizontal, 24)
                    .padding(.vertical, 0)
                    .frame(height: 40, alignment: .center)
                    .background(.white)
                    .cornerRadius(30)
                }
                
                HStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64)
                        .clipped()
                    
                    VStack(alignment: .leading) {
                        TextView(text: "Javier Aponte", size: 24)
                        TextView(text: "View Profile", color: .gray, size: 12, weight: .medium)
                    }
                    Spacer()
                    IconImageView(icon: "chevron.right", size: 16)
                }.padding()
                List(profileViewModel.settingList, id: \.self) {
                    item in
                    
                    VStack(alignment: .leading, spacing: 20) {
                        TextView(text: item.title, color: .black)
                        ForEach(item.child, id: \.self) {
                            iChild in
                            HStack(alignment: .center, spacing: 21) {
                                VStack(alignment: .leading, spacing: 4) {
                                    TextView(text: iChild.title, color: .black, size: 16)
                                    TextView(text: iChild.text, color: .black, size: 12)
                                }.frame(maxWidth: .infinity, alignment: .leading)
                                if iChild.haveToggle {
                                    Toggle(isOn: $isOnToggle) {
                                    }.frame(width: 48, height: 48)
                                }
                            }.frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
