Pod::Spec.new do |s|
  s.name         = 'AFMobilePayRequestHandler'
  s.version      = '1.0.2'
  s.summary      = 'Send and request money via Danske Banks MobilePay app.'
  s.homepage            = 'https://github.com/Fogh/AFMobilePayRequestHandler'
  s.license      = 'MIT'
  s.author       = { 'Anders Fogh Eriksen' => 'andfogh@gmail.com' }
  s.source       = { :git => 'https://github.com/Fogh/AFMobilePayRequestHandler.git', :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.source_files = 'AFMobilePayRequestHandler/*.{h,m}'
  s.requires_arc = true
  s.social_media_url = 'https://twitter.com/f0gh'
end
