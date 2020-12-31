#
# Be sure to run `pod lib lint BRFluentModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BRFluentModule'
  s.version          = '1.0.0'
  s.summary          = 'BRFluentModule is a swift wrapper for fluent interface.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  BRFluentModule is a simple swift wrapper for creating swift object in fluent interface , just like SwiftUI . 
  By using this wrapper , it is able to write swift object in fluent interface.
                       DESC

  s.homepage         = 'https://github.com/ck2shine/BRFluentModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ck2shine' => 'ck2shine@gmail.com' }
  s.source           = { :git => 'https://github.com/ck2shine/BRFluentModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'BRFluentModule/*.swift'
  
  # s.resource_bundles = {
  #   'BRFluentModule' => ['BRFluentModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
