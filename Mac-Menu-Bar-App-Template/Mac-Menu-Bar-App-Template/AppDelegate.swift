//
//  AppDelegate.swift
//  Mac-Menu-Bar-App-Template
//
//  Created by Eden on 2024/4/30.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
  func applicationWillFinishLaunching(_: Notification) {
    populateMainMenu()
  }

  func applicationDidFinishLaunching(_: Notification) {
    MenuBarItemController.shared.setUp()
  }

  func applicationSupportsSecureRestorableState(_: NSApplication) -> Bool {
    true
  }
}

extension AppDelegate {
  /// https://github.com/sindresorhus/Settings/issues/40
  func populateMainMenu() {
    let mainMenu = NSMenu(title: "Main Menu")
    let fileMenuItem = mainMenu.addItem(withTitle: "File", action: nil, keyEquivalent: "")
    let submenu = NSMenu(title: String(localized: "File"))

    let closeWindowItem = NSMenuItem(title: String(localized: "Close Window"),
                                     action: #selector(NSWindow.performClose(_:)),
                                     keyEquivalent: "w")
    submenu.addItem(closeWindowItem)

    mainMenu.setSubmenu(submenu, for: fileMenuItem)

    NSApp.mainMenu = mainMenu
  }
}
