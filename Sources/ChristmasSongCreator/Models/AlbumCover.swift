/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model type for an album cover.
*/

import Foundation
import UIKit
import SwiftUI

/// A model representing an album cover.
///
/// Album covers are, sometimes, the best part of a music album.
/// It includes a background overlayed with a tint color and, of course, a title
///
/// You can create an album cover using the ``init(title:color:background:)`` initializer
///
/// ```swift
/// let albumCoverGenerator = AlbumCoverGenerator()
/// do {
///     let albumCover = try albumCoverGenerator.generateSong()
/// } catch {
///     fatalError(String(describing: error))
/// }
/// ```
public struct AlbumCover {
    
    /// The title of the song.
    public var title: String
    
    /// The tint color of the overlay.
    public var color: Color
    
    /// The background of the album cover.
    public var background: Background
    
    /// Creates an album cover with the specified title, background and overlay color.
    ///
    /// - Parameters:
    ///   - title: The title of the album cover.
    ///   - color: The overlay color of the album cover.
    ///   - background: The background of the album cover.
    public init(title: String, color: Color, background: Background) {
        self.title = title
        self.color = color
        self.background = background
    }
    
}

