require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = package['name']
  s.version          = package['version']
  s.summary          = 'react native epub js'
  s.description      = 'react native for epub js'
  s.requires_arc     = true
  s.license          = 'FreeBSD'
  s.homepage         = 'n/a'
  s.source           = { :git => "https://github.com/seongjoojin/epubjs-rn", :tag => "master" }
  s.author           = 'Futurepress'
  s.source_files     = 'ios/**/*.{h,m}'
  s.platform         = :ios, "8.0"

  s.dependency "React"
  s.dependency "react-native-static-server"
  s.dependency "react-native-webview"
  s.dependency "RNZipArchive"
  s.dependency "rn-fetch-blob"
  s.dependency "react-native-orientation"
  s.dependency "RNCAsyncStorage"
end
