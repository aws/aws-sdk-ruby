desc 'Builds every service gem'
task 'build' do
  BuildTools::Services.each(&:build)
end

# build a single service gem; invoke like `rake build:s3`
rule /^build:\w+$/ do |task|
  identifier = task.name.split(':').last
  BuildTools::Services.service(identifier).build
end

task 'build:clean' do
  Dir.glob("#{$REPO_ROOT}/gems/**/*").each do |path|
    next if File.directory?(path)
    next if BuildTools::GENERATED_SRC_FIRST_LINE != File.open(path, 'r', &:gets)
    sh("rm #{path}")
  end
end
