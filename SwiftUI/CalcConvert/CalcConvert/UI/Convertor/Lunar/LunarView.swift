//
//  LunarView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/27.
//

import SwiftUI

struct LunarView: View {
    
    @StateObject var viewModel = LunarViewModel()
    
    var body: some View {
        VStack {
            BasicNavigationView(viewName: "음력 계산기")
                .padding(.bottom, 60)
            
            HStack {
                SwayFormView(data: viewModel)
                    .padding(.trailing, 16)
                
                Button {
                    viewModel.toggle()
                } label: {
                    Image("ico_shift")
                }

            }
            .padding(.horizontal, 16)
            .padding(.bottom, 23)
            
            VStack(alignment: .leading, spacing: 9, content: {
                Text(viewModel.sourceName)
                    .foregroundColor(.gray800)
                    .font(.system(size: 13, weight: .regular))
                
                HStack {
                    SelectForm(displayStr: viewModel.sourceDateString)
                        .padding(.trailing, 16)
                    
                    Button {
                        print("nice")
                    } label: {
                        Text("변환")
                            .foregroundColor(.gray900)
                            .font(.system(size: 17, weight: .medium))
                    }
                    .frame(width: 48, height: 48, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(.pink500)
                    )
                    

                }
            })
            .padding(.horizontal, 16)
            .padding(.bottom, 23)
            
            VStack(alignment: .leading, spacing: 9, content: {
                Text(viewModel.sourceName)
                    .foregroundColor(.gray800)
                    .font(.system(size: 13, weight: .regular))
                
                ResultForm(displayStr: viewModel.targetDateString)
            })
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .background(Color.bg)
    }
}

struct LunarView_Previews: PreviewProvider {
    static var previews: some View {
        LunarView()
    }
}
