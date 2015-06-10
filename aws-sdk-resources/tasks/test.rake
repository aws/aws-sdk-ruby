require 'rspec/core/rake_task'

desc "aws-sdk-resource unit tests"
RSpec::Core::RakeTask.new('test:unit:aws-sdk-resources') do |t|
  t.rspec_opts = "-I #{$REPO_ROOT}/aws-sdk-resources/lib"
  t.rspec_opts << " -I #{$REPO_ROOT}/aws-sdk-resources/spec"
  t.pattern = "#{$REPO_ROOT}/aws-sdk-resources/spec"
end
task 'test:unit' => 'test:unit:aws-sdk-resources'

task 'test:unit:resource-name-collisions' do
  ENV['AWS_SDK_SAFE_DEFINE'] = '1'
  Aws.eager_autoload!
end
task 'test:unit' => 'test:unit:resource-name-collisions'

begin
  require 'cucumber/rake/task'
  desc = 'aws-sdk-resource integration tests'
  Cucumber::Rake::Task.new('test:integration:aws-sdk-resources', desc) do |t|
    t.cucumber_opts = 'aws-sdk-resources/features -t ~@veryslow'
  end
  task 'test:integration' => 'test:integration:aws-sdk-resources'
rescue LoadError
  desc 'aws-sdk-resources integration tests'
  task 'test:integration' do
    puts 'skipping aws-sdk-resource integration tests, cucumber not loaded'
  end
end
