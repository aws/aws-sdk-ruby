# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('build_tools/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-sdk-core/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-partitions/lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('gems/aws-sigv4/lib', __dir__))

require 'build_tools'

require 'rubocop/rake_task'

RuboCop::RakeTask.new

Dir.glob('tasks/**/*.rake').each do |task_file|
  load(task_file)
end
