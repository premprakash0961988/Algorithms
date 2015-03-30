#
# Be sure to run `pod lib lint AlgoImplementation.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AlgoImplementation"
  s.version          = "1.0"
  s.summary          = "Implementation of Sorting Algorithms."
  s.description      = "Implementation of many Sorting Algorithms." 

  s.homepage         = "https://github.com/premprakash0961988/Algorithms"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Prem Prakash" => "premprakash096@gmail.com" }
  s.source           = { :git => "https://github.com/premprakash0961988/Algorithms.git", :tag => "1.0"}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*'
  s.resource_bundles = {
    'AlgoImplementation' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
