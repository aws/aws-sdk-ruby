desc 'Builds every service gem'
task 'build' do
  BuildTools::Services.each do |service|
    Rake::Task["build:#{service.identifier}"].invoke
  end
end

desc 'Build one service gem, eg `build:dynamodb`'
task 'build:*'

# Build a single service gem; invoke like `rake build:s3`
rule /^build:\w+$/ do |task|
  identifier = task.name.split(':').last
  BuildTools::Services[identifier].build
end

# Aws::STS is generated directly into the `aws-sdk-core` gem.
# It is need to provide session credentials and assume role support.
# Only building source, but not gemspecs, version file, etc.
task 'build:sts' do
  sts = BuildTools::Services.service('sts')
  sts.dependencies.clear
  builder = BuildTools::Builder::Source.new(sts) {}
  builder.build
end

task 'build:clean' do
  Dir.glob("#{$REPO_ROOT}/gems/**/*").each do |path|
    next if File.directory?(path)
    next if BuildTools::GENERATED_SRC_FIRST_LINE != File.open(path, 'r', &:gets)
    sh("rm #{path}")
  end
end
