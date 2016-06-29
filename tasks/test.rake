require 'rspec/core/rake_task'

task 'test:unit:each' do
  failures = []
  Dir.glob("#{$REPO_ROOT}/gems/*/spec").each do |spec_dir|
    sh("bundle exec rspec #{spec_dir}") do |ok, _|
      failures << File.basename(File.dirname(spec_dir)) if !ok
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')])
end

rule /test:unit:.+$/ do |task|
  spec_dir = "#{$REPO_ROOT}/gems/#{task.name.split(':').last}/spec"
  sh("bundle exec rspec #{spec_dir}")
end

task 'test:unit' do
  cmd = []
  cmd << 'bundle exec rspec'
  cmd += Dir.glob("#{$REPO_ROOT}/gems/*/spec")
  cmd = cmd.join(' ')
  sh(cmd)
end

task 'test:coverage:clear' do
  sh("rm -rf #{File.join($REPO_ROOT, 'coverage')}")
end

desc 'Runs unit tests'
task 'test:unit' => 'test:coverage:clear'

desc 'Runs integration tests'
task 'test:integration' => 'test:coverage:clear'

desc 'Runs unit and integration tests'
task 'test' => ['test:unit', 'test:integration']

begin
  require 'coveralls/rake/task'
  Coveralls::RakeTask.new
rescue LoadError
end
