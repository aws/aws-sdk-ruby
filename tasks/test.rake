require 'rspec/core/rake_task'

##
## spec / unit tests
##

task 'test:spec:each' do
  failures = []
  Dir.glob("**/spec/**/*_spec.rb").each do |spec_dir|
    sh("bundle exec rspec #{spec_dir}") do |ok, _|
      failures << File.basename(File.dirname(spec_dir)) if !ok
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')])
end

rule /test:spec:aws-sdk-code-generator$/ do |task|
  # this package is outside of the gems folder
  sh('bundle exec rspec build_tools/aws-sdk-code-generator/spec')
end

rule /test:spec:.+$/ do |task|
  spec_dir = "gems/#{task.name.split(':').last}/spec"
  sh("bundle exec rspec #{spec_dir}")
end

task 'test:spec' do
  sh("bundle exec rspec #{Dir.glob('**/spec').join(' ')}")
end

##
## feature / integration tests
##

rule /^test:features:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  sh("bundle exec cucumber -t ~@veryslow -r #{dir} #{dir}")
end

task 'test:features' do
  failures = []
  Dir.glob('gems/*/features').each do |dir|
    sh("bundle exec cucumber -t ~@veryslow -r #{dir} #{dir}") do |ok, _|
      failures << File.basename(File.dirname(dir)) if !ok
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')]) unless failures.empty?
end

desc 'Runs unit and integration tests'
task 'test' => ['test:spec', 'test:features']
task 'default' => 'test'
