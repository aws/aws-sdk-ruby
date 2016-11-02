desc 'Build every gem.'
task 'gems:build' do
  Dir.glob('gems/*').each do |gem_dir|
    Rake::Task["gems:build:#{File.basename(gem_dir)}"].invoke
  end
end

desc "Builds a single gem, eg gems:build:aws-sdk-s3"
task 'gems:build:*'

rule /gems:build:.+$/ do |task|
  gem_name = task.name.split(':').last
  Dir.chdir("gems/#{gem_name}") do
    version = File.read('VERSION').strip
    sh("gem build #{gem_name}.gemspec")
    sh("mv #{gem_name}-#{version}.gem ../../")
  end
end
