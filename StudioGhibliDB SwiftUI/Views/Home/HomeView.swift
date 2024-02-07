//
//  HomeView.swift
//  StudioGhibliDB SwiftUI
//
//  Created by Phan Đức on 07/02/2024.
//

import SwiftUI

struct HomeView: View {
   
   @State var stringDemo: String = ""
   
   var body: some View {
      ZStack {
         VStack {
            HStack {
               Text("Studio Ghibli Inc.")
                  .padding([.top, .bottom], 16)
            }
            
            SearchBox(backgroundColor: "3C3C43", alpha: 0.3, cornerRound: true, completion: { value in
               stringDemo = value
            })
            .padding([.leading, .trailing], 16)
            
            Text(stringDemo)
            
            Spacer()
         }
      }
   }
}

#Preview {
    HomeView()
}
