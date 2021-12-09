/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model type for the background of an album cover.
*/

import Foundation

extension AlbumCover {
    /// The background of an album cover.
    public enum Background: String, CaseIterable, CustomStringConvertible {
        /// The ice background.
        ///
        /// Ice background recreates freezing temperatures.
        /// We all get the same amount of ice. The rich get it in the summer. The poor get it in the winter.
        case ice

        /// The fire background.
        ///
        /// Welcome to boiling temperatures. It is time to take a lava bath.
        /// Success isn't a result of spontaneous combustion. You must set yourself on fire.
        case fire

        /// The wind background.
        ///
        /// Fly me to the moon and feel the wind.
        /// You find out the strength of a wind by trying to walk against it, not by lying down.
        case wind

        /// The lightning background.
        ///
        /// Beware of stormy climates.
        /// Thunder is good, thunder is impressive; but it is lightning that does all the work.
        case lightning

        /// No background.
        ///
        /// Minimalist design. Clear, simply and... pretty?.
        /// Maybe it is not the best choice, but it is all up to you.
        case none
        
        public var description: String {
            return rawValue
        }
    }
}
