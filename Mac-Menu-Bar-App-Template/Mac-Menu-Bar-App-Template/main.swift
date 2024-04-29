//
//  main.swift
//  Mac-Menu-Bar-App-Template
//
//  Created by Eden on 2024/4/30.
//

import Cocoa

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
