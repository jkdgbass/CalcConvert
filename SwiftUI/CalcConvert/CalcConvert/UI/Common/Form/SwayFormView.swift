//
//  SwayFormView.swift
//  CalcConvert
//
//  Created by DoHyoung Kim on 2022/08/09.
//

import SwiftUI

struct SwayFormView: View {
    
    @State var data: LunarViewModel!
    var body: some View {
        ZStack {
            HStack {
                Text(data.sourceName)
                    .foregroundColor(.gray900)
                    .font(.system(size: 17, weight: .regular))
                
                Image("ico_arrow")
                    .padding(.horizontal, 8)
                
                Text(data.targetName)
                    .foregroundColor(.gray900)
                    .font(.system(size: 17, weight: .regular))
            }
            
            HStack {
                Spacer()
                
                Image("ico_sel_off")
                    .padding(.trailing, 16)
            }
        }
        .frame(height: 48, alignment: .center)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(.bgForm)
        )
    }
}

struct SwayFormView_Previews: PreviewProvider {
    static var previews: some View {
        SwayFormView(data: LunarViewModel())
    }
}
