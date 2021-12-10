/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that displays an album cover.
*/

import SwiftUI

/// A view that displays an album cover.
///
/// You create an album cover by providing a ``AlbumCover`` binding.
/// Depending on the attributes and state of the provided album cover,
/// the view loads a matching image representation, such as:
///
/// ```swift
/// @State private var albumCover: AlbumCover
///
/// var body: some View {
///     AlbumCoverView(albumCover: $albumCover)
/// }
/// ```
public struct AlbumCoverView: View {
    @Binding var albumCover: AlbumCover
    
    /// Creates a view that displays the specified album cover.
    public init(albumCover: Binding<AlbumCover>) {
        self._albumCover = albumCover
    }
    
    public var body: some View {
        Image("\(albumCover.background)-background", bundle: Bundle.module)
            .resizable()
            .scaledToFit()
            .padding()
            .overlay(TextOverlayView(albumCover: albumCover), alignment: .bottom)
            .colorMultiply(albumCover.color)
    }
}

struct AlbumCoverView_Previews: PreviewProvider {
    @State static var albumCover = AlbumCover(title: "Album Cover Title", color: .yellow, background: .fire)
    
    static var previews: some View {
        AlbumCoverView(albumCover: $albumCover)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}

