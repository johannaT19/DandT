//
//  ContentView.swift
//  D&T
//
//  Created by Johanna Tarento on 16/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            HStack(alignment: .top, spacing: 10) {
                Button(action: {}) {
                    Text("Menu")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, -1.0)
                }
                Spacer()
                Text("Dress & Try")
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding(0.0)
                Spacer()
            }
            Spacer().frame(height: 100)
            Text("Coucou")
            Spacer()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            

    }
}
