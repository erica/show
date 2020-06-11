//  Copyright © 2020 Erica Sadun. All rights reserved.

import Foundation
import ArgumentParser

func toggleVisibility(of appName: String) throws {
    let script =
    """
    set appName to "\(appName)"
    tell application "System Events"
        if visible of application process appName is true then
            set visible of application process appName to false
        else
            set visible of application process appName to true
        end if
    end tell
    """
    
    _ = try Utility.execute(commandPath: "/usr/bin/osascript", arguments: ["-e", script])
}

struct Show: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "show/hide apps",
        discussion: """
            ss = Screen Sharing
            ps = Photoshop
        """
    )
    
    @Argument(help: "App name or known shortcut")
    var appName: String
    
    func run() throws {
        let name = [
            "ss": "Screen Sharing",
            "ps": "Photoshop"
            ][appName] ?? appName
        try toggleVisibility(of: name)
    }
}

Show.main()
