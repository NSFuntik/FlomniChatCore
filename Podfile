# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

target 'dev' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for dev
  pod 'FlomniChatCore', :path => '../FlomniChatCore'
end

target 'FlomniChatCore' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
	
  # Pods for FlomniChatCore
pod 'Socket.IO-Client-Swift', :git => 'https://github.com/socketio/socket.io-client-swift.git', :branch => 'master'
end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
    end
  end
end
