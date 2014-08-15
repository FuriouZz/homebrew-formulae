class RubyDeveloperGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'developer-group'

  # Binaries brews
  depends_on formula: 'postgresql'
  depends_on formula: 'rbenv'
  depends_on formula: 'ruby-build'

  depends_on cask: 'sequel-pro'
  depends_on cask: 'pg-commander'
  depends_on cask: 'anvil'
end
