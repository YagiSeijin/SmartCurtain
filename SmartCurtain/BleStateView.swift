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
            LinearGradient(gradient: Gradient(colors: [Color("bleview_top"), Color("bleview_bottom")]), startPoint: .top, endPoint: .bottom)
            GeometryReader{ geometry in
                HStack{
                    VStack(){
                        Image("wave04")
                            .resizable()
                            .scaledToFit()
                            .frame(height: geometry.size.height * 0.7)
                    }
                    VStack{
                        Spacer()
                            .frame(height: geometry.size.height * 0.5)
                        Text("デバイス検索中")
                            .bold()
                            .frame(width: geometry.size.width * 0.35, alignment: .leading)
                    }
                    VStack{
                        Spacer()
                            .frame(height: geometry.size.height * 0.2)
                        Image("searchBtn")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.25)
                    }
                }
            }
        }
    }
}

struct BleStateView_Previews: PreviewProvider {
    static var previews: some View {
        BleStateView()
    }
}
