require 'rspec/core/rake_task'

desc "aws-sdk-core unit tests"
RSpec::Core::RakeTask.new('test:unit:aws-sdk-core') do |t|
  t.rspec_opts = "-I #{$REPO_ROOT}/aws-sdk-core/lib"
  t.rspec_opts << " -I #{$REPO_ROOT}/aws-sdk-core/spec"
  t.pattern = "#{$REPO_ROOT}/aws-sdk-core/spec"
end
task 'test:unit' => 'test:unit:aws-sdk-core'

begin
  require 'cucumber/rake/task'
  name = 'test:integration'
  desc = 'aws-sdk-core integration tests'
  Cucumber::Rake::Task.new(name, desc) do |t|
    t.cucumber_opts = 'aws-sdk-core/features'
  end
rescue LoadError
  task 'test:integration' do
    puts 'skipping inetegration tests, cucumber not loaded'
  end
end

begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
rescue LoadError
end
