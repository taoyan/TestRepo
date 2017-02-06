Pod::Spec.new do |s|
  s.name             = "MyFoundation_JMSFNB"
  s.version          = "2.1.2"
  s.summary          = "The open source test"
  s.homepage         = "http://git.jimubox.com"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "http://git.jimubox.com/mobile-developers/jimustock_iOS_BBAE.git", :tag => 'v2.1.2_testMod' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/Tool/{JMSFNB*}'
  #s.framework    = 'UIKit'


  #s.dependency   'ResourceManager' 

end
