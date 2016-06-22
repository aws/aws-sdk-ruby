desc 'Builds every service gem'
task 'build' do
  BuildTools::Services.each(&:build)
end

# build a single service gem; invoke like `rake build:s3`
rule /^build:\w+$/ do |task|
  identifier = task.name.split(':').last
  BuildTools::Services.service(identifier).build
end
