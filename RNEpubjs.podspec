require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|
  s.name             = 'RNEpubjs'
  s.version          = package['version']
  s.summary          = 'react native epub js'
  s.description  = <<-DESC
                  react-native-rn-epubjs
                   DESC
  s.license          = 'FreeBSD'
  s.homepage         = 'n/a'
  s.author           = 'Futurepress'
  s.platform         = :ios, "9.0"
  s.source           = { :git => 'https://github.com/seongjoojin/epubjs-rn.git', :tag => 'master' }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "RNCAsyncStorage", '1.9.0'
  s.dependency "react-native-webview", '9.2.1'
  s.dependency "RNZipArchive", '5.0.2'
  s.dependency "rn-fetch-blob", '0.12.0'
  s.dependency "react-native-orientation", '3.2.6'
  s.dependency "react-native-static-server", '0.4.31'
end
