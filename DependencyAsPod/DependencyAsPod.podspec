Pod::Spec.new do |s|
  s.name             = 'DependencyAsPod'
  s.version          = '1.0.0'
  s.summary          = 'A sample code of how to implement stuff.'

  s.homepage         = 'https://github.com/itau-corp/itau-oq6-dep-ios-codesample'
  s.license          = "Copyright"
  s.author           = { 'Rafael Baraldi' => 'rafael_baraldi_13@hotmail.com' }
  s.source           = { :git => 'https://github.com/itau-corp/itau-oq6-dep-ios-codesample.git', :tag => s.version.to_s }

  s.platforms = { :ios => "12.0" }
  s.ios.deployment_target = '12.0'

  s.source_files = 'DependencyAsPodClass.swift'

end
