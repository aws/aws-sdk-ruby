# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('build_tools/aws-sdk-code-generator/lib', __dir__))
require 'aws-sdk-code-generator'

desc 'build aws-sdk-lambda'
task 'build:aws-sdk-lambda' do
  AwsSdkCodeGenerator.generate_aws_sdk_lambda
end

desc 'Executes every spec file, one at a time.'
task 'test:spec:each' do
  failures = []
  Dir.glob('**/spec/**/*_spec.rb').each do |spec_file|
    sh("bundle exec rspec #{spec_file}") do |ok, _|
      failures << spec_file unless ok
    end
  end
  msg = "One or more spec files had failures:\n\n"
  failures.each do |path|
    msg += "bundle exec rspec #{path}\n"
  end
  abort(msg) unless failures.empty?
end

desc 'Executes specs for a single gem, e.g. test:spec:aws-sdk-s3'
task 'test:spec:*'

rule /test:spec:.+$/ do |task|
  spec_dir = "gems/#{task.name.split(':').last}/spec"
  sh("bundle exec rspec #{spec_dir}")
end

desc 'Execute spec tests.'
task 'test:spec' do
  Dir.glob('**/spec').tap do |spec_file_list|
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
  end
end

desc 'Execute spec tests for all gems except core'
task 'test:spec:gems' do
  Dir.glob('**/spec').tap do |spec_file_list|
    spec_file_list.delete('gems/aws-sdk-core/spec')
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
  end
end

# TODO: generalize all of this
task 'spec:protocol_tests' => %w[
  spec:protocol_tests:restJson1
  spec:protocol_tests:awsJson1_0
  spec:protocol_tests:awsJson1_1
]

task 'spec:protocol_tests:restJson1' do
  model = JSON.load_file('gems/aws-sdk-core/spec/fixtures/protocol_tests/restJson1/model.json')
  plan_options = {
    module_name: 'RestJson',
    gem_name: 'restJson1',
    gem_version: '0.1.0',
    destination_root: Dir.mktmpdir
  }
  plan = Smithy::Plan.new(model, :client, plan_options)
  Smithy.generate(plan)
  $LOAD_PATH.unshift("#{plan.destination_root}/lib")
  $LOAD_PATH.unshift('gems/aws-sdk-core/lib')
  require plan.gem_name
  sh("bundle exec rspec -I gems/aws-sdk-core/lib -I #{plan.destination_root}/lib spec #{plan.destination_root}/spec --format documentation")
ensure
  cleanup_gem(plan.module_name, plan.destination_root)
end

task 'spec:protocol_tests:awsJson1_0' do
  model = JSON.load_file('gems/aws-sdk-core/spec/fixtures/protocol_tests/awsJson1_0/model.json')
  plan_options = {
    module_name: 'AwsJson1_0',
    gem_name: 'awsJson1_0',
    gem_version: '0.1.0',
    destination_root: Dir.mktmpdir
  }
  plan = Smithy::Plan.new(model, :client, plan_options)
  Smithy.generate(plan)
  $LOAD_PATH.unshift("#{plan.destination_root}/lib")
  $LOAD_PATH.unshift('gems/aws-sdk-core/lib')
  require plan.gem_name
  sh("bundle exec rspec -I gems/aws-sdk-core/lib -I #{plan.destination_root}/lib spec #{plan.destination_root}/spec --format documentation")
ensure
  cleanup_gem(plan.module_name, plan.destination_root)
end

task 'spec:protocol_tests:awsJson1_1' do
  model = JSON.load_file('gems/aws-sdk-core/spec/fixtures/protocol_tests/awsJson1_1/model.json')
  plan_options = {
    module_name: 'AwsJson1_1',
    gem_name: 'awsJson1_1',
    gem_version: '0.1.0',
    destination_root: Dir.mktmpdir
  }
  plan = Smithy::Plan.new(model, :client, plan_options)
  Smithy.generate(plan)
  $LOAD_PATH.unshift("#{plan.destination_root}/lib")
  $LOAD_PATH.unshift('gems/aws-sdk-core/lib')
  require plan.gem_name
  sh("bundle exec rspec -I gems/aws-sdk-core/lib -I #{plan.destination_root}/lib spec #{plan.destination_root}/spec --format documentation")
ensure
  cleanup_gem(plan.module_name, plan.destination_root)
end

def cleanup_gem(module_name, tmpdir = nil)
  undefine_module(module_name)
  return unless tmpdir

  if ENV.fetch('SMITHY_RUBY_KEEP_GENERATED_SOURCE', 'false') == 'true'
    puts "Leaving generated service in: #{tmpdir}"
  else
    FileUtils.rm_rf(tmpdir)
  end
  $LOAD_PATH.delete("#{tmpdir}/lib")
end

def undefine_module(module_name)
  module_names = module_name.split('::')
  module_names.reverse.each_cons(2) do |child, parent|
    Object.const_get(parent).send(:remove_const, child)
  end
  Object.send(:remove_const, module_names.first)
end
