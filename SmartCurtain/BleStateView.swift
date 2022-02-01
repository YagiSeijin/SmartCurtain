//
//  BleStateView.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/26.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import UIKit
import SwiftUI

struct BleStateView: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("bleview_top"), Color("bleview_bottom")]), startPoint: .top, endPoint: .bottom)
            GeometryReader{ geometry in
                HStack{
                    Spacer()
                        .frame(width: geometry.size.width * 0.1)
                    VStack(){
                        Spacer()
                            .frame(height: geometry.size.height * 0.1)
                        startWaveAnimation(height: geometry.size.height * 0.7)
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

struct startWaveAnimation: UIViewRepresentable {
    
    @State var height: CGFloat
    
    func makeUIView(context: Self.Context) -> UIView {

        let waveImages : [UIImage]! = [UIImage(named: "wave02")!, UIImage(named: "wave03")!, UIImage(named: "wave04")!, UIImage(named: "wave05")!]
        let waveAnimation = UIImage.animatedImage(with: waveImages, duration: 2.3)
        let ratio = height / waveImages[0].size.height

        let animationView = UIView(frame: CGRect(x: 0, y: 0, width: waveImages[0].size.width * ratio, height: height))
        let waveImage = UIImageView(frame: CGRect(x:0,y:0, width: waveImages[0].size.width * ratio, height: height))
        
        waveImage.clipsToBounds = true
        waveImage.autoresizesSubviews = true
        waveImage.contentMode = UIView.ContentMode.scaleAspectFit
        waveImage.image = waveAnimation

        animationView.addSubview(waveImage)
        
        return animationView

    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<startWaveAnimation>) {
    }
}
