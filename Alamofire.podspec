Pod::Spec.new do |s|
  s.name = 'Alamofire'
  s.version = '5.5.0'
  s.license = 'MIT'
  s.summary = 'Elegant HTTP Networking in Swift'
  s.homepage = 'https://github.com/Alamofire/Alamofire'
  s.authors = { 'Alamofire Software Foundation' => 'info@alamofire.org' }
  s.source = { :git => '.' }
  s.documentation_url = 'https://alamofire.github.io/Alamofire/'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

  s.swift_versions = ['5.3', '5.4', '5.5', '5.6']

  s.source_files = 'Source/*.swift'
  s.exclude_files = 'Source/AlamofireConcurrency/Concurrency.swift'

  s.subspec 'Concurrency' do |sp|
    sp.source_files = 'Source/AlamofireConcurrency/Concurrency.swift'
  end

  s.frameworks = 'CFNetwork'
end
