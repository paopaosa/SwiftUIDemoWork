//
//  LoadingView.swift
//  SwiftUIDemoWork
//
//  Created by macpps on 2019/8/6.
//  Copyright © 2019 PUM. All rights reserved.
//

import SwiftUI

struct LoadingView<Content>: View where Content: View {
    @Binding var isShowing: Bool
    var content: () -> Content
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                self.content()
                    .disabled(self.isShowing)
                    .blur(radius: self.isShowing ? 3.0 : 0.0)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    ActivityIndicator(isAnimating: .constant(self.isShowing), style: .large)
                    Text("Loading.").foregroundColor(Color.black)
                }
                .frame(width: geometry.size.width / 2,
                       height: geometry.size.height / 5)
                    .background(Color.secondary.colorInvert())
                    .foregroundColor(Color.primary)
                    .cornerRadius(20.0)
                    .shadow(radius: 10.0)
                    .opacity(self.isShowing ? 1 : 0)
            }
        }
    }
}

#if DEBUG
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(isShowing: .constant(true)) {
            SwiftUI.Color.red.edgesIgnoringSafeArea(.all)
        }
    }
}
#endif
