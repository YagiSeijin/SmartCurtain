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
            VStack(){
                // 窓とカーテンのイメージ画像
                ZStack(){
                    Image("blue_sky")
                    Image("role_curtain05")
                }
                HStack(){
                    // カーテン開けるボタン
                    Image("openBtn")
                    // カーテン閉めるボタン
                    Image("closeBtn")
                }
                // 作動を止めるボタン
                Image("stopBtn")
            }
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
