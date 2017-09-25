//
//  deviceinfo.swift
//  Bavarian Exotics
//
//  Created by Maik Diebenkorn on 25.09.17.
//  Copyright © 2017 Maik Diebenkorn. All rights reserved.
//

import Foundation
import UIKit

let systemVersion = UIDevice.current.systemVersion
let model = UIDevice.current.model
let batteryState = UIDevice.current.batteryState
let localizedModel = UIDevice.current.localizedModel
let devicelanguage = Locale.current.languageCode

var iosversion = "iOS = \(systemVersion)"
var devicetype = "device type = \(model)"
var batterystate = "batterystate = \(batteryState)"
var localize = "localize = \(localizedModel)"
var currentdevicelanguage = "language = \(devicelanguage)"
