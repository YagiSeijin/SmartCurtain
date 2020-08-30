//
//  BleStateView.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/26.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import SwiftUI

struct BleStateView: View {
    var body: some View {
        ZStack{
            Color("background")
            VStack(){
                Image("wave04")
                Text("デバイス検索中")
                Image("searchBtn")
            }
        }
    }
}

struct BleStateView_Previews: PreviewProvider {
    static var previews: some View {
        BleStateView()
    }
}
