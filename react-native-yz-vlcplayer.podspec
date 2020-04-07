require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = 'react-native-sl-vlcplayer'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.author         = package['author']
  s.homepage       = 'https://github.com/CrashMJ/react-native-yz-vlcplayer'
  s.source       = { :git => "https://github.com/CrashMJ/react-native-yz-vlcplayer.git", :branch => "master",
  :tag => s.version.to_s }

  s.ios.deployment_target = "9.0"

  s.subspec "RCTVLCPlayer" do |ss|
    ss.source_files  = "ios/RCTVLCPlayer/*.{h,m}"
    s.static_framework = true
  end

  s.dependency "React"

  s.dependency "RCTVLCPlayer"

  s.default_subspec = "RCTVLCPlayer"
end
