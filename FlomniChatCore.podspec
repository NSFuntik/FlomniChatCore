Pod::Spec.new do |s|
  s.name             = 'FlomniChatCore'
  s.version          = '0.0.1'
  s.summary          = 'A SwiftUI-based chat module for embedding in client applications.'
  s.description      = <<-DESC
FlomniChat is a chat module built with SwiftUI that can be embedded into client applications.
  DESC
  s.homepage         = 'https://i.dev.flomni.com/chat-corner/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'NSFuntik' => 'nsfuntik@gmail.com' }
  s.source           = { :git => 'https://github.com/NSFuntik/FlomniChatCore.git', :tag => s.version.to_s }
  s.ios.deployment_target = '15.0'
  s.source_files = 'build/FlomniChatCore.xcframework'

  s.dependency 'Socket.IO-Client-Swift'
end
