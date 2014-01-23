require 'rspec/core/rake_task'

desc "Runs unit tests"
RSpec::Core::RakeTask.new('test:unit') do |t|
  t.pattern = "#{File.dirname(File.dirname(__FILE__))}/spec"
end

task :test => 'test:unit'

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  rm_rf "coverage/"
  Rake::Task['test'].execute
end
