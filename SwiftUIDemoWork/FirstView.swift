//
//  FirstView.swift
//  SwiftUIDemoWork
//
//  Created by macpps on 2019/8/6.
//  Copyright © 2019 PUM. All rights reserved.
//

import SwiftUI
import LiveDemoLibrary

struct FirstView: View {
    @State var showAlert = false
    var body: some View {
        ZStack {
            SwiftUI.Color(red: 0.3, green: 0.2, blue: 0.7).edgesIgnoringSafeArea(.bottom)
                //            VStack {
                //
                //                Text("Loading")
                //            }
                .foregroundColor(.yellow)
            //            VStack(alignment: .leading, spacing: 10.0) {
            //                Text("Placeholder").foregroundColor(.white)
            //                Text("This is the first page!").foregroundColor(.white)
            //                Text("This is the very long text middle of  my pages!This is the very long text middle of  my pages!").foregroundColor(.white)
            //                Rectangle().foregroundColor(.clear)
            //            }
            //            .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            List(["A", "B", "C", "D", "E", "F", "G"], id: \.self) { row in
//                Button(action: {
//                    self.showAlert = true
//                }) {
//                    HStack {
//                        Image(systemName: "person.fill").resizable().frame(width: 32, height: 32)
//                        Text("name: \(row)")
//                        Spacer()
//                    }
//                }
//                .alert(isPresented: .constant(self.showAlert)) { () -> Alert in
//                    Alert(title: Text("Your Score"), message: Text("U Click \(row)"))
//                }
                return NavigationLink(destination: FirstDetailView()) {
                    HStack {
                        Image(systemName: "person.fill").resizable().frame(width: 32, height: 32)
                        Text("name: \(row) \(LiveDemoLibrary.he)")
                        Spacer()
                    }
                }
            }.navigationBarTitle(Text("Home"), displayMode: .automatic)
        }
    }
}

#if DEBUG
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
#endif
