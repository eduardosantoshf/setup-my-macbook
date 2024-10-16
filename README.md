# Setup My MacBook

This repo is used to configure a MacBook from scratch. It can serve as a guide for a brand-new computer or after a factory reset.

ℹ️ [Reset MacBook](https://9to5mac.com/2022/01/10/how-to-factory-reset-your-macbook-and-other-macs/)

> **_NOTE:_**  These steps were made for macOS Monterey, it may not work with other macOS versions.

## MacBook Specifications

**Model**: MacBook Pro (15-inch, 2017)

**Processor**: 2,8 GHz Quad-Core Intel Core i7

**Memory**: 16 GB 2133 MHz LPDDR3

**Graphics**: Intel HD Graphics 630 1536 MB

## Table of Contents

- macOS Updates
- System Preferences
- Commands and Shortcuts
- Terminal
- Shell
- Homebrew
- Apps
- Dock
- Touch Bar not working bug

## macOS Updates

When starting your mac for the first time, you should always check if there are any software updates available. You can find these updates by going to `System Preferences > Software Updates`.

## System Preferences

When setting up a mac, there are also some system preferences I like to change.

### General

`System Preferences > General > Appearance > Dark`

`System Preferences > General > Prefer tabs >` **`always`** `when opening documents`

Uncheck `System Preferences > General > Close windows when quitting an app`

`System Preferences > General > Show scroll bars: >` **`When scrolling`**

### Dock & Menu Bar

`System Preferences > Dock & Menu Bar > Double-click a window's title bar to` **`minimize`**

`System Preferences - Dock & Menu Bar - Clock - Show Date` **`Always`**

Uncheck `System Preferences > Dock & Menu Bar > Show recent applications in Dock`

Check `System Preferences > Dock & Menu Bar > Now Playing > Show in Menu Bar`

Check `System Preferences > Dock & Menu Bar > Minimise windows into application icon`

Check `System Preferences > Dock & Menu Bar > Wi-Fi > Show in Menu Bar`

Check `System Preferences > Dock & Menu Bar > Bluetooth > Show in Menu Bar`

Check `System Preferences > Dock & Menu Bar > Sound > Show in Menu Bar` **`always`**

### Mission Control

Check `System Preferences > Mission Control > Group windows by application`

Uncheck `System Preferences > Mission Control > Automatically rearrange Spaces based on most recent used`

**Hot Corners:**

- Left Inferior Corner: **Launchpad**
- Right Inferior Corner: **Lock Screen**

### Displays

`System Preferences > Displays > Resolution >` **`Scaled`**

`System Preferences > Displays > Resolution >` **`More Space`**

### Keyboard

Uncheck `System Preferences > Keyboard > Keyboard > Adjust keyboard brightness in low light`

`System Preferences > Keyboard > Keyboard > Turn keyboard backlight off after` **`1 min`** `of inactivity`

`System Preferences > Keyboard > Keyboard > Press fn key to` **`Show emojis & Symbols`**

`System Preferences > Keyboard > Keyboard > Press and hold fn key to` **`Show F1, F2, etc. Keys`**

Uncheck `System Preferences > Keyboard > Text > Correct spelling automatically`

Uncheck `System Preferences > Keyboard > Text > Capitalize words automatically`

Uncheck `System Preferences > Keyboard > Text > Add period with double-space`

### Trackpad

Check `System Preferences > Trackpad > Point & Click > Look up & data detectors`

Check `System Preferences > Trackpad > Point & Click > Secondary click`

Check `System Preferences > Trackpad > Point & Click > Tap to click`

**More Gestures**

Uncheck **only** `System Preferences > Trackpad > More Gestures > Launchpad`

### Security & Privacy

`System Preferences > Security & Privacy > General > Require password after` **`5 seconds`** `after sleep or screen saver begins`

`System Preferences > Security & Privacy > Firewall >` **`Turn On Firewall`**

### Finder

`Preferences > General > New Finder windows show >` **`Documents`**

Check `Preferences > General >` **`Open folders in tabs instead of new windows`**

Check `Preferences > Advanced >` **`Show all filename extensions`**

`Preferences > Advanced > When performing a search >` **`Search the Current Folder`**

Show/Hide hidden files in folders: `Command + Shift + .`

Show Path Bar: `Option + Command + P`

### Sound

Uncheck `Preferences > Sound > Sound Effects > Play sound on startup`

## Commands and Shortcuts

### Mac

On the Mac, the "command" key (⌘) replaces the "ctrl" key in Windows. Here are the main combinations that I use:
* **@**: Option + 2
* **–** (em dash): Option + Shift + dash (-)
* **Change current app**: CMD + Tab
* **Change tab**: CMD + Option + Left/Right Arrow
* **Clear cache** (in browser): CMD + Shift + R
* **Close app**: CMD + Q
* **Close window**: Shift + CMD + W
* **Enter full screen mode**: Control + CMD + F
* **Force quit app**: CMD + Option + Esc (use only when an app doesn't respond)
* **Go forward/backward word by word**: Option + Left/Right Arrow (+ Shift to select)
* **Go to the beginning/end of a line**: CMD + Left/Right Arrow (+ Shift to select)
* **Hide app**: CMD + H
* **Minimize app**: CMD + M
* **New tab**: CMD + T
* **New window**: CMD + N
* **{}**: Shift + Option + 8/9
* **()**: Shift + 8/9
* **Spotlight Search** (currently I'm using [Raycast](https://www.raycast.com/) as a replacement): CMD + Space bar (currently using CMD + \)
* **Take Screenshot**: CMD + Shift + 5
* **Screenshot entire screen**: CMD + Shift + 3
* **Screenshot separate app**: CMD + Shift + 4 + Space
* **Screenshot selected area**: CMD + Shift + 4 + Click & Hold & Drag Mouse
* **Change desktop window**: Control + Left/Right Arrow
* **Go to Folder window**: CMD + Shift + G

### Brave Browser

* **Show tabs in fullscreen mode**: CMD + SHIFT + F

### Visual Studio Code

* **Show/hide terminal**: CMD + J

## Terminal

### Setup Script

My setup.sh file can be found at the root of this repo, running the script will:

- Install Homebrew
- Install brew formulæs and casks that I use
- Configure Git
- Installing Oh My Zsh
- Create a SSH key to be added to GitHub and add it to the Mac’s Keychain

### iTerm2

My iTerm2 preferences file can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/blob/main/configs/iTerm2/com.googlecode.iterm2.plist).

![Screen Shot 2022-08-27 at 14.59.29.png](images/terminal.png)

**Color presets**

I am currently using the [BlulocoDark](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/BlulocoDark.itermcolors) color preset.

All my iTerm2 color presets can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/tree/main/configs/iTerm2/iTerm2ColorPresets).

**Configurations**

- Enable usage of `option + command + left/right` or `command + left/right` keyboard shortcuts: `Preferences > Profiles > Keys > Key Mappings > Presets >` **`Natural Text Editing`**
- Check `Preferences > Profiles > Session > status bar enabled`
- `Preferences > Profiles > Terminal > Scrollback lines:` **`4000`**
- `Preferences > General > Terminal > Startup > Window restauration policy:` **`Use System Window Restauration Setting`**
- `Preferences > Profiles > General > Working Directory >` **`Reuse previous session's directory`**
- `Preferences > Profiles > Text > Cursor >` **`Vertical bar`**
- Check `View > Show Tabs in Fullscreen` 

### Font

The font I use is **Fira Code**.

## Shell

### ****Oh My Zsh****

[Oh My Zsh](https://ohmyz.sh/) is an open source, community-driven framework for managing your Zsh configuration.

### .zshrc

My .zshrc file can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/blob/main/dotfiles/.zshrc). To edit the zsh config file, run:

```bash
vim ~/.zshrc
```

### .vimrc

My .vimrc file can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/blob/main/dotfiles/.vimrc). In alternative, this is the file content:

