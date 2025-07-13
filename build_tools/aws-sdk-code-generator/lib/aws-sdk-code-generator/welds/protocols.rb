# frozen_string_literal: true

require 'aws-sdk-core/plugins/json_rpc'
require 'aws-sdk-core/plugins/rest_json'

module AwsSdkCodeGenerator
  module Welds
    # Adds a supported protocol plugin to the client if the service has the trait, prioritized by a list.
    class Protocols < Smithy::Weld
      PROTOCOL_PRIORITY = %w[
        aws.protocols#restJson1
        aws.protocols#awsJson1_1
        aws.protocols#awsJson1_0
      ].freeze

      def for?(service)
        _id, service = service.first
        service_traits = service.fetch('traits', {})
        PROTOCOL_PRIORITY.each do |id|
          if service_traits.key?(id)
            @protocol = id
            return true
          end
        end
        false
      end

      def add_plugins
        case @protocol
        when 'aws.protocols#restJson1'
          { Aws::Core::Plugins::RestJson => { require_path: 'aws-sdk-core/plugins/rest_json' } }
        when 'aws.protocols#awsJson1_1', 'aws.protocols#awsJson1_0'
          { Aws::Core::Plugins::JsonRpc => { require_path: 'aws-sdk-core/plugins/json_rpc' } }
        end
      end

      def add_dependencies
        case @protocol
        when 'aws.protocols#restJson1', 'aws.protocols#awsJson1_1', 'aws.protocols#awsJson1_0'
          { 'smithy-json' => '1.0.0.pre1' }
        end
      end
    end
  end
end
