desc 'Builds every service gem'
task 'build' do
  BuildTools::Services.each do |service|
    Rake::Task["build:aws-sdk-#{service.identifier}"].invoke
  end
end

desc 'Build one service, e.g. `rake build  build:aws-sdk-dynamodb`'
task 'build:aws-sdk-*'

rule /^build:aws-sdk-\w+$/ do |task|
  # legacy generator
  identifier = task.name.split('-').last
  service = BuildTools::Services[identifier]
  BuildTools::Builder::Source.new(service).build

  # template-based generator
  svc = AwsSdkCodeGenerator::Service.new(
    version: '1.0.0',
    name: service.name,
    api: service.api,
    docs: service.models[:docs],
    painators: service.models[:painators],
    waiters: service.models[:waiters],
    resources: service.models[:resources],
    examples: service.models[:examples],
    gem_dependencies: service.dependencies,
    add_plugins: service.add_plugins,
    remove_plugins: service.remove_plugins,
  )
  builder = AwsSdkCodeGenerator::GemBuilder.new(service: svc)
  builder.build do |path, source|
    # TODO : conditionally bootstrap step_definitions
    next if File.basename(path) == 'step_definitions.rb'
    path = "gems/#{svc.gem_name}/#{path}"
    puts "r #{path}"
    FileUtils.mkdir_p(File.dirname(path))
    File.open(path, 'wb') do |file|
      file.write(source)
    end
  end

end

# Aws::STS is generated directly into the `aws-sdk-core` gem.
# It is need to provide session credentials and assume role support.
# Only building source, but not gemspecs, version file, etc.
task 'build:aws-sdk-sts' do
  sts = BuildTools::Services.service('sts')
  sts.dependencies.clear
  builder = BuildTools::Builder::Source.new(sts) {}
  builder.build
end
