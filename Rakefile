# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('build_tools/aws-sdk-code-generator/lib', __dir__))

require 'rubocop/rake_task'

RuboCop::RakeTask.new

Dir.glob('tasks/**/*.rake').each do |task_file|
  load(task_file)
end

desc 'Build the upstream protocol tests and copy the source JSON to the test folder'
task 'sync-protocol-tests' do
  protocol_tests_dir = 'build_tools/aws-sdk-code-generator/spec/protocol_tests'
  smithy_build_file = "#{protocol_tests_dir}/smithy-build.json"
  skip_tests_file = File.join(Gem::Specification.find_by_name('smithy').full_gem_path, 'model/skip_tests.smithy')
  FileUtils.touch(smithy_build_file) # https://github.com/smithy-lang/smithy/issues/2537
  sh("smithy build --config #{protocol_tests_dir}/smithy-build.json #{skip_tests_file}")

  # Ideally should have a manifest, but use the smithy-build as the source of truth.
  build_file = JSON.load_file("#{protocol_tests_dir}/smithy-build.json")
  build_file['projections'].each_key do |projection_name|
    FileUtils.mkdir_p("#{protocol_tests_dir}/#{projection_name}")
    puts "Syncing protocol tests for #{projection_name}..."
    FileUtils.cp(
      "build/smithy/#{projection_name}/model/model.json",
      "#{protocol_tests_dir}/#{projection_name}/model.json"
    )
  end
end
