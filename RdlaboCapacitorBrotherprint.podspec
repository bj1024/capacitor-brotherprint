require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'RdlaboCapacitorBrotherprint'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = ['ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}']
  s.ios.deployment_target  = '11.0'
  s.dependency 'Capacitor'
  s.dependency 'BRLMPrinterKit'
  s.swift_version = '5.1'
  # s.preserve_path = 'ios/Plugin/module.modulemap'

   s.preserve_path = 'ios/Plugin/module.modulemap'
  #  s.module_map = 'ios/Plugin/module.modulemap'
  
  s.xcconfig = {
  #"SWIFT_INCLUDE_PATHS" => "$(PODS_TARGET_SRCROOT)/ios/Plugin/"
  }

  s.script_phase = { :name => 'Hello World', :script => 'echo "Hello World"', :execution_position => :before_compile }

end
