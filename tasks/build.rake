task :build do
  [
    'aws-sdk-core',
    'aws-sdk-resources',
  ].each do |gem_name|
    Dir.chdir(gem_name) { sh("gem build #{gem_name}.gemspec") }
  end
  sh("gem build aws-sdk.gemspec")
end
