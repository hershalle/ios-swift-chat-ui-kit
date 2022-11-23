#
# Be sure to run `pod lib lint CometChatUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CometChatUIKit'
  s.version          = '3.0.910'
  s.summary          = 'This is a CocoaPods supprot for CometChatUIKit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
I had to do it myself because Comet Chat suck ass!
                       DESC

  s.homepage         = 'https://github.com/hershalle/CometChatUIKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hershalle' => 'hershalle@gmail.com' }
  s.source           = { :git => 'https://github.com/hershalle/CometChatUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Library/**/*'
  
  # s.resource_bundles = {
  #   'CometChatUIKit' => ['CometChatUIKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'#, 'MapKit'
  s.dependency 'CometChatPro', '3.0.910'
  s.dependency 'CometChatCalls', '2.2.0'
end
