//
//  ResultForm.swift
//  CalcConvert
//
//  Created by DoHyoung Kim on 2022/08/09.
//

import SwiftUI

struct ResultForm: View {
    public var displayStr: String!
    
    var body: some View {
        HStack {
            Text(displayStr)
                .foregroundColor(.pink800)
                .font(.system(size: 17, weight: .regular))
                .padding(.horizontal, 16)
            
            Spacer()
        }
        .frame(height: 48, alignment: .center)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(.bgFormDisable)
        )
    }
}

struct ResultForm_Previews: PreviewProvider {
    static var previews: some View {
        ResultForm(displayStr: "")
    }
}
