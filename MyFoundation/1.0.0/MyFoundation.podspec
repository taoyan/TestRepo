Pod::Spec.new do |s|
  s.name             = "MyFoundation"
  s.version          = "1.0.0"
  s.summary          = "The open source test"
  s.homepage         = "http://git.jimubox.com"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "http://git.jimubox.com/mobile-developers/jimustock_iOS_BBAE.git", :branch => '20170118_dev_v2.1.2' }
  
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/*'
  s.framework    = 'Foundation', 'UIKit'
end
