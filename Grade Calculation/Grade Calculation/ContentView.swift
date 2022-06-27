//
//  ContentView.swift
//  Grade Calculation
//
//  Created by Abdullah Aiban on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var result = ""
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .ignoresSafeArea()
        VStack{
            Text("حاسبة الدرجات")
                .font(.system(size: 50))
                .foregroundColor(Color.white)
            Image("Calculator")
                .resizable()
                .frame(width: 250, height: 250)
            TextField("Enter your grade", text: $grade)
                .background(Color.white)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 450, height: 100)
                .font(.system(size: 25))
            Divider()
            Text("Calculate!")
                .frame(width: 200, height: 100)
                .font(.system(size: 30))
                .background(Color.yellow)
                .clipShape(Capsule())
                .onTapGesture {
                    if Int(grade) ?? 0 >= 90 {
                        result = "ممتاز"
                    }
                    else if Int(grade) ?? 0 >= 80 {
                        result = "جيد جدا"
                    }
                    else if Int(grade) ?? 0 >= 70 {
                        result = "جيد"
                    }
                    else if Int(grade) ?? 0 >= 60 {
                        result = "مقبول"
                    }
                    else {
                        result = "راسب"
                    }
                }
            Text("لقد حصلت على درجة")
                .font(.system(size: 30))
                .foregroundColor(Color.white)
            Spacer()
            Text(result)
                .font(.system(size: 100))
                .foregroundColor(Color.white)
            Spacer()
        }
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
