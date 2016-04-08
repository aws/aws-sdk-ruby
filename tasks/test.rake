require 'rspec/core/rake_task'

# unit test tasks
%w(resources core code-generator).each do |gem|
  desc "aws-sdk-#{gem} unit tests"
  RSpec::Core::RakeTask.new("test:unit:#{gem}") do |t|
    t.rspec_opts = "-I #{$REPO_ROOT}/aws-sdk-#{gem}/lib"
    t.rspec_opts << " -I #{$REPO_ROOT}/aws-sdk-#{gem}/spec"
    t.rspec_opts << " -f d -c"
    t.pattern = "#{$REPO_ROOT}/aws-sdk-#{gem}/spec"
  end
  task 'test:unit' => "test:unit:#{gem}"
end

# integration test tasks
%w(resources core).each do |gem|
  desc "aws-sdk-#{gem} integration tests"
  task "test:integration:#{gem}" do |t|
    if ENV['AWS_INTEGRATION']
      Dir.chdir("aws-sdk-#{gem}") do
        exec("bundle exec cucumber -t ~@veryslow")
      end
    else
      puts(<<-MSG)

  *** skipping aws-sdk-core integration tests ***
    export AWS_INTEGRATION=1 to enable integration tests

      MSG
    end
  end
  task 'test:integration' => "test:integration:#{gem}"
end

task 'test:coverage:clear' do
  sh("rm -rf #{File.join($REPO_ROOT, 'coverage')}")
end

desc 'Runs unit tests'
task 'test:unit' => 'test:coverage:clear'

desc 'Runs integration tests'
task 'test:integration' => 'test:coverage:clear'

desc 'Runs unit and integration tests'
task 'test' => ['test:unit', 'test:integration']

begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
rescue LoadError
end
