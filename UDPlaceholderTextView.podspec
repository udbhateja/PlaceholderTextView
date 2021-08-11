#
# Be sure to run `pod lib lint UDPlaceholderTextView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UDPlaceholderTextView'
  s.version          = '0.1.0'
  s.summary          = 'A subclass of UITextView with add-in capabilities for Placeholder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
'A subclass of UITextView with add-in capabilities for multiline placeholder. Placeholder text, font, color is customizable.'
                     DESC

  s.homepage         = 'https://github.com/udbhateja/UDPlaceholderTextView'
  s.screenshots      = 'https://github.com/udbhateja/UDPlaceholderTextView/raw/master/Screenshots/1.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'udbhateja' => 'udaybhateja@ymail.com' }
  s.source           = { :git => 'https://github.com/udbhateja/UDPlaceholderTextView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/udbhateja'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/*.{swift}'

  s.frameworks = 'UIKit'
end
