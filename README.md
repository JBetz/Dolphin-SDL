# Dolphin-SDL
Dolphin Smalltalk language bindings to to the Simple DirectMedia Layer (SDL) library.

## Why Dolphin-SDL?

You might want to use Dolphin-SDL if:

* You prefer Dolphin over other Smalltalks but don't want to be tightly coupled to Windows and the Win32 API. Building on top of SDL means that you can build your application in Dolphin, and then port to another Smalltalk without having to rewrite the window management, input handling, and rendering layer.
* You want to build custom widgets and are running into performance issues with GDI+, but don't want to give up on the advantages it has over GDI. SDL provides hardware-accelerated 2D graphics with alpha blending, so you get the best of both.
* You're looking forward to [SDL3's planned GPU API for 3D graphics](https://www.patreon.com/posts/new-project-top-58563886) and want to build 3D widgets or video games with Smalltalk when it's ready

## Getting Started
* Install [Dolphin Smalltalk 7.2](https://github.com/dolphinsmalltalk/Dolphin)
* Install `SDL*.pax` in a Dolphin image
* Obtain SDL's Windows 32-bit binaries. The simplest way is to copy the DLL files in the `bin` directory of this repo. For more up to date build, you can also download release artifacts from https://github.com/JBetz/build-sdl3-win32/releases or build directly from SDL source. As soon as SDL 3.2 is released, there will be release builds published to the official SDL repo, which at that point will become recommended method.
* Copy DLLs into the same directory as the Dolphin image
