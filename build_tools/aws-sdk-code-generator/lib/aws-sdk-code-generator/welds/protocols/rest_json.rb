# frozen_string_literal: true

# TODO: consider whether this is awful or not
require_relative '../../../../../../gems/aws-sdk-core/lib/aws-sdk-core/rest_json/protocol'

module AwsSdkCodeGenerator
  module Welds
    module Protocols
      # Enables the restJson1 protocol.
      class RestJson < Smithy::Weld
        def for?(service)
          _, service = service.first
          return false unless service.fetch('traits', {}).key?('aws.protocols#restJson1')

          say_status :insert, 'Adding the restJson1 protocol', @plan.quiet
          true
        end

        def protocols
          { 'restJson1' => Aws::Core::RestJson::Protocol }
        end
      end
    end
  end
end
