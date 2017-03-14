Pod::Spec.new do |s|
  s.name     = 'JimustockFoundation'
  s.version  = '1.0.3'
  s.license  = 'MIT'
  s.summary  = 'pods make JimustockFoundation test'
  s.homepage = 'https://www.bbae.com'
  # s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'bbae yant' => 'tao.yan@alphayee.com' }
  s.source   = { :git => 'http://git.jimubox.com/BBAE/iOS-toB-SourceCode.git', :tag => 'v1.0.3' }
  # s.source = { :http => 'http://localhost/Users/jimubox/Desktop/jimustock_iOS_BBAE' }
  s.requires_arc = true
  
  # s.public_header_files = 'bbaestock/jimustockFoundation/jimustockFoundation/**/*.{h,m}'
  # s.source_files = 'bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  
  pch_AF = <<-EOS
#import "JMBResourceManager.h"

EOS
  s.prefix_header_contents = pch_AF
  s.ios.deployment_target = '7.0'



  s.subspec 'ResourceManager' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/*.{h,m}'
    ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/ResourceManager/JMBResourceManager.h'
  end

  s.subspec 'Tool' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Tool/*.{h,m}'
    ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Tool/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Tool/JMSFoundationTool.h'

    ss.ios.dependency 'JimustockFoundation/ResourceManager'
  end
  

  s.subspec 'UIImage+PDF' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/UIImage+PDF/*.{h,m}'
    ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/UIImage+PDF/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/UIImage+PDF/*.h'
    ss.ios.dependency 'JimustockFoundation/ResourceManager'
  end


  s.subspec 'Constant' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/*.{h,m}'
    # ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/*.h'
    ss.ios.dependency 'JimustockFoundation/ResourceManager'
  end

  # s.subspec 'View' do |ss|
  #   ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.{h,m}'
  #   ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.h'
  #   ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.h'
  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  # end

  # s.subspec 'Category' do |ss|
  #   ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/**/*.{h,m}'
  #   ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/**/*.h'
  #   ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/**/*.h'

  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  # end


  end