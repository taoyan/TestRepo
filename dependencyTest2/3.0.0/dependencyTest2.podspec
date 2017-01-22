Pod::Spec.new do |s|
  s.name             = "dependencyTest2"
  s.version          = "3.0.0"
  s.summary          = "The open source test"
  s.homepage         = "https://git.oschina.net/yant/testRepo"
  s.license          = '{ :type => "MIT" }'
  s.author           = { "yant" => "tao.yan@jimu.com" }
  s.source           = { :git => "https://git.oschina.net/yant/testRepo.git", :tag => 'v3.0.0'}
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TestRepo/TestRepo/PodClass/*'

  #s.compiler_flags = '-Wnon-modular-include-in-framework-module'  
  s.dependency 'baseTest'

end
