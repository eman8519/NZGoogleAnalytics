Pod::Spec.new do |s|
  s.name = 'NZGoogleAnalytics'
  s.version = '0.0.8'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Quickly and easily integration with Google Analytics API for iOS.'
  s.homepage = 'https://github.com/eman8519/NZGoogleAnalytics'
  
  s.requires_arc = true
  s.platform = :ios
  s.ios.deployment_target = '5.0'
  
  s.authors = { 'Bruno Tortato Furtado' => 'bruno.furtado@gruponzn.com' }
  
  s.dependency 'GoogleAnalytics'
  s.dependency 'NZBundle'
  s.source_files = 'NZGoogleAnalytics/*.{h,m}'
  s.source = { :git => 'https://github.com/eman8519/NZGoogleAnalytics.git', :tag => '0.0.8' }
  s.static_framework = true
end
