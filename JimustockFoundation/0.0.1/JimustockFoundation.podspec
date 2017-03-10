Pod::Spec.new do |s|
  s.name     = 'JimustockFoundation'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'pods make JimustockFoundation test'
  s.homepage = 'https://www.bbae.com'
  # s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'bbae yant' => 'tao.yan@alphayee.com' }
  s.source   = { :git => 'http://git.jimubox.com/mobile-developers/jimustock_iOS_BBAE.git', :tag => 'v0.0.1'}
  # s.source = { :http => 'http://localhost/Users/jimubox/Desktop/jimustock_iOS_BBAE' }
  s.requires_arc = true
  
  # s.public_header_files = 'bbaestock/jimustockFoundation/jimustockFoundation/**/*.{h,m}'
  # s.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'


  s.ios.deployment_target = '7.0'

  s.subspec 'ResourceManager' do |ss|
    ss.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/*.{h,m}'
    ss.private_header_files = 'bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/*.h'
    ss.public_header_files = 'bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/JMBResourceManager.h'

  end

  


  end