desc 'Builds the aws-sdk gems'
task 'gems:build' do
  sh("rm -f *.gem")
  [
    'aws-sdk-core',
    'aws-sdk-resources',
  ].each do |gem_name|
    Dir.chdir(gem_name) { sh("gem build #{gem_name}.gemspec") }
    sh("mv #{gem_name}/*.gem .")
  end
  sh("gem build aws-sdk.gemspec")
end

task 'gems:push' do
  sh("gem push aws-sdk-core-#{version}.gem")
  #sh("gem push aws-sdk-resources-#{version}.gem")
  #sh("gem push aws-sdk-#{version}.gem")
end
