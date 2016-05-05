require 'build_tools'

BuildTools::Services.new.each do |service|
  BuildTools::Tasks::GenerateService.new(service)
end
