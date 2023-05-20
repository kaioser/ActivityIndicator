#
# Be sure to run `pod lib lint Indicator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'Indicator'
    s.version          = '0.1.2'
    s.summary          = '系统活动指示器'
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/kaioser/ActivityIndicator'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yangxiongkai' => 'yangxiongkai@126.com' }
    s.source           = { :git => 'https://github.com/kaioser/ActivityIndicator.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '13.0'
    s.swift_version = '5.0'
    s.source_files = 'Indicator/Classes/System/**/*'
    
end
