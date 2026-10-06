## Tools
### Azure Function Core Tools
```bash
brew tap azure/functions
brew install azure-functions-core-tools@4
```

### Other
```bash
brew install maven
brew install openjdk
brew install redis
brew install nginx
brew install mysql
```

## Finder Extensions
- [NewFile](https://newfile.dev) - Add new file option to Finder
- [OpenInFinder](https://github.com/ji4n1ng/OpenInTerminal) - Add option to open current folder in Terminal to Finder

## Commands
### Disable PS button on controller from opening Apple Arcade
```bash
defaults write com.apple.GameController bluetoothPrefsMenuLongPressAction -integer 0
killall Dock
```
