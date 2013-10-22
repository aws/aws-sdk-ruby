def execute_cmd cmd
  puts cmd if Rake.application.options.trace
  system(cmd)
  unless $?.to_i == 0
    $stderr.puts "Command failed (#{$?}): #{cmd}"
    exit($? >> 8)
  end
end

def run_rspec
  opts = ['bundle exec rspec']
  opts += FileList[ENV['FILES'] || 'spec/**/*_spec.rb'].sort
  execute_cmd(opts.join(' '))
end

namespace :test do

  desc "Runs unit tests"
  task :unit do
    run_rspec
    Dir.chdir('vendor/seahorse') { run_rspec }
  end

  desc "Runs integration tests"
  task :integration do
    execute_cmd('bundle exec cucumber')
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
