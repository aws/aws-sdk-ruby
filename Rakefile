$REPO_ROOT = File.dirname(__FILE__)

$LOAD_PATH.unshift('build_tools')

Dir.glob("#{$REPO_ROOT}/gems/*/lib").each do |lib_dir|
  $LOAD_PATH.unshift(lib_dir)
end

require 'build_tools'
require 'aws-sdk-code-generator'

Dir.glob('**/*.rake').each do |task_file|
  load task_file
end

task :default => :test
