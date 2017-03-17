Pod::Spec.new do |s|
  s.name     = 'Masonry'
  s.version  = '1.0.13'
  s.license  = 'MIT'
  s.summary  = 'pods make Masonry test'
  s.homepage = 'https://www.bbae.com'
  # s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'bbae yant' => 'tao.yan@alphayee.com' }
  s.source   = { :git => 'http://git.jimubox.com/BBAE/iOS-toB-SourceCode.git', :tag => 'v1.0.13', :submodules => true}
  # s.source = { :http => 'http://localhost/Users/jimubox/Desktop/jimustock_iOS_BBAE' }
  s.requires_arc = true
  
  # s.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  # s.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  
  # s.prefix_header_contents = pch_Foundation
  # s.prefix_header_file = "jimustock_iOS_BBAE/bbaestock/jimustockFoundation/Supporting Files/jmsFoundation.pch"
  s.ios.deployment_target = '7.0'

  s.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/*.{h,m}'
  s.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/*.h'
  s.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/Masonry.h'

end
