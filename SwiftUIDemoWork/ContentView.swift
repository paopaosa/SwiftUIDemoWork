//
//  ContentView.swift
//  SwiftUIDemoWork
//
//  Created by macpps on 2019/8/6.
//  Copyright © 2019 PUM. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            LoadingView(isShowing: .constant(false)){
                NavigationView {
                    FirstView()
//                        .navigationBarTitle(Text("Home"), displayMode: .inline).background(SwiftUI.Color.white.edgesIgnoringSafeArea(.all))
                }
            }
            .tabItem {
                VStack {
                    Image("tabBarIconHomeSel")
                    Text("首页")
                }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("tabBarIconHelpNor")
                        Text("分类")
                    }
            }
            .tag(1)
            Text("Third View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("设置")
                    }
            }
            .tag(2)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
              .previewDisplayName("iPhone SE")

           ContentView()
              .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
              .previewDisplayName("iPhone XS Max")
        }
    }
}
#endif
