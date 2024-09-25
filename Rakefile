# frozen_string_literal: true

$REPO_ROOT = File.dirname(__FILE__)
$GEMS_DIR = "#{$REPO_ROOT}/gems"
$CORE_LIB = "#{$REPO_ROOT}/gems/aws-sdk-core/lib"

$:.unshift("#{$REPO_ROOT}/build_tools")
$:.unshift("#{$REPO_ROOT}/build_tools/aws-sdk-code-generator/lib")
$:.unshift("#{$GEMS_DIR}/aws-sdk-core/lib")
$:.unshift("#{$GEMS_DIR}/aws-partitions/lib")
$:.unshift("#{$GEMS_DIR}/aws-eventstream/lib")
$:.unshift("#{$GEMS_DIR}/aws-sigv4/lib")

task 'require-build-tools' do
  require 'build_tools'
end

Dir.glob("#{$REPO_ROOT}/tasks/**/*.rake").each do |task_file|
  load(task_file)
end
