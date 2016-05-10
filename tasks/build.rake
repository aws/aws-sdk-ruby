require 'build_tools'

desc 'Rebuilds all services.'
task 'build'

BuildTools::Services.each do |service|
  task 'build' => BuildTools::Tasks::GenerateService.new(service)
end
