require 'rubygems'

namespace :rbs do
  task :validate do
    failures = []
    all_gems = Dir.glob("gems/*").map{File.basename(_1)}.to_set

    Dir.glob('gems/*/sig').each do |dir|
      sdk_gem = dir.sub(%r{gems/(.*)/sig}, '\1')
      spec = Gem::Specification::load("gems/#{sdk_gem}/#{sdk_gem}.gemspec")
      deps = spec.dependencies.select do |d|
        all_gems.include?(d.name) && File.directory?("gems/#{d.name}/sig")
      end.map { |d| d.name }

      puts "Validating gem `#{sdk_gem}` with deps #{deps}"
      sh("bundle exec rbs #{deps.map{"-I gems/#{_1}/sig"}.join(' ')} -I #{dir} validate --silent") do |ok, _|
        failures << File.basename(File.dirname(dir)) unless ok
      end
    end
    abort('one or more rbs validate failed: %s' % [failures.join(', ')]) unless failures.empty?
  end

  task :test do
    menifest = JSON.parse(File.read(File.expand_path("../services.json", __dir__)))
    failures = []
    all_gems = Dir.glob("gems/*").map{File.basename(_1)}.to_set
    menifest.each do |name, _config|
      identifier = AwsSdkCodeGenerator::Underscore.underscore(name)
      sdk_gem = "aws-sdk-#{identifier}"
      sig_dir = "gems/#{sdk_gem}/sig"
      next unless File.directory?(sig_dir)

      spec = Gem::Specification::load("gems/#{sdk_gem}/#{sdk_gem}.gemspec")
      deps = spec.dependencies.select do |d|
        all_gems.include?(d.name) && File.directory?("gems/#{d.name}/sig")
      end.map { |d| d.name }

      puts "Run rspec with RBS::Test on gem `#{sdk_gem}` with deps #{deps}"
      env = {
        'RBS_TEST_RAISE' => 'true',
        'RBS_TEST_LOGLEVEL' => 'warn',
        'RBS_TEST_OPT' => "\"#{deps.map { |dep| "-I gems/#{dep}/sig" }.join(' ')} -I #{sig_dir}\"",
        'RBS_TEST_TARGET' => "\'Aws::#{name}::*\'",
      }
      sh(env, "bundle exec rspec -r rbs/test/setup gems/#{sdk_gem}/spec --tag '~rbs_test_skip'") do |ok, _|
        failures << File.basename(File.dirname(sig_dir)) unless ok
      end
    end
    abort('one or more rspec with RBS::Test failed: %s' % [failures.join(', ')]) unless failures.empty?
  end
end
