task :build do
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
