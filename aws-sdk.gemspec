Gem::Specification.new do |s|
  s.name    = 'aws-sdk'
  s.version = '3.1.5'
  s.summary = 'AWS SDK for ruby with patch for batch writes'

  s.author   = 'Joshua Orion Skylar Hickman'
  s.email    = 'josh@hickman.pro'
  s.homepage = 'https://github.com/JoshuaOSHickman/aws-sdk-for-ruby'

  # Include everything in the lib folder
  #s.files = Dir['lib/**/*']

  # Supress the warning about no rubyforge project
  s.rubyforge_project = 'nowarning'
end