```bash
syntax on
set hlsearch
```

To edit the vim config file, run:

```bash
vim ~/.vimrc
```

### ****Zsh**** Spaceship prompt

[Spaceship](https://github.com/spaceship-prompt/spaceship-prompt) is a minimalistic, powerful and extremely customizable [Zsh](http://zsh.org/) prompt. It combines everything you may need for convenient work, without unnecessary complications, like a real spaceship.

### Auto Suggestions Zsh Plugin

****[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)****

## Homebrew

[Homebrew](https://brew.sh/) is a free and open-source software package management system that simplifies the installation of software on Apple's operating system, macOS, as well as Linux. 

Before you install Homebrew though you need to install the xcode command line utilities:

```bash
xcode-select --install
```

We can then install brew with:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Brew

Here are some of the brew formul*æ*s that I have (more to be added):

- git
- htop
- wget
- curl
- telnet
- tree
- trash
- pdfgrep
- make
- screen
- iperf3
- pyenv
- screen

### Brew Cask

- visual-studio-code
- brave-browser
- docker
- rectangle
- postman
- notion
- iterm2
- firefox
- discord
- the-unarchiver
- vlc
- tg-pro
- webtorrent
- spotify
- teamviewer
- stats
- stremio
- kap
- iina
- whatsapp
- adobe-acrobat-reader
- macs-fan-control
- gray
- raycast

## Apps

These are the apps that I have currently installed on my mac. Whenever I can, I will install these apps from Homebrew.

- [Endpoint Security VPN](https://supportcenter.checkpoint.com/supportcenter/portal/user/anon/page/default.psml/media-type/html?action=portlets.DCFileAction&eventSubmit_doGetdcdetails=&fileid=123070)
- Spotify
- CleanMyMac X
- Todoist
- Speedtest
- Adobe Photoshop 2021
- Slack
- The Unarchiver
- Visual Studio Code
- Twitter
- Discord
- Messenger
- iTerm2
- TeamViewer
- Office (Word, PowerPoint, Excel)
- Brave Browser
- Postman
- Zoom
- Autenticação.gov
- WhatsApp
- VLC
- Docker
- MusicHarbor
- Rectangle
- ClickUp
- TG Pro (control fans)
- Spark
- OneDrive
- Bitwarden
- WebTorrent
- Firefox
- Codye
- Notion
- Gray
- Amphetamine

### Brave

⚠️ To access certain websites functionalities (ex. Streaming services), it's necessary to deactivate Brave shields on that websites.

#### Extensions

Here are the chromium extensions that I use:

[AutoHideDownloadsBar](https://chrome.google.com/webstore/detail/autohidedownloadsbar/gkmndgjgpolmikgnipipfekglbbgjcel/related)

[FireShot](https://chrome.google.com/webstore/detail/take-webpage-screenshots/mcbpblocgmgfnpjjppndjkmgjaogfceg)

[Dark Reader](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)

[I still don't care about cookies](https://chromewebstore.google.com/detail/edibdbjcniadpccecjdfdjjppcpchdlm?hl=en)

[Bitwarden Password Manager](https://chromewebstore.google.com/detail/bitwarden-password-manage/nngceckbapebfimnlniiiahkandclblb)

[Grammarly: AI Writing and Grammar Checker App](https://chromewebstore.google.com/detail/grammarly-ai-writing-and/kbfnbcaeplbcioakkpcpgfkobkghlhen?hl=en)

[Auto Refresh Plus | Page Monitor](https://chromewebstore.google.com/detail/auto-refresh-plus-page-mo/hgeljhfekpckiiplhkigfehkdpldcggm?hl=en)

[AdBlock — block ads across the web](https://chromewebstore.google.com/detail/adblock-%E2%80%94-block-ads-acros/gighmmpiobklfepjocnamgkkbiglidom)

#### Search Engine Shortcuts

On Brave, go to `Settings > Search engine > Manage search engines and site search > Site search`, and add the desired shortcuts:

| Site or page    | Shortcut | Search query (URL with %s in place of query)                                  |
|-------------------------------|----------|-------------------------------------------------------------------------------|
| YouTube                       | -y       | https://www.youtube.com/results?search_query=%s                               |
| Rotten Tomatoes               | -r       | https://www.rottentomatoes.com/search?search=%s                               |
| Goodreads                     | -g       | https://www.goodreads.com/search?q=%s&qid=                                    |
| Wook                          | -w       | https://www.wook.pt/pesquisa?keyword=%s                                       |
| IMDb                          | -i       | https://www.imdb.com/find/?q=%s&ref_=nv_sr_sm                                 |
| PlayStation Store Portugal    | -p       | https://store.playstation.com/pt-pt/search/%s                                 |
| Google Internet  Speed Test   | s        | https://www.google.com/search?q=speedtest&sca_esv=426d1894efaa3de5&sca_upv=1&sxsrf=ADLYWIKmu8KNlSes7Av8xbbCytRXEBCk1w%3A1726748266383&ei=ahbsZqX9FruZkdUPlKC1-Qc&ved=0ahUKEwil2qLI_s6IAxW7TKQEHRRQLX8Q4dUDCA8&uact=5&oq=speedtest&gs_lp=Egxnd3Mtd2l6LXNlcnAiCXNwZWVkdGVzdDIKECMYgAQYJxiKBTIKEAAYgAQYQxiKBTIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESO4IUJEDWOMFcAF4AZABAJgBmgGgAYECqgEDMC4yuAEDyAEA-AEBmAIDoAKVAsICChAAGLADGNYEGEfCAg0QABiABBiwAxhDGIoFwgIQEC4YgAQY0QMYQxjHARiKBZgDAIgGAZAGCpIHAzEuMqAHig4&sclient=gws-wiz-serp |

### VS Code

My Visual Studio Code preferences file can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/blob/main/configs/vscode/settings.json).

#### Extensions

- [Live-Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Dracula Official](https://marketplace.visualstudio.com/items?itemName=dracula-theme.theme-dracula) (theme)
- [GitHub Theme](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme) (theme)
- [Palenight Theme](https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme) (theme)
- [Copilot Theme](https://marketplace.visualstudio.com/items?itemName=BenjaminBenais.copilot-theme) (theme)
- [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
- [vscode-pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf)
- [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)
- [VSCodeFileHeader](https://marketplace.visualstudio.com/items?itemName=jankincai.vscodefileheader)
- [Save as Root in Remote - SSH](https://marketplace.visualstudio.com/items?itemName=yy0931.save-as-root)
- [Grammarly](https://marketplace.visualstudio.com/items?itemName=znck.grammarly)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Diff](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-diff)
- [Copy On Select](https://marketplace.visualstudio.com/items?itemName=dinhani.copy-on-select)
- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
- [Draw.io Integration](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)
- [Restore Terminals](https://marketplace.visualstudio.com/items?itemName=EthanSK.restore-terminals)

#### Color Theme

Currently using **One Dark Pro Darker** color theme.

### Raycast

[Raycast](https://www.raycast.com/) is an application launcher and productivity software developed for macOS. It offers fast access to applications, dictionaries, files, text snippets, clipboard, and more. Raycast is an alternative to the macOS's built-in Spotlight function, with a richer interface providing additional ways to display varied content.

#### Preferences

My Raycast preferences file can be found [here](https://github.com/eduardosantoshf/my-configs-and-dotfiles/tree/main/configs/Raycast).

#### Built-in functions

Raycast comes with many built-in features that can have a shortcut or an alias assigned, most notably:

- Application search
- File search
- Clipboard history
- Floating notes
- Calculator
- Changing volume, brightness, hibernating
- Word definitions
- Window management
- Snippets and text expansion
- Access to calendar events
- Quick access to ChatGPT (paid feature)

#### Extensibility

While Raycast itself is a closed-source application, it includes a built-in store that offers open-source extensions to extend its functionality. The current features I'm using are:

- [Year in Progress](https://www.raycast.com/thomas/year-in-progress)
- [Brew](https://www.raycast.com/nhojb/brew)
- [Google Translate](https://www.raycast.com/gebeto/translate)
- [Brave](https://www.raycast.com/ron-myers/brave)
- [Amphetamine](https://www.raycast.com/gstvds/amphetamine)
- [Format JSON](https://www.raycast.com/destiner/json-format)
- [GitHub](https://www.raycast.com/raycast/github)
- [Quit Applications](https://www.raycast.com/mackopes/quit-applications)
- [Installed Extensions](https://www.raycast.com/pernielsentikaer/installed-extensions)

## Dock

![Dock](images/dock.png)

## Touch Bar not working bug

Sometimes, if the touch bar stops working, restarting it may solve the problem:

	sudo pkill TouchBarServer
