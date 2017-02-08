require_relative '../changelog'

require 'tempfile'
require 'rspec'

RSpec::Matchers.define(:match_example) do |expected|
  match do |actual|
    actual.to_s.strip == expected.to_s.strip
  end
  failure_message do |actual|
    <<-MSG
expected:

#{expected.to_s.strip}

got:

#{actual.to_s.strip}
    MSG
  end
end
