# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('build_tools/aws-sdk-code-generator/lib', __dir__))

require 'rubocop/rake_task'

RuboCop::RakeTask.new

Dir.glob('tasks/**/*.rake').each do |task_file|
  load(task_file)
end
