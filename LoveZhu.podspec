#
#  Be sure to run `pod spec lint CocoaPodsDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name                  = 'LoveZhu'
    spec.version               = '1.0.5'
    spec.ios.deployment_target = '8.0'
    spec.license               = 'MIT'
    spec.homepage              = 'https://github.com/fbi080703'
    spec.author                = { "wulongwang" => "747616044@qq.com" }
    spec.summary               = '测试'
    spec.source                = { :git => 'https://github.com/fbi080703/CocoaPodsDemo.git', :tag => spec.version }
    spec.source_files          = 'Classes/**/{*.h,*.m}'
    spec.public_header_files   = 'Classes/lib/header/*.h'
#spec.resources             = "Classes/Resources/*.png"
    spec.resource_bundles = {
        #'CocoaPodsDemo' => ['Resources/*.png']
        'OtherResources' => ['Classes/Resources/*.png'],
        'WeiboSDK'       => ['Classes/lib/resource/WeiboSDK.bundle/**/*.png']
    }
    spec.frameworks            = 'UIKit','AVKit','SystemConfiguration', 'CFNetwork','CoreGraphics', 'QuartzCore'
    spec.library               = 'z'
    spec.requires_arc          = true
    spec.description  = <<-DESC
        A longer description of CocoaPodsDemo in Markdown format.
        * Think: Why did you write this? What is the focus? What does it do?
        * CocoaPods will be using this to generate tags, and improve search results.
        * Try to keep it short, snappy and to the point.
        * Finally, don't worry about the indent, CocoaPods strips it!
    DESC
    spec.dependency            'AFNetworking'
    spec.dependency            'SDWebImage','~>3.8.0'
    spec.libraries           = 'sqlite3.0', 'stdc++.6.0.9'
    spec.weak_framework      = 'StoreKit','UserNotifications'
#spec.vendored_frameworks
    spec.vendored_libraries  = ['Classes/lib/sdk/*.{a}']

    spec.subspec 'Evernote' do | evernote|
        evernote.source_files = 'Classes/Evernote/{*.h,*.m}'
        evernote.public_header_files = 'Classes/Evernote/*.h'
#networkEngine.dependency 'AFNetworking', '~> 2.3'
    end

#s.subspec 'Facebook' do |facebook|
#facebook.source_files = 'Classes/Facebook/*'
#facebook.public_header_files = 'Classes/Facebook/*.h'
#end

#s.subspec 'CommonTools' do |commonTools|
#commonTools.source_files = 'Pod/Classes/CommonTools/**/*'
#commonTools.public_header_files = 'Pod/Classes/CommonTools/**/*.h'
#commonTools.dependency 'OpenUDID', '~> 1.0.0'
#end

end
