class DesignerGroup < Cask
  depends_on cask: 'commons-group'
  depends_on cask: 'fonts-group'

  depends_on cask: 'adobe-creative-cloud'
end
