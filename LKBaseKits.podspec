
Pod::Spec.new do |s|
  s.name             = 'LKBaseKits'
  s.version          = '0.0.3'
  s.summary          = 'LKBaseKits.'


  s.description      = <<-DESC
  description 
                       DESC

  s.homepage         = 'https://github.com/sfandy126/LKBaseKits'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sfandy126' => 'sfandy@126.com' }
  s.source           = { :git => 'https://github.com/sfandy126/LKBaseKits.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'LKBaseKits/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LKBaseKits' => ['LKBaseKits/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'DZNEmptyDataSet'
  s.dependency 'Masonry'
  s.dependency 'MJExtension'
  s.dependency 'FDFullscreenPopGesture'
  s.dependency 'YYCategories'
end
