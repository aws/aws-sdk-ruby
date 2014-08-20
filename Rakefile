root = File.dirname(__FILE__)

Dir.glob(File.join(root, '**', 'lib')).each { |lib| $:.unshift(lib) }

$REPO_ROOT = File.dirname(__FILE__)
$GEM_NAMES = [
  'aws-sdk-core',
  'aws-sdk-resources',
  'aws-sdk',
]

require 'aws-sdk-resources'

Dir[File.join(root, '**', '*.rake')].each do |task_file|
  load task_file
end

desc 'Runs unit tests'
task 'test:unit'

desc 'Runs unit and integration tests'
task :test => ['test:unit', 'test:integration']

task :default => :test
