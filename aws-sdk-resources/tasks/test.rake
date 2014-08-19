desc "aws-sdk-resource unit tests"
RSpec::Core::RakeTask.new('test:unit') do |t|
  t.rspec_opts = '-I aws-sdk-resources/spec'
  t.pattern = "aws-sdk-resources/spec"
end
