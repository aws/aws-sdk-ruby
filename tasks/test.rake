# frozen_string_literal: true

require 'rspec/core/rake_task'

##
## spec / unit tests
##

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

rule /test:spec:aws-sdk-code-generator$/ do |task|
  # this package is outside of the gems folder
  sh('bundle exec rspec build_tools/aws-sdk-code-generator/spec')
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

##
## integration / smoke tests
##

desc 'Executes smoke tests for a single gem'
rule /^test:smoke:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  tags = "-t '@smoke'"
  ENV.fetch('AWS_SMOKE_TEST_SKIP_TAGS', '').split(',').each do |tag|
    tags += " -t 'not @#{tag}'"
  end
  sh("bundle exec cucumber --retry 3 #{tags} -r #{dir} #{dir} --publish-quiet")
end

desc 'Executes all smoke tests'
rule 'test:smoke' do
  failures = []
  Dir.glob('gems/*/features').each do |dir|
    gem_name = dir.match(%r{gems/(.*)/features})[1]
    sh("bundle exec rake test:smoke:#{gem_name}") do |ok, _|
      failures << File.basename(File.dirname(dir)) unless ok
    end
  end
  abort('one or more test suites failed: %s' % [failures.join(', ')]) unless failures.empty?
end

desc 'Executes integration tests for a single gem'
rule /^test:integration:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  tags = "-t 'not @smoke' -t 'not @veryslow'"
  sh("bundle exec cucumber --retry 3 #{tags} -r #{dir} #{dir} --publish-quiet")
end

desc 'Executes all integration tests'
task 'test:integration' do
  failures = []
  Dir.glob('gems/*/features').each do |dir|
    gem_name = dir.match(%r{gems/(.*)/features})[1]
    sh("bundle exec rake test:integration:#{gem_name}") do |ok, _|
      failures << File.basename(File.dirname(dir)) unless ok
    end
  end
  abort('one or more test suites failed: %s' % [failures.join(', ')]) unless failures.empty?
end

desc 'Executes feature tests for a single gem'
rule /^test:features:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  tags = "-t 'not @veryslow'"
  sh("bundle exec cucumber --retry 3 #{tags} -r #{dir} #{dir} --publish-quiet")
end

desc 'Executes all feature tests'
task 'test:features' do
  failures = []
  Dir.glob('gems/*/features').each do |dir|
    gem_name = dir.match(%r{gems/(.*)/features})[1]
    sh("bundle exec rake test:features:#{gem_name}") do |ok, _|
      failures << File.basename(File.dirname(dir)) unless ok
    end
  end
  abort('one or more test suites failed: %s' % [failures.join(', ')]) unless failures.empty?
end

desc 'Runs unit and integration tests after rebuilding gems'
task 'test' => ['build', 'test:spec', 'test:features']
task 'default' => 'test'
