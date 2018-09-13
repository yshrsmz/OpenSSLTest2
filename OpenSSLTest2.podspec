#
# Be sure to run `pod lib lint OpenSSLTest2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenSSLTest2'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OpenSSLTest2.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yshrsmz/OpenSSLTest2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yshrsmz' => 'the.phantom.bane@gmail.com' }
  s.source           = { :git => 'https://github.com/yshrsmz/OpenSSLTest2.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '4.2'
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  
  s.module_name = 'OpenSSL'
  s.source_files = 'OpenSSLTest2/Classes/**/*.swift', 'OpenSSLTest2/OpenSSL/include/**/*.h'
  s.header_dir = 'openssl'
  s.public_header_files = 'OpenSSLTest2/OpenSSL/include/openssl/*.h'
  s.preserve_paths = 'OpenSSLTest2/Classes/OpenSSL/module.modulemap'
  s.libraries = 'crypto', 'ssl'
  s.vendored_libraries = 'OpenSSLTest2/OpenSSL/lib/libcrypto.a', 'OpenSSLTest2/OpenSSL/lib/libssl.a'
  
  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/OpenSSLTest2/OpenSSL/module $(PODS_TARGET_ROOT)/OpenSSL/module',
      #'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/OpenSSLTest2/OpenSSL/include $(PODS_TARGET_ROOT)/OpenSSL/include',
      'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/OpenSSLTest2/OpenSSL/lib'
  }
end
