#
# Be sure to run `pod lib lint AgLayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AgLayout'
  s.version          = '0.1.0'
  s.summary          = 'AgLayout is an layout util for ios in ObjC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AgLayout is an layout util for ios in ObjC. Including a AgLayout to help 
move/stretch view around and a view frame accessor.
                       DESC

  s.homepage         = 'https://github.com/gitamend/AgLayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GitAmend' => 'gitamend@163.com' }
  s.source           = { :git => 'https://github.com/gitamend/AgLayout.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'AgLayout/Classes/**/*'
  s.frameworks = 'UIKit'
end
