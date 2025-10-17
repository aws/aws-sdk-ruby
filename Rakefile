# frozen_string_literal: true

$REPO_ROOT = File.dirname(__FILE__)
$GEMS_DIR = "#{$REPO_ROOT}/gems"

$LOAD_PATH.unshift("#{$REPO_ROOT}/build_tools/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-sdk-core/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-partitions/lib")
$LOAD_PATH.unshift("#{$GEMS_DIR}/aws-sigv4/lib")

require 'build_tools'

require 'rubocop/rake_task'

RuboCop::RakeTask.new

Dir.glob('tasks/**/*.rake').each do |task_file|
  load(task_file)
end
