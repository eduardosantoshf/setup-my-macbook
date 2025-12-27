# Setup My MacBook

This repo is used to configure a MacBook from scratch. It can serve as a guide for a brand-new computer or after a factory reset.

ℹ️ [Reset MacBook](https://9to5mac.com/2022/01/10/how-to-factory-reset-your-macbook-and-other-macs/)

> **_NOTE:_**  These steps were made for macOS Sequoia, it may not work with other macOS versions.

## MacBook Specifications

**Model**: MacBook Air (13-inch, M3, 2024)

**Chip**: Apple M3

**Memory**: 16 GB

**Storage**: 256 GB

## macOS Updates

When starting your mac for the first time, you should always check if there are any software updates available. You can find these updates by going to `System Preferences > Software Updates`.

## System Preferences

When setting up a mac, there are also some system preferences I like to change.

### Network

Turn on `Firewall`

### Battery

Select `Low Power Mode >` **`Only on Battery`**

### General

#### Software Updates

Select only **`Install Security Responses and system files`**

#### AutoFill & Passwords

Deselect **`AutoFill Passwords & Passkeys`** (as I use Bitwarden, for now)

Uncheck `System Preferences > General > Close windows when quitting an app`

### Appearance

Select `Appearance >` **`Dark`**

### Control Center

#### Battery

Select **`Show Percentage`**

### Desktop & Dock

#### Dock

Select `Double-click a window's title bar to >` **`Minimize`**

Unselect `Show suggested and recent apps in Dock`

#### Desktop & Stage Manager

Select `Click wallpaper to reveal desktop >` **`Only in Stage Manager`**

#### Windows

Select `Prefer tabs when opening documents >` **`Always`**

Unselect `Close windows when quitting and application`

#### Mission Control

Select `Groupd windows by application`

#### Hot Corners

- Left Inferior Corner: **Launchpad**
- Right Inferior Corner: **Lock Screen**

### Sound

#### Sound Effects

Unselect `Play sound on startup`

### Lock Screen

Select `Start Screen Saver when inactive >` **`For 5 minutes`**

Select `Turn display off on battery when inactive >` **`For 2 minutes`**

Select `Turn display off on power adapter when inactive >` **`For 10 minutes`**

Select `Require password after screen saver begins or display is turned off >` **`After 5 minutes`**

Select `Show large clock` **`On Screen Saver and Lock Screen >`**

### Keyboard

Select `Turn keyboard backlight off after inactivity >` **`After 5 seconds`**

### Trackpad

Select **`Tap to click`** 

### Finder Settings

#### General

Select `New Finder windows show >` **`Downloads`**

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

The font I use is **Fira Code** with size **16**.

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

### `ls` Command

Instead of `ls`, I use [eza](https://github.com/eza-community/eza) with `dracula` theme. 
To setup **eza**, first we need to add an alias to the `.zshrc` file:

```bash
alias ls='eza'
```

Now, we can use the default theme, or use one from the official [eza-themes](https://github.com/eza-community/eza-themes) repo (or we can create our own theme). To to this, choose the theme you want and save it inside `/Users/eduardosantos/.config/eza` (if the `eza` folder doesn't exist, create it). 

Finally, run:

```bash
export EZA_CONFIG_DIR=/Users/eduardosantos/.config/eza
```

# Homebrew

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
- pyenv
- pyenv-virtualenv

### Brew Cask

- visual-studio-code
- brave-browser
- docker
- rectangle
- postman
- notion
- iterm2
- the-unarchiver
- webtorrent
- spotify
- teamviewer
- stremio
- iina
- gray
- raycast

## Apps

These are the apps that I have currently installed on my mac. Whenever I can, I will install these apps from Homebrew.

- [Endpoint Security VPN](https://supportcenter.checkpoint.com/supportcenter/portal/user/anon/page/default.psml/media-type/html?action=portlets.DCFileAction&eventSubmit_doGetdcdetails=&fileid=123070)
- Tunnelblick
- Spotify
- Slack
- The Unarchiver
- Visual Studio Code
- Messenger
- iTerm2
- TeamViewer
- Office (Word, PowerPoint, Excel)
- Brave Browser
- Postman
- Zoom
- WhatsApp
- Docker
- MusicHarbor
- Rectangle
- Spark
- Bitwarden
- WebTorrent
- Notion
- Gray

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
| Amazon ES                     | -a       | https://www.amazon.es/s?k=%s                                                  |
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

Currently using [**One Dark Pro Darker**](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme) color theme.

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
