#
#  Be sure to run `pod spec lint CocoaPodsDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name                  = 'CocoaPodsDemo'
    spec.version               = '1.0.1'
    spec.ios.deployment_target = '8.0'
    spec.license               = 'MIT'
    spec.homepage              = 'https://github.com/fbi080703'
    spec.author                = { "wulongwang" => "747616044@qq.com" }
    spec.summary               = '测试'
    spec.source                = { :git => 'https://github.com/fbi080703/CocoaPodsDemo.git', :tag => spec.version }
    spec.source_files          = "CocoaPodsDemo/**/{*.h,*.m}"
    #spec.resources             = "CocoaPodsDemo/Resources/*.png"
    spec.resource_bundles = {
#'CocoaPodsDemo' => ['Resources/*.png']
        'CocoaPodsDemo' => ['CocoaPodsDemo/Resources/*.png']
    }
    spec.frameworks            = 'UIKit'
    spec.library               = 'z'
    spec.requires_arc          = true
    spec.description  = <<-DESC
        A longer description of CocoaPodsDemo in Markdown format.
        * Think: Why did you write this? What is the focus? What does it do?
        * CocoaPods will be using this to generate tags, and improve search results.
        * Try to keep it short, snappy and to the point.
        * Finally, don't worry about the indent, CocoaPods strips it!
    DESC


end
