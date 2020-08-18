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
        TabView(selection: $selection){
            Text("Control View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Control")
                    }
                }
                .tag(0)
            Text("Alarm View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                }
                .tag(1)
            Text("Search View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "antenna.radiowaves.left.and.right")
                        Text("Search")
                    }
                }
                .tag(2)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
