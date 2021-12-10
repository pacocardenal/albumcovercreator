# Getting Started with Album Covers

Create an album cover and assign background, title and tint color.

## Overview

Album covers are pieces of art that requires a beautiful, clear and precise design. After creating an album art, you can sit and relax watching your masterpiece, and giving it opportunities to glow.

Every album cover has a ``AlbumCover/title`` and ``AlbumCover/background-swift.property``. You can optionally provide a ``AlbumCover/color`` if you want to customize your album cover.

![A diagram with the four background types: ice, fire, wind and lightning.](backgrounds.png)

### Create an Album Cover

To create an album cover without any background, you initialize a new instance of the ``AlbumCover`` structure, and supply a title and an overlay color, as the following code shows:

```swift
var uglyAlbumCover = AlbumCover(title: "Ugly album cover", color: .red, background: .none)
```

If you want to create an album cover with a custom background of `ice`, `fire`, `wind`, or `lightning`, you can specify this at creation:

```swift
var greatAlbumCover = AlbumCover(title: "Great album cover", color: .green, background: .lightning)
```

If you're creating a large number of album covers, you can define your own random name generator that conforms to the ``TitleGenerator`` protocol, and use it to generate names:

```swift
let albumCoverNamer = MyCustomAlbumCoverNamer()
var albumCovers: [AlbumCover] = []

for _ in 0...100 {
    let title = albumCoverNamer.generateTitle(seed: 0)
    var albumCover = AlbumCover(title: name, color: .green, background: .ice)
    
    albumCovers.append(albumCover)
}
```
