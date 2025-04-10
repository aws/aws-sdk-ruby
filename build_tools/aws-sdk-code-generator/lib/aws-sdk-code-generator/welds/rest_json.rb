# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Welds
    # Enables the restJson1 protocol.
    class RestJson < Smithy::Weld
      def for?(service)
        _, service = service.first
        return false unless service.fetch('traits', {}).include?('aws.protocols#restJson1')

        say_status :insert, 'Adding the Rest JSON protocol', @plan.quiet
        true
      end

      def protocols
        { 'restJson1' => Aws::Core::RestJson::Protocol }
      end
    end
  end
end
