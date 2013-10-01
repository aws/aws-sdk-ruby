def execute_cmd cmd
  puts cmd if Rake.application.options.trace
  system(cmd)
  unless $?.to_i == 0
    $stderr.puts "Command failed (#{$?}): #{cmd}"
    exit($? >> 8)
  end
end

desc "Runs unit tests"
task :test do
  opts = ['bundle exec rspec']
  opts += FileList[ENV['FILES'] || 'spec/**/*_spec.rb'].sort
  execute_cmd(opts.join(' '))
end

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  rm_rf "coverage/"
  Rake::Task['test'].execute
end
