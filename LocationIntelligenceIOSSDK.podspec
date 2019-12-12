#
# Be sure to run `pod lib lint LocationIntelligenceIOSSDK.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "LocationIntelligenceIOSSDK"
    s.version          = "8.0.0"

    s.summary          = "Location Intelligence APIs"
    s.description      = <<-DESC
                         Incorporate our extensive geodata into everyday applications, business processes and workflows.
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "Apache License, Version 2.0"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "PitneyBowes" => "LBSSupport@pb.com" }

    s.source_files = 'LocationIntelligenceIOSSDK/**/*.{m,h}'
    s.public_header_files = 'LocationIntelligenceIOSSDK/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.5'
end

