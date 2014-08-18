class DesignerGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'fonts-group'

  depends_on cask: 'adobe-creative-cloud'
  depends_on cask: 'sketch'
  depends_on cask: 'sketch-tool'
  depends_on cask: 'sketch-toolbox'
end
