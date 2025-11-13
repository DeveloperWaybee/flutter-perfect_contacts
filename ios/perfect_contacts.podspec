#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint perfect_contacts.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'perfect_contacts'
  s.version          = '0.0.1'
  s.summary          = 'A Flutter plugin to manage device contacts easily. Fetch, add, update, and delete contacts with clean APIs. Works seamlessly across Android and iOS for apps that need efficient contact management.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://waybeetech.com/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Waybee Technologies Pvt Ltd' => 'support@waybeetech.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'perfect_contacts_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
