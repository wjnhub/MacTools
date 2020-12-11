//
//  ContentView.swift
//  MacTools
//
//  Created by wjn on 2020/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ClearCollectView()
            ClearListView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.white : Color.white)
            .background(configuration.isPressed ? Color.green : Color.green)
            .cornerRadius(8.0)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ClearCollectView: View {
    var body: some View {
        HStack {
            Image("clear")
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
            VStack(alignment: .leading) {
                Text("128MB")
                    .font(.headline)
                    .padding(.bottom, 1)
                    .multilineTextAlignment(.leading)
                Text("垃圾可清理")
                    .foregroundColor(Color.gray)
            }
            Spacer()
            
            Button(action:{
                print("点击清理")
            }){
                Text("清理")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                
            }.padding()
            .buttonStyle(BlueButtonStyle())
        }.padding()
    }
}

struct ClearListView: View {
    var body: some View {
        List {
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
            ClearListItem()
        }
    }
}

struct ClearListItem: View {
    var body: some View {
        HStack {
            Image("clear")
                .resizable()
                .frame(width: 20, height: 20, alignment: .leading)
            Text("微信")
                .foregroundColor(Color.gray)
            Spacer()
            Text("659MB")
        }
    }
}
