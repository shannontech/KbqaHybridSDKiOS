#
# Be sure to run `pod lib lint KbqaHybridSDKiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KbqaHybridSDKiOS'
  s.version          = '0.1.1'
  s.summary          = '香侬KBQA H5SDK'

  s.description      = <<-DESC
香侬KBQA，H5版本SDK
                       DESC

  s.homepage         = 'https://github.com/shannontech/KbqaHybridSDKiOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shannonai' => 'wmadao11@gmail.com' }
  s.source           = { :git => "https://github.com/shannontech/KbqaHybridSDKiOS.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  # swift版本
  s.swift_versions = "5.0"

  # 静态库framework位置
  s.vendored_frameworks = 'KbqaHybridSDKiOS/*.{framework}'

  #s.frameworks = 'Foundation'

  s.source_files = 'KbqaHybridSDKiOS/Classes/**/*'
  # s.resource_bundles = {
  #   'KbqaHybridSDKiOS' => ['KbqaHybridSDKiOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
