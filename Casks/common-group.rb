class CommonGroup < Cask
  # Internet
  depends_on cask: 'google-chrome'
  # depends_on cask: 'firefox'
  # depends_on cask: 'opera'

  # Talk
  depends_on cask: 'skype'
  depends_on cask: 'screenhero'
  depends_on cask: 'teamviewer'
  # depends_on cask: 'slack'

  # Cloud
  depends_on cask: 'synology-cloud-station'

  # Others
  depends_on cask: 'alfred'
  depends_on cask: 'evernote'
  depends_on cask: 'vlc'
  depends_on cask: 'spotify'
  depends_on cask: 'onyx'
  depends_on cask: 'mou'
  depends_on cask: 'caffeine'
  depends_on cask: 'jumpcut'
  depends_on cask: 'flux'
  depends_on cask: 'adobe-reader'
  # depends_on cask: 'reflector'
  # depends_on cask: 'telephone'

  # Images
  depends_on cask: 'imageoptim'
  depends_on cask: 'imagealpha'
  # depends_on cask: 'texturepacker'

  # Conception
  depends_on cask: 'mysqlworkbench'
  depends_on cask: 'xmind'
  depends_on cask: 'balsamiq-mockups'
  depends_on cask: 'omnigraffle'
end
