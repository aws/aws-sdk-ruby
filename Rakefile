$REPO_ROOT = File.dirname(__FILE__)

$GEM_NAMES = [
  'aws-sdk-core',
  'aws-sdk-resources',
  'aws-sdk',
]

$GEM_NAMES.each do |gem_name|
  $LOAD_PATH.unshift(File.join($REPO_ROOT, gem_name, 'lib'))
end

require 'aws-sdk'

Dir.glob('**/*.rake').each do |task_file|
  load task_file
end

begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
rescue LoadError
end

desc 'Runs unit and integration tests'
task 'test' => ['test:unit', 'test:integration']

task :default => :test
