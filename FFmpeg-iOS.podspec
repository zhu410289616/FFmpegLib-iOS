Pod::Spec.new do |s|
  s.name             = 'FFmpeg-iOS'
  s.version          = '4.3.1'
  s.summary          = '一个FFmpeg-iOS的私有库'
  s.description      = <<-DESC
  一个FFmpeg-iOS的私有库，方便集成
                       DESC

  s.homepage         = 'https://github.com/zhu410289616/FFmpegLib-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'FFmpeg-iOS' => 'zhu410289616@163.com' }
  s.source           = { :git => 'https://github.com/zhu410289616/FFmpegLib-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.vendored_libraries = 'FFmpeg-iOS/lib/*.a'
  
  s.source_files        = 'FFmpeg-iOS/include/**/*.h'
  s.public_header_files = 'FFmpeg-iOS/include/**/*.h'
  s.header_mappings_dir = 'FFmpeg-iOS/include'
  
  s.libraries = 'bz2', 'iconv', 'z', 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
  s.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox', 'AVFoundation'

  s.xcconfig = {
    'USER_HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/FFmpeg-iOS/FFmpeg-iOS/include"'
  }

end

