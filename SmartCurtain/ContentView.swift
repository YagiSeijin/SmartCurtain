//
//  ContentView.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/14.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().barTintColor = UIColor(named: "tab")
    }
    @State private var selection = 0
 
    var body: some View {
        GeometryReader{ geometry in
            VStack(spacing: 1){
                //ステータスバーと同位置・同サイズのColorビューを配置
                Color.black
                    .frame(height: geometry.safeAreaInsets.top)
                //デバイス接続状態(BLEStateビュー)
                BleStateView()
                    .frame(height: geometry.size.height * 0.125)
                //Tabビュー
                TabView(selection: self.$selection){
                    //カーテン制御機能View
                    ControlView()
                        .font(.title)
                        .tabItem {
                            VStack {
                                Image(systemName: "gear")
                                Text("Control")
                            }
                    }.tag(0)
                    //カーテン開閉時刻設定View
                    AlarmView()
                        .font(.title)
                        .tabItem {
                            VStack {
                                Image(systemName: "alarm.fill")
                                Text("Alarm")
                            }
                    }.tag(1)
                }
            }} .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
