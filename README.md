# Random Linux stuff

Random (Arch) Linux stuff that I'm actively using.

## Arch repos

* [Chaotic-AUR](https://aur.chaotic.cx/) - Automated building repo for AUR package

## Plasmoids

* [ddci-plasmoid](https://github.com/davidhi7/ddcci-plasmoid) - DDC/CI-based monitor brightness control widget for KDE
* [hoppla-sa](https://github.com/Fuchs/hoppla-sa) - Philips Hue control widget for KDE (works great with custom diyHue servers)
* [plasma-applet-eventcalendar](https://github.com/Zren/plasma-applet-eventcalendar) - Plasmoid for a calendar and agenda with weather that syncs to Google Calendar.

## Tricks

* [Share pacman's package cache](https://wiki.archlinux.org/title/pacman/Tips_and_tricks#Synchronize_pacman_package_cache_using_synchronization_programs) between multiple Arch devices. Make sure to [prevent unwanted cache cleans](https://wiki.archlinux.org/title/pacman/Tips_and_tricks#Preventing_unwanted_cache_purges). I'm using Syncthing to share it between three devices; works out of the box, you just need to handle file permissions properly. For example, by creating a new `pkgcache` group that has write access to pacman's cache directory, which the `syncthing` user account is added to. 
* Install a pacman hook for a [package cache cleaner](https://wiki.archlinux.org/title/pacman#Cleaning_the_package_cache). This particular hook deletes all except the current version of the packages in the cache: [/usr/share/libalpm/hooks/paccache.hook](system_config/usr/share/libalpm/hooks/paccache.hook)
* Enable [parallel pacman downloads](https://wiki.archlinux.org/title/pacman#Enabling_parallel_downloads).
* Use an user-land OOM prevention daemon such as [nohang](https://github.com/hakavlad/nohang) to prevent freezes and lock-ups due oom-killer's behavior.
* Set [sane sysctl values](https://wiki.archlinux.org/title/sysctl#Virtual_memory) for virtual memory. My sysctl config: [/etc/sysctl.d/99-custom.conf](system_config/etc/sysctl.d/99-custom.conf)
* Chromium: enable [touchpad gestures](https://wiki.archlinux.org/title/Chromium#Touchpad_Gestures_for_Navigation) for navigation. My flags: [~/.config/chrome-flags.conf](dotfiles/plain/common/.config/chrome-flags.conf)
* Chromium: [store cache/profile directory in tmpfs](https://wiki.archlinux.org/title/Chromium#Tmpfs) for faster access as the frequently accessed data is now stored in RAM. Use [profile-sync-daemon](https://wiki.archlinux.org/title/Profile-sync-daemon) to sync the profile directory periodically back to disk. (Also available for [Firefox](https://wiki.archlinux.org/title/Firefox/Profile_on_RAM))
* Sync and manage your dotfiles using git (or a git wrapper such as [dotgit](https://github.com/kobus-v-schoor/dotgit)) between multiple machines.
* Keep your home dir clean from dotfiles ignoring the XDG basedir spec using [antidot](https://github.com/doron-cohen/antidot).

## Utilities

* [ccat](https://github.com/owenthereal/ccat) - Colorizing `cat`
* [ccache](https://wiki.archlinux.org/title/Ccache) - Cache compilation files for makepkg
* [lsd](https://github.com/lsd-rs/lsd) - `ls` with color
* [nohang](https://github.com/hakavlad/nohang) - A sophisticated low memory handler for Linux
* [psensor](https://github.com/chinf/psensor) - A graphical sensor monitoring and logging utility
* [syncthingctl](https://github.com/Martchus/syncthingtray) - Part of `syncthingtray`, a tray app with Plasma integration for Syncthing
* [tailscale](https://github.com/tailscale/tailscale) - Private WireGuard networks made easy; also great for use with KDE Connect
* [timeshift](https://github.com/linuxmint/timeshift) - System restore tool for Linux
* [tmux](https://github.com/tmux/tmux/) - Terminal multiplexer
* [xpra](https://github.com/Xpra-org/xpra) - Persistent remote applications for X11
