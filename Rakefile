root = File.dirname(__FILE__)

$:.unshift(File.join(root, "lib"))
$:.unshift(File.join(root, "vendor/seahorse/lib"))

Dir[File.join(root, 'tasks', '**', '*.rake')].each do |task_file|
  load task_file
end

# vendored task files
Dir[File.join(root, 'vendor', '**', 'tasks', '**', '*.rake')].each do |task_file|
  load task_file
end

task :default => :test
