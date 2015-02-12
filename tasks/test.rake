desc "Unit tests"
task 'test:unit' do
  sh("bundle exec rspec")
end

begin
  require 'cucumber/rake/task'
  desc 'Integration tests'
  task 'test:integration' do
    sh("bundle exec cucumber --format pretty --tags ~@wip")
  end
rescue LoadError
  task 'test:integration' do
    puts 'skipping integration tests, cucumber not available'
  end
end

task 'test:loading' do
  execute_cmd("ruby spec/require_test_1.rb")
  execute_cmd("ruby spec/require_test_2.rb")
  execute_cmd("ruby spec/require_test_3.rb")
end

task 'test' => 'test:unit'
task 'test' => 'test:loading'
