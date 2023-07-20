Pod::Spec.new do |s|
    s.name           = "FairmaticSDK"
    s.version        = "1.0.0"
    s.summary        = "Fairmatic iOS SDK"
    s.homepage       = "http://www.fairmatic.com"
    s.license        = { :type => "Commercial", :text => "See https://www.fairmatic.com/privacy-policy" }
    s.author         = { "Fairmatic" => "it@fairmatic.com" }
    s.swift_version  = '5.0'
    s.cocoapods_version = '>= 1.9.0'
    s.platform       = :ios, '11.0'
    s.source         = { :git => "https://github.com/fairmatic/fairmatic-cocoapods.git", :tag => "#{s.version}" }
    s.libraries      = "z.1.1.3", "sqlite3", "c++"
    s.requires_arc = true
    s.default_subspec = 'Standard'
  
    s.subspec 'Standard' do |ss|
      ss.vendored_frameworks = 'FairmaticSDK.xcframework'
      ss.frameworks     = "Accelerate", "SystemConfiguration", "CoreLocation", "CoreMotion", "CoreTelephony"
      ss.dependency "AWSCore", '~>2.23.2'
      ss.dependency "AWSSQS", '~>2.23.2'
      ss.dependency "SQLite.swift", '~>0.12.2'
    end
  end
  