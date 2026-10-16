# linux-apps

One-command installer for all of Apersonwithtoenail's Linux tools.

## Apps

| App | What | Framework |
|-----|------|-----------|
| [QuillInks](https://github.com/Apersonwithtoenail/QuillInks) | Modern text editor | GTK4 |
| [PaperRuner](https://github.com/Apersonwithtoenail/PaperRuner) | Live wallpaper manager | GTK3 + mpv |
| [ACSIIGIFER](https://github.com/Apersonwithtoenail/ACSIIGIFER) | ASCII-art GIF player | GTK3 + chafa |
| [Lyrical](https://github.com/Apersonwithtoenail/Lyrical) | Terminal live lyrics | Python |
| [Listenermerge](https://github.com/Apersonwithtoenail/Listenermerge) | Unify Last.fm / Spotify / YT Music → ListenBrainz | Python |

## Install

    git clone https://github.com/Apersonwithtoenail/linux-apps.git
    cd linux-apps
    ./install-all.sh

Launch any of them:

    quillinks
    paperruner
    asciigifer
    lyrical

## Uninstall

    ./uninstall-all.sh

## Requirements

Debian / Ubuntu / Kali on X11, Python 3.9+, GTK3, GTK4, GtkSourceView 5, VTE, playerctl, mpv, ffmpeg, chafa.

## License

MIT
