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

desc 'aws-sdk-resource integration tests'
task 'test:integration:aws-sdk-resources' do |t|
  Dir.chdir('aws-sdk-resources') do
    exec("bundle exec cucumber -t ~@veryslow")
  end
end
task 'test:integration' => 'test:integration:aws-sdk-resources'
