//
//  ContentView.swift
//  Azkar
//
//  Created by Abdullah Aiban on 28/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var azkar1 = 0
    @State var azkar2 = 0
    @State var azkar3 = 0
    
    var body: some View {
        VStack{
            Spacer()
            ExtractedView(azkar1: $azkar1)
            Spacer()
            ExtractedView1(azkar2: $azkar2)
            Spacer()
            ExtractedView2(azkar3: $azkar3)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var azkar1 : Int
    var body: some View {
        HStack{
            Spacer()
            Text("استغفر الله العظيم")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
            Text("\(azkar1)")
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .font(.system(size: 30))
                .clipShape(Circle())
                .onTapGesture {
                    azkar1 = azkar1 + 1
                }
            Spacer()
        }
    }
}

struct ExtractedView1: View {
    @Binding var azkar2 : Int
    var body: some View {
        HStack{
            Spacer()
            Text("سبحان الله وبحمده")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
            Text("\(azkar2)")
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .font(.system(size: 30))
                .clipShape(Circle())
                .onTapGesture {
                    azkar2 = azkar2 + 1
                }
            Spacer()
        }
    }
}

struct ExtractedView2: View {
    @Binding var azkar3 : Int
    var body: some View {
        HStack{
            Spacer()
            Text("سبحان الله العظيم")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Spacer()
            Text("\(azkar3)")
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .font(.system(size: 30))
                .clipShape(Circle())
                .onTapGesture {
                    azkar3 = azkar3 + 1
                }
            Spacer()
        }
    }
}
