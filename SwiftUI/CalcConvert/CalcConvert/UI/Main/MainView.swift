//
//  MainView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    print("setting")
                } label: {
                    Image("ico_settingBtn")
                }
            }
            
            
            MainConvertGroupView()
                .padding(.horizontal, 16)
            
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
