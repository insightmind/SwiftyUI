Pod::Spec.new do |s|
  s.name                      = "Swifty-UI"
  s.version                   = "1.0.0"
  s.summary                   = "Swifty-UI"
  s.homepage                  = "https://github.com/insightmind/SwiftyUI"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Niklas Bülow" => "me@niklasbuelow.com" }
  s.source                    = { :git => "https://github.com/insightmind/SwiftyUI.git", :tag => s.version.to_s }
  s.ios.deployment_target     = "13.0"
  s.tvos.deployment_target    = "13.0"
  s.watchos.deployment_target = "6.0"
  s.osx.deployment_target     = "10.15"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
