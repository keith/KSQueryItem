Pod::Spec.new do |s|
  s.name         = "KSQueryItem"
  s.version      = "1.0.1"
  s.summary      = "A NSDictionary category to return NSURLQueryItems"
  s.homepage     = "https://github.com/Keithbsmiley/KSQueryItem"
  s.license      = "MIT"
  s.author             = { "Keith Smiley" => "keithbsmiley@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "https://github.com/Keithbsmiley/KSQueryItem.git", :tag => "v#{ s.version }" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true
end
