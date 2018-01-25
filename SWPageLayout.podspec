Pod::Spec.new do |s|
s.name             = 'SWPageLayout'
s.version          = '0.1.0'
s.summary          = 'Pagination layout'

s.homepage         = 'https://github.com/abramchuk-v/PageLayout'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Abramchuk Uladzislau' => 'abramchukv97@gmail.com' }
s.source           = { :git => 'https://github.com/abramchuk-v/PageLayout.git', :tag => s.version.to_s }

s.ios.deployment_target = '10.0'
s.source_files = 'PagingLayoutExample/PageLayout/*'
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
end
