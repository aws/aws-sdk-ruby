$REPO_ROOT = File.dirname(__FILE__)
$GEMS_DIR = File.join($REPO_ROOT, 'gems')

$LOAD_PATH.unshift("#{$REPO_ROOT}/build_tools")
$LOAD_PATH.unshift("#{$REPO_ROOT}/build_tools/aws-sdk-code-generator/lib")

require 'build_tools'
require 'aws-sdk-code-generator'

Dir.glob("#{$REPO_ROOT}/tasks/**/*.rake").each do |task_file|
  load(task_file)
end
