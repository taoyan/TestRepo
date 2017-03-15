Pod::Spec.new do |s|
  s.name     = 'JimustockFoundation'
  s.version  = '1.0.7'
  s.license  = 'MIT'
  s.summary  = 'pods make JimustockFoundation test'
  s.homepage = 'https://www.bbae.com'
  # s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'bbae yant' => 'tao.yan@alphayee.com' }
  s.source   = { :git => 'http://git.jimubox.com/BBAE/iOS-toB-SourceCode.git', :tag => 'v1.0.7', :submodules => true}
  # s.source = { :http => 'http://localhost/Users/jimubox/Desktop/jimustock_iOS_BBAE' }
  s.requires_arc = true
  
  # s.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  # s.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  
#   pch_Foundation = <<-EOS
# #import "JMBResourceManager.h"

# EOS
  # s.prefix_header_contents = pch_Foundation
  # s.prefix_header_file = "jimustock_iOS_BBAE/bbaestock/jimustockFoundation/Supporting Files/jmsFoundation.pch"
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
  end


  s.subspec 'Constant' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/*.{h,m}'
    ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Constant/JMSConstant.h'
  end

  s.subspec 'Category' do |ss|
    ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/**/*.{h,m}'
    ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/**/*.h'
    ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Category/Category.h'
    ss.ios.dependency 'JimustockFoundation/ResourceManager'
  end

  # s.subspec 'Vendor' do |ss|
  #   ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/**/*.{h,m}'
  #   ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/**/*.h'
  #   ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Vendor.h'

  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  # end


  # s.subspec 'View' do |ss|
  #   ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.{h,m}'
  #   ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.h'
  #   ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/JMSFoundationView.h'
  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  #   ss.ios.dependency 'JimustockFoundation/Vendor'
  # end


  end