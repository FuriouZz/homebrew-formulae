class ProjectManagerGroup < Cask
  depends_on cask: 'common-group'

  depends_on cask: 'firefox'
  depends_on cask: 'opera'

  depends_on cask: 'omniplan'
end
