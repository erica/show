//  Copyright © 2020 Erica Sadun. All rights reserved.

import Foundation

// MARK: - Path Utility -

fileprivate extension RuntimeError {
    static let pathError = "Path failed to conform to expected functionality"
}

public extension String {
    /// The last path component of the receiver.
    var lastPathComponent: String { URL(fileURLWithPath: self).lastPathComponent }
    
    /// The file-system path components of the receiver.
    var pathComponents: [String] { URL(fileURLWithPath: self).pathComponents }
    
    /// A new string made by deleting the last path component from the receiver, along with any final path separator.
    var deletingLastPathComponent: String { URL(fileURLWithPath: self).deletingLastPathComponent().path }
    
    /// Returns a String constructed by appending the given path component to self.
    ///
    /// - parameter pathComponent: The path component to add.
    func appendingComponent(_ pathComponent: String) -> String {
        URL(fileURLWithPath: self).appendingPathComponent(pathComponent).path
    }
}

// MARK: - General Utility -

extension String {
    /// Returns a new string made by removing from both ends of the receiver characters contained
    /// in the whitespaces and new line character set.
    func trimmed() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
