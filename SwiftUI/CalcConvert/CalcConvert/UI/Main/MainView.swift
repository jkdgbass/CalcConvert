//
//  MainView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/27.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HStack {
                Spacer()
                
                Button {
                    print("setting")
                } label: {
                    Image("ico_settingBtn")
                }
            }
            
            Text("계산기")
                .foregroundColor(.gray900)
                .font(.system(size: 34, weight: .medium))
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
            
            MainConvertGroupView()
                .padding(.horizontal, 16)
                .padding(.bottom, 48)
            
            MainCalcGroupView()
                .padding(.horizontal, 16)
            Spacer()
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
