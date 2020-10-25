//
//  ControlView.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/24.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import SwiftUI

struct ControlView: View {
    var body: some View {
        ZStack{
            Color("background")
            GeometryReader{ geometry in
                VStack(){
                    Spacer()
                        .frame(height: geometry.size.height * 0.05)
                    // 窓とカーテンのイメージ画像
                    ZStack(){
                        Image("blue_sky")
                            .resizable()
                            .scaledToFit()
                        Image("role_curtain05")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.45)
                    
                    Spacer()
                        .frame(height: geometry.size.height * 0.1)
                    
                    HStack(){
                        Spacer()
                        // カーテン開けるボタン
                        Image("openBtn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.4)

                        Spacer()
                        // カーテン閉めるボタン
                        Image("closeBtn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.4)
                        Spacer()
                    }
                    Spacer()
                        .frame(height: geometry.size.height * 0.05)
                    // 作動を止めるボタン
                    Image("stopBtn")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.4)
                    Spacer()
                }
            }
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
