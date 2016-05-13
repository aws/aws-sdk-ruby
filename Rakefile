$REPO_ROOT = File.dirname(__FILE__)

$VERSION = ENV['VERSION'] || File.read(File.join($REPO_ROOT, 'VERSION')).strip

%w(
  aws-sdk
  aws-sdk-core
  aws-sdk-code-generator
  build_tools
).each do |dir|
  $LOAD_PATH.unshift(File.join($REPO_ROOT, dir, 'lib'))
end

Dir.glob("#{$REPO_ROOT}/services/*").each do |svc|
  $LOAD_PATH.unshift(File.join(svc, 'lib'))
end

require 'aws-sdk'
Dir.glob('**/*.rake').each do |task_file|
  load task_file
end

task :default => :test
