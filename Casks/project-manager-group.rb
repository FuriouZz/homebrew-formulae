class ProjectManagerGroup < Cask
  depends_on cask: 'common-group'

  # Browsers
  depends_on cask: 'firefox'
  depends_on cask: 'opera'

  # Management softwares
  depends_on cask: 'omniplan'
end
