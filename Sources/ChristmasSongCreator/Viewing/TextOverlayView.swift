/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that displays an overlayed text.
*/

import SwiftUI

/// A view that displays an overlayed text.
///
/// You create an overlayed text view providing a ``AlbumCover`` object.
/// Depending on the attributes and state of the provided album cover,
/// the view loads a matching text, such as:
///
/// ```swift
/// @State private var albumCover: AlbumCover
///
/// var body: some View {
///     TextOverlayView(albumCover: albumCover)
/// }
/// ```
public struct TextOverlayView: View {
    private var albumCover: AlbumCover
    
    /// Creates a view that displays the specified album cover title.
    public init(albumCover: AlbumCover) {
        self.albumCover = albumCover
    }
    
    public var body: some View {
        ZStack {
            Text(albumCover.title)
                .font(.callout)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}

struct TextOverlayView_Previews: PreviewProvider {
    @State static var albumCover = AlbumCover(title: "Christmas song", color: .red, background: .ice)
    
    static var previews: some View {
        TextOverlayView(albumCover: albumCover)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
