/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A utility type that generates album covers.
*/

/// A type that generates songs.
public protocol AlbumCoverGenerator {
    /// Generates a song
    func generateSong() throws -> AlbumCover
}
