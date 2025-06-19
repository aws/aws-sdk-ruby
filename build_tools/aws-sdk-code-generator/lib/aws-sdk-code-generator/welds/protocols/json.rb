# frozen_string_literal: true

# TODO: consider whether this is awful or not
require_relative '../../../../../../gems/aws-sdk-core/lib/aws-sdk-core/json_rpc/protocol'

module AwsSdkCodeGenerator
  module Welds
    module Protocols
      # Enables the awsJson1_1 protocol.
      class Json < Smithy::Weld
        def for?(service)
          _, service = service.first
          return false unless service.fetch('traits', {}).key?('aws.protocols#awsJson1_1')

          say_status :insert, 'Adding the awsJson1_1 protocol', @plan.quiet
          true
        end

        def protocols
          { 'awsJson1_1' => Aws::Core::JsonRpc::Protocol }
        end
      end
    end
  end
end
