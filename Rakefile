$REPO_ROOT = File.dirname(__FILE__)
$GEMS_DIR = File.join($REPO_ROOT, 'gems')

$LOAD_PATH.unshift("#{$REPO_ROOT}/build_tools")
$LOAD_PATH.unshift("#{$REPO_ROOT}/build_tools/aws-sdk-code-generator/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-sdk-core/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-partitions/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-sigv4/lib")

require 'build_tools'
require 'aws-sdk-code-generator'
require 'aws-sdk-core'

Dir.glob("#{$REPO_ROOT}/tasks/**/*.rake").each do |task_file|
  load(task_file)
end
