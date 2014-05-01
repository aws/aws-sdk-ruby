require 'rspec/core/rake_task'

namespace :test do
  desc "Runs unit tests"
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = "spec"
  end
end

desc 'Runs unit tests'
task :test => ['test:unit']

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:'test:integration') do |t|
    t.cucumber_opts = "features"
  end
  desc 'Runs unit and integration tests'
  task :test => ['test:integration']
rescue LoadError
end

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  rm_rf "coverage/"
  task = Rake::Task['test']
  task.reenable
  task.invoke
end
