$REPO_ROOT = File.dirname(__FILE__)

$LOAD_PATH.unshift('build_tools/lib')

Dir.glob("#{$REPO_ROOT}/gems/*/lib").each do |lib_dir|
  puts lib_dir
  $LOAD_PATH.unshift(lib_dir)
end

require 'aws-sdk'

Dir.glob('**/*.rake').each do |task_file|
  load task_file
end

task :default => :test
