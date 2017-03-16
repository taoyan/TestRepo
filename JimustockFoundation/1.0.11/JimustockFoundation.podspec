Pod::Spec.new do |s|
  s.name     = 'JimustockFoundation'
  s.version  = '1.0.11'
  s.license  = 'MIT'
  s.summary  = 'pods make JimustockFoundation test'
  s.homepage = 'https://www.bbae.com'
  # s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'bbae yant' => 'tao.yan@alphayee.com' }
  s.source   = { :git => 'http://git.jimubox.com/BBAE/iOS-toB-SourceCode.git', :tag => 'v.1.0.11', :submodules => true}
  # s.source = { :http => 'http://localhost/Users/jimubox/Desktop/jimustock_iOS_BBAE' }
  s.requires_arc = true
  
  # s.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  # s.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/jimustockFoundation.h'
  
  pch_Foundation = <<-EOS
#import "JMBResourceManager.h"

EOS
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


  s.subspec 'Vendor' do |ss|
    # ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Vendor.h'
    # ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Vendor.h'

    ss.subspec 'Masonry' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/*.{h,m}'
      sss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/*.h'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/Masonry/Masonry.h'
    end

    ss.subspec 'JPDecrypt' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/JPDecrypt/*.{h,m}'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/JPDecrypt/JPDecrypt.h'
    end

    ss.subspec 'MyLayout' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MyLayout/*.{h,m}'
      sss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MyLayout/*.h'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MyLayout/MyLayout.h'
    end

    ss.subspec 'AFNetworking' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/AFNetworking/*.{h,m}'
      sss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/AFNetworking/*.h'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/AFNetworking/BBAEAFNetworking.h'
    end

    ss.subspec 'MJRefresh' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MJRefresh/**/*.{h,m}'
      sss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MJRefresh/*.h'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MJRefresh/BBAEMJRefresh.h'
      sss.resource = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MJRefresh/BBAEMJRefresh.bundle'
      sss.ios.dependency 'JimustockFoundation/ResourceManager'
    end

    ss.subspec 'MyAttributedString' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MyAttributedString/*.{h,m}'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/MyAttributedString/MyAttributedStringBuilder.h'
    end

    ss.subspec 'JMSCustomBaseViews' do |sss|
      sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/JMSCustomBaseViews/*.{h,m}'
      sss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/JMSCustomBaseViews/*.h'
      sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/JMSCustomBaseViews/JMSCustomBaseViews.h'
      sss.ios.dependency 'JimustockFoundation/Category'
      # sss.ios.dependency 'JimustockFoundation/ResourceManager'
    end

    # ss.subspec 'JMSToastView' do |sss|
    #   sss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/ToastView/*.{h,m}'
    #   sss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/Vendor/ToastView/JMSToastView.h'
    #   sss.ios.dependency 'JimustockFoundation/ResourceManager'
    #   sss.ios.dependency 'JimustockFoundation/Vendor/MyLayout'
    # end
  end


  # s.subspec 'View' do |ss|
  #   ss.source_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.{h,m}'
  #   ss.private_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/*.h'
  #   ss.public_header_files = 'jimustock_iOS_BBAE/bbaestock/jimustockFoundation/jimustockFoundation/View/JMSFoundationView.h'
  #   ss.ios.dependency 'JimustockFoundation/ResourceManager'
  #   ss.ios.dependency 'JimustockFoundation/Vendor'
  # end


  end