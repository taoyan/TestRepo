Pod::Spec.new do |s|
  s.name             = "threeLib"
  s.version          = "2.1.2"
  s.summary          = "The open source test"
  s.homepage         = "http://git.jimubox.com"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "http://git.jimubox.com/mobile-developers/jimustock_iOS_BBAE.git", :tag => 'v2.1.2_testMod6' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  #s.compiler_flags = '-Wnon-modular-include-in-framework-module'

  s.source_files = 'bbaestock/Vendor/MiPushSdk/*.{h,m}'
  #s.framework    = 'UIKit'

  #s.ios.library = 'sqlite3'
  #s.vendored_library = 'MiPushSdk/libMiPushSDK.a'

  #s.dependency   'MyResourceManager',  '2.1.2' 
  #s.compiler_flags = {'Header_Search_Paths=recursive'}
  #s.prefix_header_file = 'testMod/testMod/Foundation/ARC/jimustockFoundation.h'

end
