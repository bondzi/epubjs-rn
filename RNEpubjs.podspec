require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

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
  s.dependency "react-native-static-server"
  s.dependency "react-native-webview"
  s.dependency "RNZipArchive"
  s.dependency "rn-fetch-blob"
  s.dependency "react-native-orientation"
  s.dependency "RNCAsyncStorage"
end
