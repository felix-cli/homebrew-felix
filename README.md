# homebrew-felix
This is the repository to hold the felix homebrew formula.

To update you need to:
1) merge changes to github.com/felix-cli/felix
2) make a release with a new tag
3) `/usr/local/Homebrew/Library/Taps/felix-cli`
4) update the url in felix.rb with the new tar.gz
5) run `brew fetch felix`
6) Grab new sha256<img width="982" alt="scrawford_scrawford___scott_coding_felix" src="https://user-images.githubusercontent.com/8398867/127406723-2c00b8d0-ed94-4746-9db4-098af079ce5b.png">
7) commit and push your changes up to this repo

brew tap felix-cli/felix
brew install felix
