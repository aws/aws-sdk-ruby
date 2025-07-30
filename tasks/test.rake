# frozen_string_literal: true

namespace :test do
  desc 'Execute every spec file'
  task 'spec' do
    Dir.glob('**/spec').tap do |spec_file_list|
      sh("bundle exec rspec #{spec_file_list.join(' ')}")
    end
  end

  desc 'Executes every spec file, one at a time.'
  task 'spec:each' do
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

  desc 'Executes specs for a single gem, e.g. spec:aws-sdk-s3'
  task 'spec:*'
  rule /spec:.+$/ do |task|
    spec_dir = "gems/#{task.name.split(':').last}/spec"
    sh("bundle exec rspec #{spec_dir}")
  end

  task 'protocols' => %w[
    protocols:awsJson1_0
    protocols:awsJson1_1
    protocols:awsQuery
    protocols:restJson1
  ]

  task 'protocols:awsJson1_0' do
    run_protocol_test('JsonRpc10')
    run_protocol_test('QueryCompatibleJsonRpc10')
  end

  task 'protocols:awsJson1_1' do
    run_protocol_test('JsonProtocol')
  end

  task 'protocols:awsQuery' do
    run_protocol_test('AwsQuery')
  end

  task 'protocols:restJson1' do
    run_protocol_test('RestJson')
  end

  # TODO: move this to a Spec Helper inside build_tools/
  def run_protocol_test(service_name)
    model = JSON.load_file("build_tools/aws-sdk-code-generator/spec/protocol_tests/#{service_name}/model.json")
    gem_name = service_name.underscore
    plan_options = {
      module_name: service_name,
      gem_name: gem_name,
      gem_version: '0.1.0',
      destination_root: Dir.mktmpdir
    }
    plan = Smithy::Plan.new(model, :client, plan_options)
    Smithy.generate(plan)
    sh("bundle exec rspec #{plan.destination_root}/spec/#{gem_name}/protocol_spec.rb --format documentation")
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
end