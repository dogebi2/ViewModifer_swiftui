//
//  ContentView.swift
//  ViewModifer_swiftui
//
//  Created by rainxlh on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:50){
            Text("Hello, world!")
                .myRoundedTextStyle()
            
            Text("Hello, world!")
                .myRoundedTextStyle()
            
            Image(systemName: "book")
                .myRoundedTextStyle()
            
            Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .myRoundedTextStyle()
        }

    }
}

//뷰를 꾸며주는 모디파이어이다.
struct MyRoundedText: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).stroke(lineWidth: 10).foregroundColor(.red))
    }
}

extension View{
    func myRoundedTextStyle() -> some View{
        modifier(MyRoundedText())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
