//
//  AlarmView.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/26.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import SwiftUI

struct AlarmView: View {
    @State var toggle1IsOn = false
    @State var toggle2IsOn = false
    var body: some View {
        VStack(){
            // 画面の上半分
            ZStack(){
                // 背景色を指定
                Color("night")
                VStack(){
                    Image("moon")
                        .resizable()
                        .scaledToFit()
                    Text("0:00")
                    Toggle(isOn: $toggle1IsOn){Text("")}
                }
            }
            // 画面の下半分
            ZStack(){
                // 背景色を指定
                Color("morning")
                VStack(){
                    Toggle(isOn: $toggle2IsOn){Text("")}
                    Text("0:00")
                    Image("sun")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
