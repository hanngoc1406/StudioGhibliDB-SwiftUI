//
//  SearchBox.swift
//  StudioGhibliDB SwiftUI
//
//  Created by Phan Đức on 07/02/2024.
//

import SwiftUI

struct SearchBox: View {
   
   var backgroundColor = "ffffff"
   var alpha: Double = 1.0
   var cornerRound: Bool = false
   var completion: (String)->()
   
   @State var searchText = ""
   
   var body: some View {
      
      HStack {
         Image(systemName: "magnifyingglass")
            .padding([.top, .bottom], 16)
            .padding(.leading, 8)
         TextField("", text: $searchText, onCommit: {
            completion(searchText)
         })
         .padding(.trailing, 8)
         .accentColor(.white)
         .placeholder(when: searchText.isEmpty, alignment: .leading) {
            Text("Search").foregroundColor(.white)
         }
      }
      .background(Color(hex: backgroundColor, alpha: alpha))
      .cornerRadius(cornerRound ? 10 : 0, corners: [.allCorners])
      .foregroundColor(.white)
   }
}

#Preview {
   SearchBox(completion: {_ in 
      
   })
}
