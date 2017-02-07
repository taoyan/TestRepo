Pod::Spec.new do |s|
  s.name             = "MyFoundation"
  s.version          = "2.1.2"
  s.summary          = "The open source test"
  s.homepage         = "http://git.jimubox.com"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "http://git.jimubox.com/mobile-developers/jimustock_iOS_BBAE.git", :tag => 'v2.1.2_testMod' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/{*, **}'
  #s.framework    = 'UIKit'


  #s.dependency   'MyResourceManager',  '2.1.2' 
  s.prefix_header_file = 'bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'

end
