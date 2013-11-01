def execute_cmd cmd
  puts cmd if Rake.application.options.trace
  system(cmd)
  unless $?.to_i == 0
    $stderr.puts "Command failed (#{$?}): #{cmd}"
    exit($? >> 8)
  end
end

desc "Runs unit tests"
task 'test:unit' do
  root = File.dirname(File.dirname(__FILE__))
  spec_files = File.join(root, 'spec', '**', '*_spec.rb')
  opts = ['bundle exec rspec']
  opts += FileList[spec_files].sort
  execute_cmd(opts.join(' '))
end

task :test => 'test:unit'

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  rm_rf "coverage/"
  Rake::Task['test'].execute
end
