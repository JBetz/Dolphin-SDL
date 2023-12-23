# Dolphin-SDL
Dolphin Smalltalk language bindings to to the Simple DirectMedia Layer (SDL) library.

## Why Dolphin-SDL?

You might want to use Dolphin-SDL if:

* You prefer Dolphin over other Smalltalks but don't want to be tightly coupled to Windows and the Win32 API. Building on top of SDL means that you can build your application in Dolphin, and then port to another Smalltalk without having to rewrite the window management, input handling, and rendering layer.
* You want to build custom widgets and are running into performance issues with GDI+, but don't want to give up on the advantages it has over GDI. SDL provides hardware-accelerated 2D graphics with alpha blending, so you get the best of both.
* You're looking forward to [SDL3's planned GPU API for 3D graphics](https://www.patreon.com/posts/new-project-top-58563886) and want to build 3D widgets or video games with Smalltalk when it's ready

## Getting Started
* Install [Dolphin Smalltalk 7.1](https://github.com/dolphinsmalltalk/Dolphin)
* Install `SDL*.pax` in a Dolphin image
* Download SDL's Windows 32-bit binaries: [SDL, SDL_ttf, SDL_image](https://github.com/JBetz/build-sdl3-win32/releases)
* Unpack the zip file and copy DLLs into the same directory as the Dolphin image
