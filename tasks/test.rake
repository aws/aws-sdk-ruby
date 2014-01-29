require 'rspec/core/rake_task'
require 'cucumber/rake/task'

namespace :test do

  desc "Runs unit tests"
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = "spec"
  end

  Cucumber::Rake::Task.new(:integration) do |t|
    t.cucumber_opts = "features --tags ~@pending"
  end

end

desc 'Runs unit and integration tests'
task :test => ['test:unit', 'test:integration']

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  rm_rf "coverage/"
  task = Rake::Task['test']
  task.reenable
  task.invoke
end
