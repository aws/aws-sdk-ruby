module BuildTools
  class Builder
    class Specs

      def initialize(service)
        @service = service
      end

      def build
        FileWriter.new(spec_helper_path).write(spec_helper)
      end

      private

      def spec_helper_path
        File.join(@service.gem_dir, 'spec', 'spec_helper.rb')
      end

      def spec_helper
        <<-SPEC_HELPER
$:.unshift(File.expand_path('../../lib', __FILE__))
#{load_paths}

require 'rspec'
require 'webmock/rspec'
require '#{gem_name}'

RSpec.configure do |config|
  config.before(:each) do

    stub_const('ENV', {})

    # disable loading credentials from shared file
    allow(Dir).to receive(:home).and_raise(ArgumentError)

    # disable instance profile credentials
    path = '/latest/meta-data/iam/security-credentials/'
    stub_request(:get, "http://169.254.169.254\#{path}").to_raise(SocketError)

  end
end
        SPEC_HELPER
      end

      def gem_name
        @service.gem_name
      end

      def load_paths
        @service.dependencies.map do |gem_name, _|
          "$:.unshift(File.expand_path('../../../#{gem_name}/lib', __FILE__))"
        end.join("\n")
      end

    end
  end
end
