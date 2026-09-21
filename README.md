<a href="https://github.com/mxtherfxcker/reVC"><img src="https://github.com/mxtherfxcker/reVC/blob/miami/res/images/logo_1024.png?raw=true" alt="reVC logo" width="20%" height="100%"></a>

> [!NOTE]
> Original repository here: https://github.com/mrxenginner/reVC

> [!CAUTION]
> This fork is being developed for Windows OS.  
> Support for other systems is not intended in this fork.

## Intro

In this repository you'll find the fully reversed source code for GTA VC ([miami](https://github.com/mxtherfxcker/reVC) branch).

> [!NOTE]
> Rendering is handled either by original RenderWare (D3D8) or the reimplementation [librw](https://github.com/aap/librw) (D3D9, OpenGL 2.1 or above, OpenGL ES 2.0 or above).\
> Audio is done with MSS (using dlls from original GTA) or OpenAL.

> [!WARNING]
> PS2/Xbox don't supported for now.

## Installation

- reVC requires game assets to work, so you **must** own [a copy of GTA Vice City](https://store.steampowered.com/app/12110/Grand_Theft_Auto_Vice_City).
- Build reVC or download the [latest build](https://github.com/mxtherfxcker/reVC/releases).
- Extract the downloaded zip over your GTA VC directory and run reVC. The zip includes the binary, updated and additional gamefiles and in case of OpenAL the required dlls.

## Screenshots

[![screen_ 1613087332](https://user-images.githubusercontent.com/1521437/107714111-f84f3200-6ccc-11eb-902e-d757481d579a.png)](https://github.com/mrxenginner/reVC)
[![screen_ 1613086852](https://user-images.githubusercontent.com/1521437/107714115-fa18f580-6ccc-11eb-9de5-eb4cd04865d3.png)](https://github.com/mrxenginner/reVC)
[![screen_ 1613086989](https://user-images.githubusercontent.com/1521437/107714103-f38a7e00-6ccc-11eb-88a3-c8c2033c51d6.png)](https://github.com/mrxenginner/reVC)
[![screen_ 1613087193](https://user-images.githubusercontent.com/1521437/107714106-f4bbab00-6ccc-11eb-96a9-13821d9b9684.png)](https://github.com/mrxenginner/reVC)

## Improvements

We have implemented a number of changes and improvements to the original game.
> [!NOTE]
> They can be configured in `core/config.h`.

* Fixed a lot of smaller and bigger bugs
* User files (saves and settings) stored in GTA root directory
* Settings stored in reVC.ini file instead of gta_vc.set
* Debug menu to do and change various things (Ctrl-M to open)
* Debug camera (Ctrl-B to toggle)
* Rotatable camera
* XInput controller support (Windows)
* No loading screens between islands ("map memory usage" in menu)
* Rendering
  * Widescreen support (properly scaled HUD, Menu and FOV)
  * PS2 MatFX (vehicle reflections)
  * PS2 alpha test (better rendering of transparency)
  * Xbox vehicle rendering
  * Xbox world lightmap rendering (needs Xbox map)
  * Xbox ped rim light
  * Xbox screen rain droplets
  * More customizable colourfilter
* Menu
  * More options
  * Controller configuration menu
* Can load DFFs and TXDs from other platforms, possibly with a performance penalty

###### And much more...

## TODO

You can find the current TODO list [here](https://github.com/mrxenginner/reVC/blob/miami/README.md#to-do).

## Modding

Asset modifications (models, texture, handling, script, ...) should work the same way as with original GTA for the most part.

> [!CAUTION]
> Mods that make changes to the code (dll/asi, CLEO, limit adjusters) will *not* work.

Some things these mods do are already implemented in re3 (much of SkyGFX, GInput, SilentPatch, Widescreen fix),
others can easily be achieved (increasing limis, see `config.h`),
others will simply have to be rewritten and integrated into the code directly.  

Sorry for the inconvenience.

## Building from Source

> [!TIP]
> When using premake, you may want to point `GTA_VC_RE_DIR` environment variable to **GTA Vice City root folder** if you want the executable to be moved there via post-build script.

* [Install the DX9 SDK.](https://archive.org/details/dxsdk_jun10)
* Clone the repository via `git clone --recurse-submodules https://github.com/mxtherfxcker/reVC.git`.
* Run `premake-vsXXXX.cmd` and open the `.sln` file from the **build/** directory.
