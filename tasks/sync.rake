# frozen_string_literal: true

namespace :sync do
  desc 'Build the upstream protocol tests and copy the source JSON to the test folder'
  task 'protocol-tests' do
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

  desc 'Sync AWS service models from aws-models repository'
  task 'aws-models' do
    raise 'Models directory not provided' unless (src_dir = ENV.fetch('AWS_MODELS_DIR', nil))

    require 'json'
    require 'fileutils'

    dest_dir = 'models'
    FileUtils.mkdir_p(dest_dir)

    def find_sdk_id(model_path)
      model = JSON.load_file(model_path)
      _, service = model['shapes'].find { |_, shape| shape['type'] == 'service' }
      raise "Service shape not found in #{model_path}" unless service

      service['traits']['aws.api#service']['sdkId']
    end

    Dir.glob("#{src_dir}/*/smithy/model.json").each do |src_path|
      sdk_id = find_sdk_id(src_path)
      puts "Found service: #{sdk_id}"
      json_name = sdk_id.downcase.gsub(' ', '-')
      dest_path = File.join(dest_dir, "#{json_name}.json")
      puts "Copying from #{src_path} to #{dest_path}"
      FileUtils.cp(src_path, dest_dir)
    end
  end
end
