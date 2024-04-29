//
//  AppDelegate.swift
//  Mac-Menu-Bar-App-Template
//
//  Created by Eden on 2024/4/30.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        MenuBarItemController.shared.setUp()
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
