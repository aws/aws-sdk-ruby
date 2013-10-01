require 'bundler/setup'

Dir[File.join('tasks', '**', '*.rake')].each do |task_file|
  load task_file
end

task :default => :test
