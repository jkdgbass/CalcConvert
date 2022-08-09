//
//  SelectForm.swift
//  CalcConvert
//
//  Created by DoHyoung Kim on 2022/08/09.
//

import SwiftUI

struct SelectForm: View {
    
    public var displayStr: String!
    
    var body: some View {
        HStack {
            Text(displayStr)
                .foregroundColor(.gray900)
                .font(.system(size: 17, weight: .regular))
                .padding(.leading, 16)
            
            Spacer()
            
            Image("ico_sel_off")
                .padding(.trailing, 16)
        }
        .frame(height: 48, alignment: .center)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(.bgForm)
        )
    }
}

struct SelectForm_Previews: PreviewProvider {
    static var previews: some View {
        SelectForm(displayStr: "2021.03.25")
    }
}
