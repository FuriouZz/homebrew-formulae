class DevopsGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'developer-group'

  # depends_on formula: 'juju'
  # depends_on formula: 'docker'

  depends_on cask: 'cocoapacketanalyzer'
end
