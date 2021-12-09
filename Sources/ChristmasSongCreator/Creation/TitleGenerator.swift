/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A utility type that generates titles for album covers.
*/

/// A type that generates titles for album covers.
public protocol TitleGenerator {
    /// Generates a title for an album cover.
    ///
    /// - parameter seed: A value that influences randomness.
    func generateTitle(seed: Int) -> String
}
