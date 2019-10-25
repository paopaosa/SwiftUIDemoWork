//
//  FirstDetailView.swift
//  SwiftUIDemoWork
//
//  Created by macpps on 2019/8/7.
//  Copyright © 2019 PUM. All rights reserved.
//

import SwiftUI

struct FirstDetailView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill").resizable().frame(width: 32, height: 32)
            Text("name: Hello")
            Spacer()
        }
    }
}

#if DEBUG
struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView()
    }
}
#endif
