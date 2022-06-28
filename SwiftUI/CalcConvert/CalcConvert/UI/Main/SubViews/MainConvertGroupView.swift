//
//  MainConvertGroupView.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/28.
//

import SwiftUI

struct MainConvertGroupView: View {
    
    private var type: GroupType = .convert
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text(type.name)
                .foregroundColor(.gray800)
                .font(.system(size: 13, weight: .medium))
            
            HStack(alignment: .center, spacing: 34, content: {
                
                ForEach(type.menus, id: \.self) { menu in
                    Button {
                        print("menu Touch")
                    } label: {
                        VStack(alignment: .center, spacing: 6, content: {
                            Image(menu.imageName)
                            
                            Text(menu.iconName)
                                .foregroundColor(.gray900)
                                .font(.system(size: 13, weight: .regular))
                        })
                    }

                }

                Spacer()
            })
            .padding(.top, 24)
            .padding(.bottom, 30)
            .padding(.leading, 31)
            .background(RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.bgElevated)
                .shadow(color: .black.opacity(0.16), radius: 8, x: 0, y: 8)
            )
        })
    }
}

struct MainConvertGroupView_Previews: PreviewProvider {
    static var previews: some View {
        MainConvertGroupView()
    }
}
