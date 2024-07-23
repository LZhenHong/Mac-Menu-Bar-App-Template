//
//  AppDelegate.swift
//  Mac-Menu-Bar-App-Template
//
//  Created by Eden on 2024/4/30.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationWillFinishLaunching(_ notification: Notification) {
        populateMainMenu()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        MenuBarItemController.shared.setUp()
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}

extension AppDelegate {
    /// https://github.com/sindresorhus/Settings/issues/40
    func populateMainMenu() {
        let mainMenu = NSMenu(title: "Main Menu")
        let fileMenuItem = mainMenu.addItem(withTitle: "File", action: nil, keyEquivalent: "")
        let submenu = NSMenu(title: NSLocalizedString("File", comment: "File Menu"))

        let closeWindowItem = NSMenuItem(title: NSLocalizedString("Close Window", comment: "Close Window menu item"),
                                         action: #selector(NSWindow.performClose(_:)),
                                         keyEquivalent: "w")
        submenu.addItem(closeWindowItem)

        mainMenu.setSubmenu(submenu, for: fileMenuItem)

        NSApp.mainMenu = mainMenu
    }
}
