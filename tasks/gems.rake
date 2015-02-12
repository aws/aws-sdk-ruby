desc 'Builds the aws-sdk gems'
task 'gems:build' do
  sh("rm -f *.gem")
  sh("gem build aws-sdk-v1.gemspec")
  sh("gem build aws-sdk.gemspec")
end

task 'gems:push' do
  sh("gem push aws-sdk-v1-#{$VERSION}.gem")
  sh("gem push aws-sdk-#{$VERSION}.gem")
end
