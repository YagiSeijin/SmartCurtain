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
                        startCurtainAnimation(width: geometry.size.width * 0.9, height:  geometry.size.height * 0.45, curtainImages: openImages)
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

let curtainImgName = [
    "role_curtain09",
    "role_curtain08",
    "role_curtain07",
    "role_curtain06",
    "role_curtain05",
    "role_curtain04",
    "role_curtain03",
    "role_curtain02",
    "role_curtain01"
]

let openImages : [UIImage]! = [UIImage(named: curtainImgName[0])!, UIImage(named: curtainImgName[1])!, UIImage(named: curtainImgName[2])!, UIImage(named: curtainImgName[3])!, UIImage(named: curtainImgName[4])!, UIImage(named: curtainImgName[5])!, UIImage(named: curtainImgName[6])!, UIImage(named: curtainImgName[7])!, UIImage(named: curtainImgName[8])!]

let closeImages : [UIImage]! = [UIImage(named: curtainImgName[8])!, UIImage(named: curtainImgName[7])!, UIImage(named: curtainImgName[6])!, UIImage(named: curtainImgName[5])!, UIImage(named: curtainImgName[4])!, UIImage(named: curtainImgName[3])!, UIImage(named: curtainImgName[2])!, UIImage(named: curtainImgName[1])!, UIImage(named: curtainImgName[0])!]

struct startCurtainAnimation: UIViewRepresentable {
    
    @State var width : CGFloat
    @State var height : CGFloat
    @State var curtainImages : [UIImage]
    
    func makeUIView(context: Self.Context) -> UIView {
        
        let curtainAnimation = UIImage.animatedImage(with: curtainImages, duration: 4)
        let ratio = height / curtainImages[0].size.height
        let x = ( width - curtainImages[0].size.width * ratio ) / 2

        let animationView = UIView(frame: CGRect(x: x, y: 0, width: curtainImages[0].size.width * ratio, height: height))
        let curtainImage = UIImageView(frame: CGRect(x: x,y:0, width: curtainImages[0].size.width * ratio, height: height))

        curtainImage.clipsToBounds = true
        curtainImage.autoresizesSubviews = true
        curtainImage.contentMode = UIView.ContentMode.scaleAspectFit
        curtainImage.image = curtainAnimation
                
        animationView.addSubview(curtainImage)

        return animationView

    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<startCurtainAnimation>) {
    }
}
