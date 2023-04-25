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
## feature / integration tests
##

rule /^test:features:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  tags = "-t 'not @veryslow'"
  sh("bundle exec cucumber --retry 3 #{tags} -r #{dir} #{dir} --publish-quiet")
end

desc 'Executes integration tests.'
task 'test:features' do
  failures = []
  Dir.glob('gems/*/features').each do |dir|
    tags = "-t 'not @veryslow'"
    sh("bundle exec cucumber --retry 3 #{tags} -r #{dir} #{dir} --publish-quiet") do |ok, _|
      failures << File.basename(File.dirname(dir)) unless ok
    end
  end
  abort('one or more test suites failed: %s' % [failures.join(', ')]) unless failures.empty?
end

desc 'Runs unit and integration tests after rebuilding gems'
task 'test' => ['build', 'test:spec', 'test:features']
task 'default' => 'test'
