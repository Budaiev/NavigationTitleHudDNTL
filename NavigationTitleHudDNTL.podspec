#
# Be sure to run `pod lib lint NavigationTitleHudDNTL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NavigationTitleHudDNTL'
  s.version          = '1.0.1'
  s.summary          = 'Convenient Hud for UIViewController in UINavigationController stack.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
NavigationTitleHudDNTL present a special UI inside UINavigationItem (.titleView).
May used in cases when UIViewController presented via UINavigationController stack.
The appointment to show user status of a loading state and keep ability for other unterruptions.
Seems like a toast view, but in the UINavigationController area.
                       DESC

  s.homepage         = 'https://github.com/Budaiev/NavigationTitleHudDNTL'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Budaiev' => 'budaiev@dnt-lab.com' }
  s.source           = { :git => 'https://github.com/Budaiev/NavigationTitleHudDNTL.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'NavigationTitleHudDNTL/Classes/**/*'
  
   s.resource_bundles = {
     'NavigationTitleHudDNTL' => 'NavigationTitleHudDNTL/Assets/*.*'
#     ['XIB_FILES/NvcTitleAndHud.xib']
#     ['NavigationTitleHudDNTL/XIB_FILES/NvcTitleAndHud.xib']
#     ['NavigationTitleHudDNTL/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
