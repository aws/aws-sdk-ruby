require 'rspec/core/rake_task'

##
## spec / unit tests
##

task 'test:unit:each' do
  failures = []
  Dir.glob("**/spec").each do |spec_dir|
    sh("bundle exec rspec #{spec_dir}") do |ok, _|
      failures << File.basename(File.dirname(spec_dir)) if !ok
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')])
end

rule /test:unit:.+$/ do |task|
  spec_dir = "gems/#{task.name.split(':').last}/spec"
  sh("bundle exec rspec #{spec_dir}")
end

task 'test:unit' do
  sh("bundle exec rspec #{Dir.glob('**/spec').join(' ')}")
end

##
## feature / integration tests
##

rule /^test:integration:.+$/ do |task|
  dir = "gems/#{task.name.split(':').last}/features"
  sh("bundle exec cucumber -t ~@veryslow -r #{dir} #{dir}")
end

task 'test:integration' do
  failures = []
  Dir.glob('**/features').each do |dir|
    sh("bundle exec cucumber -t ~@veryslow -r #{dir} #{dir}") do |ok, _|
      failures << File.basename(File.dirname(dir)) if !ok
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')])
end








task 'test:coverage:clear' do
  sh("rm -rf #{File.join($REPO_ROOT, 'coverage')}")
end

desc 'Runs unit (unit) tests'
task 'test:unit' => 'test:coverage:clear'

desc 'Runs feature (integration) tests'
task 'test:integration' => 'test:coverage:clear'

desc 'Runs unit and integration tests'
task 'test' => ['test:unit', 'test:integration']

begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
rescue LoadError
end
