//
//  SystemState.swift
//  SmartCurtain
//
//  Created by yagi seijin on 2020/08/12.
//  Copyright © 2020 Loose Life Hack. All rights reserved.
//

import Foundation

enum UserReq {
    case none
    case autoOpen
    case autoClose
    case stop
}

enum CurtaionState {
    case stopping
    case openingOperation
    case closingOperation
}


class SystemState: ObservableObject{
    @Published var curtainState : CurtaionState = .stopping
}
