desc "aws-sdk-resource unit tests"
RSpec::Core::RakeTask.new('test:unit:aws-sdk-resources') do |t|
  t.rspec_opts = "-I #{$REPO_ROOT}/aws-sdk-resources/lib"
  t.rspec_opts << " -I #{$REPO_ROOT}/aws-sdk-resources/spec"
  t.pattern = "#{$REPO_ROOT}/aws-sdk-resources/spec"
end
task 'test:unit' => 'test:unit:aws-sdk-resources'
