require 'rubygems'

namespace :rbs do
  task :validate do
    all_sigs = Dir.glob('gems/*/sig').map{ |dir| "-I #{dir}" }.join(' ')
    sh("bundle exec rbs #{all_sigs} validate") do |ok, _|
      abort('one or more rbs validate failed') unless ok
    end
  end

  task :spytest do
    failures = []
    # Just test s3 for most type coverage
    %w[core s3].each do |identifier|
      sdk_gem = "aws-sdk-#{identifier}"
      puts "Run rspec with RBS::Test on `#{sdk_gem}`"
      env = {
        'RUBYOPT' => '-r bundler/setup -r rbs/test/setup',
        'RBS_TEST_RAISE' => 'true',
        'RBS_TEST_LOGLEVEL' => 'error',
        'RBS_TEST_OPT' => "-I gems/aws-sdk-core/sig -I gems/#{sdk_gem}/sig",
        'RBS_TEST_TARGET' => "\"Aws,Aws::*,Seahorse,Seahorse::*\"",
      }
      sh(env, "bundle exec rspec gems/#{sdk_gem}/spec --tag '~rbs_test:skip'") do |ok, _|
        failures << File.basename(File.dirname("gems/#{sdk_gem}/sig")) unless ok
      end
    end
    abort('one or more rspec with RBS::Test failed: %s' % [failures.join(', ')]) unless failures.empty?
  end

  task test: [:validate, :spytest]
end
