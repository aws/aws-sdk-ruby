# frozen_string_literal: true

require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/sigv4'

module AwsSdkCodeGenerator
  module Welds
    # Provides default plugins.
    class SigV4 < Smithy::Weld
      def for?(service)
        _id, service = service.first
        return false unless service.fetch('traits', {}).key?('aws.auth#sigv4')

        say_status :insert, 'Adding the SigV4 plugin', @plan.quiet
        true
      end

      def add_plugins
        base_path = 'aws-sdk-core/plugins'
        {
          Aws::Core::Plugins::SigV4 => { require_path: "#{base_path}/sigv4" }
        }
      end

      def add_auth_schemes
        ['aws.auth#sigv4']
      end

      def add_dependencies
        { 'aws-sigv4' => '2.0.0.pre0' }
      end
    end
  end
end
