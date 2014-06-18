class DeveloperGroup < Cask
  depends_on cask: 'commons-group'

  # IDE
  depends_on cask: 'atom'
  depends_on cask: 'sublime-text'

  # VCS
  depends_on cask: 'tower'
  # depends_on cask: 'github'

  # Virtualization
  depends_on cask: 'virtualbox'
  depends_on cask: 'vagrant'
  depends_on cask: 'vagrant-manager'

  depends_on cask: 'kaleidoscope'
  depends_on cask: 'transmit'
  depends_on cask: 'quicklook-json'
  depends_on cask: 'cocoarestclient'
  depends_on cask: 'cocoapacketanalyzer'
  depends_on cask: 'speedlimit'
end
