# install-1password-linux-arm64

This script installs / updates 1Password on Linux arm64. It also sets up the icon for desktop environments like GNOME. It does not support and is not needed on x86-64 platforms.

Primarily tested on Ubuntu & GNOME. Feel free to open issues in this repo if you find it doesn't work in other environments. I may not decide to support them all, but I can probably support a few.

Once 1Password for Linux has a more official arm64 release, this script will no longer be needed. But as of the time of its creation, it automates several manual steps you would otherwise have to go through to get a nice installation of 1Password on Linux arm64.

## Usage

Click on the script above and inspect it first! This is just good practice before piping something to your shell.

Run: `curl https://raw.githubusercontent.com/cap10morgan/install-1password-linux-arm64/main/install-1password-linux-arm64.sh | bash`

This will install the latest release of 1Password for Linux on arm64 to `/opt/1Password`. If there was already an `/opt/1Password` directory, that will be renamed to `/opt/1Password-old`.

You should see 1Password in your desktop environments list of applications now. Or you can run it directly via something like: `/opt/1Password/1password`.

