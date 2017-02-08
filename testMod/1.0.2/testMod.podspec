Pod::Spec.new do |s|
  s.name             = "testMod"
  s.version          = "1.0.2"
  s.summary          = "The open source test"
  s.homepage         = "http://git.jimubox.com"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "https://git.oschina.net/yant/testMod.git", :tag => 'v1.0.2' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = false
  s.requires_arc = 'testMod/testMod/Foundation/ARC/**/*.{h,m}'

  #s.compiler_flags = '-Wnon-modular-include-in-framework-module'

  s.source_files = ['testMod/testMod/Foundation/ARC/**/*.{h,m}', 'testMod/testMod/Foundation/JSONKit/*.{h,m}', 'testMod/testMod/Foundation/KeychainItemWrapper/*.{h,m}']
  #s.framework    = 'UIKit'

  s.ios.library = 'sqlite3'

  #s.dependency   'MyResourceManager',  '2.1.2' 
  #s.compiler_flags = {'Header_Search_Paths=recursive'}
  s.prefix_header_file = 'testMod/testMod/Foundation/ARC/jimustockFoundation.h'

end
