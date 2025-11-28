# DreamMaker Language Server for [Zed Editor](https://zed.dev/)

Code for the `zed-dreammaker-langserver` Zed extention. 

This extension relies on [SpacemanDMM](https://github.com/SpaceManiac/SpacemanDMM) by [SpaceManiac](https://github.com/SpaceManiac) and its prebuilt binaries of `dm-langserver.exe`, but you can always build your own binaries [here](https://github.com/SpaceManiac/SpacemanDMM/tree/master/crates).

Currently only tested on Windows x64, will get tested and receive Linux support later.

# Usage

1. Install the extension. This will build the `tree-sitter` for the syntax highliting and will take some time to complete when done for the first time.
2. Open the latest release of SpacemanDMM [here](https://github.com/SpaceManiac/SpacemanDMM/releases/latest) and download the `dm-langserver.exe` binary.
3. Open the Zed settings as `.json` and add the following to your configuration:
```json
  "lsp": {
    "dm-langserver": {
      "binary": {
        "path": "C:\\path\\to\\your\\binary\\dm-langserver.exe"
      }
    }
  },
```

