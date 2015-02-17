$REPO_ROOT = File.dirname(__FILE__)

$VERSION = ENV['VERSION'] || File.read(File.join($REPO_ROOT, 'VERSION')).strip

task 'test:coverage:clear' do
  sh("rm -rf #{File.join($REPO_ROOT, 'coverage')}")
end

Dir.glob('**/*/**/*.rake').each do |task_file|
  puts task_file
  load task_file
end

task :default => :test
