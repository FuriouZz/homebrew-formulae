class AndroidDeveloperGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'developer-group'
  
  depends_on cask: 'android-file-transfer'

  # IDE
  depends_on cask: 'android-studio-bundle'
end
