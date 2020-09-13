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
                Spacer().background(Color.blue)
                // 窓とカーテンのイメージ画像
                ZStack(){
                    Image("blue_sky")
                    Image("role_curtain05")
                }
                Spacer().background(Color.blue)
                HStack(){
                    Spacer().background(Color.blue)
                    // カーテン開けるボタン
                    Image("openBtn")
                    Spacer().background(Color.blue)
                    // カーテン閉めるボタン
                    Image("closeBtn")
                    Spacer().background(Color.blue)
                }
                Spacer().background(Color.blue)
                // 作動を止めるボタン
                Image("stopBtn")
                Spacer().background(Color.blue)
            }
        }
    }
}

struct ControlView_Previews: PreviewProvider {
    static var previews: some View {
        ControlView()
    }
}
