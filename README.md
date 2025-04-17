# Dolphin-SDL
Dolphin Smalltalk language bindings to the Simple DirectMedia Layer (SDL) library.

## Why Dolphin-SDL?

You might want to use Dolphin-SDL if:

* You prefer Dolphin over other Smalltalks but don't want to be tightly coupled to Windows and the Win32 API. Building on top of SDL means that you can build your application in Dolphin, and then port to another Smalltalk without having to rewrite all of the Windows-specific functionality that SDL abstracts over.
* You want to build custom widgets and are running into performance issues with GDI+, but don't want to give up on the advantages it has over GDI. SDL's 2D renderer provides hardware-accelerated 2D graphics with alpha blending, so you get the best of both.
* You want to use [SDL3's GPU API](https://wiki.libsdl.org/SDL3/CategoryGPU) for 3D graphics.

## Getting Started
* Install [Dolphin Smalltalk 7.2](https://github.com/dolphinsmalltalk/Dolphin)
* Install `SDL*.pax` in a Dolphin image
* Download SDL's Windows 32-bit binaries from the official SDL repos:
    * [SDL3](https://github.com/libsdl-org/SDL/releases)
    * [SDL3_ttf](https://github.com/libsdl-org/SDL_ttf/releases)
    * [SDL3_image](https://github.com/libsdl-org/SDL_image/releases)
* Copy DLLs into the same directory as the Dolphin image
