require 'rspec/core/rake_task'

desc "aws-sdk-core unit tests"
RSpec::Core::RakeTask.new('test:unit:aws-sdk-core') do |t|
  t.rspec_opts = "-I #{$REPO_ROOT}/aws-sdk-core/lib"
  t.rspec_opts << " -I #{$REPO_ROOT}/aws-sdk-core/spec"
  t.pattern = "#{$REPO_ROOT}/aws-sdk-core/spec"
end
task 'test:unit' => 'test:unit:aws-sdk-core'

desc 'aws-sdk-core integration tests'
task 'test:integration:aws-sdk-core' do |t|
  if ENV['AWS_INTEGRATION']
    Dir.chdir('aws-sdk-core') do
      exec("bundle exec cucumber -t ~@veryslow")
    end
  else
    puts(<<-MSG)

*** skipping aws-sdk-core integration tests ***
  export AWS_INTEGRATION=1 to enable integration tests

    MSG
  end
end
task 'test:integration' => 'test:integration:aws-sdk-core'
