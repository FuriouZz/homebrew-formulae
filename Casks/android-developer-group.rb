class AndroidDeveloperGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'developer-group'

  # IDE
  depends_on cask: 'android-studio-bundle'
end
