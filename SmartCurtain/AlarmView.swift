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
        GeometryReader{ geometry in

            // 背景色を指定 画面の上半分
            Path { path in
               path.addLines([
                  CGPoint(x: 0, y: 0),
                  CGPoint(x: geometry.size.width, y: 0),
                  CGPoint(x: 0, y: geometry.size.height),
                  CGPoint(x: 0, y: 0)
               ])
            }.fill(Color("night"))
            
            // 背景色を指定 画面の下半分
            Path { path in
               path.addLines([
                  CGPoint(x: geometry.size.width, y: 0),
                  CGPoint(x: 0, y: geometry.size.height),
                  CGPoint(x: geometry.size.width, y: geometry.size.height),
                  CGPoint(x: geometry.size.width, y: 0)
               ])
            }.fill(Color("morning"))
            
            ZStack(){
                VStack(){
                    // 画面の上半分
                    HStack(){
                        Image("moon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width/4, height:
                                    geometry.size.height/5, alignment: .topLeading)
                        Spacer()
                    }
                    
                    Text("0:00")
                        .foregroundColor(Color.white)
                        .offset(x:-geometry.size.width/4,y:0)
                        .font(.system(size: geometry.size.width/6))
                    
                    Toggle(isOn: $toggle1IsOn){Text("")}
                        .offset(x:-geometry.size.width/4*3,y:0)
                    
                    Spacer()
                }
                
                VStack(){
                    // 画面の下半分
                    Spacer()
                    
                    Toggle(isOn: $toggle2IsOn){Text("")}
                        .offset(x:-geometry.size.width/8,y:0)
                    
                    Text("0:00")
                        .foregroundColor(Color.white)
                        .offset(x:geometry.size.width/4,y:0)
                        .font(.system(size: geometry.size.width/6))
                    
                    HStack(){
                        Spacer()
                        Image("sun")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width/4, height:
                                    geometry.size.height/5, alignment: .bottomTrailing)
                    }
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
