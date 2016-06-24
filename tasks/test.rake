require 'rspec/core/rake_task'

task 'test:unit' do
  failures = []
  Dir.glob("#{$REPO_ROOT}/gems/*/spec").each do |spec_dir|
    lib_dir = "#{File.dirname(spec_dir)}/lib"
    sh("bundle exec rspec -I #{lib_dir} -I #{spec_dir} #{spec_dir}") do |ok, _|
      if !ok
        failures << File.basename(File.dirname(spec_dir))
      end
    end
  end
  abort("one or more test suites failed: %s" % [failures.join(', ')])
end

rule /test:unit:.+$/ do |task|
  gem_dir = "#{$REPO_ROOT}/gems/#{task.name.split(':').last}"
  lib_dir = "#{gem_dir}/lib"
  spec_dir = "#{gem_dir}/spec"
  sh("bundle exec rspec -I #{lib_dir} -I #{spec_dir} #{spec_dir}")
end

task 'test:unit:fast' do
  options = []
  spec_dirs = []
  Dir.glob("#{$REPO_ROOT}/gems/*/spec").each do |spec_dir|
    lib_dir = "#{File.dirname(spec_dir)}/lib"
    options << "-I #{lib_dir} -I #{spec_dir}"
    spec_dirs << spec_dir
  end
  cmd = []
  cmd << 'bundle exec rspec'
  cmd += options
  cmd += spec_dirs
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
