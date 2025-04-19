# frozen_string_literal: true

# TODO: consider whether this is awful or not
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/sigv4'
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/checksum_required'
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/host_prefix'
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/idempotency_token'
require_relative '../../../../../gems/aws-sdk-core/lib/aws-sdk-core/plugins/request_compression'

module AwsSdkCodeGenerator
  module Welds
    # Provides default plugins.
    class Plugins < Smithy::Weld
      def for?(_service)
        say_status :insert, 'Adding default AWS plugins', @plan.quiet
        true
      end

      def add_dependencies
        { 'aws-sdk-core' => '4.0.0.pre0' }
      end

      def remove_dependencies
        ['smithy-client']
      end

      def add_plugins
        base_path = 'aws-sdk-core/plugins'
        {
          Aws::Core::Plugins::ChecksumRequired => { require_path: "#{base_path}/checksum_required" },
          Aws::Core::Plugins::HostPrefix => { require_path: "#{base_path}/host_prefix" },
          Aws::Core::Plugins::IdempotencyToken => { require_path: "#{base_path}/idempotency_token" },
          Aws::Core::Plugins::RequestCompression => { require_path: "#{base_path}/request_compression" },
          Aws::Core::Plugins::SigV4 => { require_path: "#{base_path}/sigv4" }
        }
      end
    end
  end
end
