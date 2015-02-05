desc 'Builds the aws-sdk gems'
task 'gems:build' do
  sh("rm -f *.gem")
  $GEM_NAMES.each do |gem_name|
    Dir.chdir(gem_name) do
      sh("gem build #{gem_name}.gemspec")
      sh("mv #{gem_name}-#{$VERSION}.gem ..")
    end
  end
end

task 'gems:push' do
  $GEM_NAMES.each do |gem_name|
    sh("gem push #{gem_name}-#{$VERSION}*.gem")
  end
end
