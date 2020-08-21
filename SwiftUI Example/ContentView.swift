//
//  ContentView.swift
//  SwiftUI Example
//
//  Created by Hassan Shahid on 15.8.2020.
//  Copyright © 2020 Hassan Shahid. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var lblName = "Hassan"
     let arrNames = ["Hassan", "Shahid", "Adeel","Nafees","Sameer"]
     
    var body: some View {
        VStack{
            
            MapView()
                
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            VStack(alignment: .leading) {
                Text(lblName)
                    .font(.title)
                }
                
                List {
                    ForEach(arrNames, id: \.self) { string in
                        Button(action: {
                            print(string)
                            self.lblName = string
                        }) {
                        Text(string)
                        }
                    }
                }
                Spacer()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

