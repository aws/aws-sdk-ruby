desc 'Build every gem.'
task 'gems' do
  Dir.glob('gems/*').each do |gem_dir|
    Rake::Task[gem_dir.sub('/', ':')].invoke
  end
end

desc "Builds a single gem, eg gems:aws-sdk-s3"
task 'gems:*'

rule /gems:.+$/ do |task|
  gem_name = task.name.split(':').last
  Dir.chdir("gems/#{gem_name}") do
    version = File.read('VERSION').strip
    sh("gem build #{gem_name}.gemspec")
    sh("mv #{gem_name}-#{version}.gem ../../")
  end
end
