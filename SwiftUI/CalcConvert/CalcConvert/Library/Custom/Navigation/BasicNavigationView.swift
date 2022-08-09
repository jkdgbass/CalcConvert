//
//  BasicNavigationView.swift
//  CalcConvert
//
//  Created by DoHyoung Kim on 2022/08/09.
//

import SwiftUI

struct BasicNavigationView: View {
    public var viewName: String!
    
    var body: some View {
        ZStack {
            Text(viewName)
                .foregroundColor(.gray900)
                .font(.system(size: 17, weight: .medium))
            
            HStack {
                Button {
                    print("nice")
                } label: {
                    Image("backBtn")
                }

                Spacer()
            }
        }
    }
}

struct BasicNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BasicNavigationView(viewName: "계산기")
    }
}
