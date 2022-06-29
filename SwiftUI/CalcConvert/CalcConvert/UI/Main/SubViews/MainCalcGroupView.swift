//
//  MainCalcGroupView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/28.
//

import SwiftUI

struct MainCalcGroupView: View {
    
    private var type: GroupType = .calculate
    private var currentIndex: Int = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text(type.name)
                .foregroundColor(.gray800)
                .font(.system(size: 13, weight: .medium))
            
            VStack(alignment: .leading, spacing: 30, content: {
                ForEach(0..<(type.menus.count / 4) + 1) { index in
                    HStack(alignment: .center, spacing: 34, content: {
                        
                        ForEach(0..<4) { index in
                            makeButton()
                        }
                    })
                    .frame(maxWidth: .infinity)
                }
            })
            .padding(.top, 24)
            .padding(.bottom, 30)
            .background(RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.bgElevated)
                .shadow(color: .black.opacity(0.16), radius: 8, x: 0, y: 8)
            )
            
        })
    }
    
    private func makeButton() -> some View {
        
        let menu = type.menus[currentIndex]
        let returnBtn = Button(action: {
            print("menuTouch index =", currentIndex)
        }, label: {
            VStack(alignment: .center, spacing: 6, content: {
                Image(menu.imageName)
                
                Text(menu.iconName)
                    .foregroundColor(.gray900)
                    .font(.system(size: 13, weight: .regular))
            })
        })
            .frame(maxWidth: .infinity)
        
            currentIndex = currentIndex + 1
        return returnBtn
    }
}

struct MainCalcGroupView_Previews: PreviewProvider {
    static var previews: some View {
        MainCalcGroupView()
    }
}
