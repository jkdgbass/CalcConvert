//
//  LabelResultView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/28.
//

import SwiftUI

struct LabelResultView: View {
    public var name: String
    public var resultValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            Text(name)
                .foregroundColor(.gray800)
                .font(.system(size: 13, weight: .regular))
                .padding(.bottom, 4)
            
            Text(resultValue)
                .foregroundColor(.gray700)
                .font(.system(size: 17, weight: .regular))
        })
    }
}

struct LabelResultView_Previews: PreviewProvider {
    static var previews: some View {
        LabelResultView(name: "밀리미터(mm)", resultValue: "0")
    }
}
