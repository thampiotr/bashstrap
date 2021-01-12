# bashstrap
Portable scripts & tools to quickly set up a fresh Linux box & make it somewhat usable, without sudo.

## Scripts in this repo
- `download_tools.sh` - run this to download the binaries required. If you cannot download on a target machine, download on a different one and scp to the target.
- `install_fzf.sh` - run this on target machine to install `fzf` after download is done.
- `test_docker.sh` - starts a test Ubuntu box locally to test the bootstrapping.
