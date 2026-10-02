# frozen_string_literal: true

module Aws
  module Core
    SCHEMA_EXTENSION = Smithy::Schema::Extension
    HTTP_EXTENSION = Smithy::Client::HttpExtension
    EMPTY_STRUCTURE = Smithy::Schema::EmptyStructure

    # Cached AWS service metadata.
    #
    # Raw Smithy traits remain available on +service.traits+. This extension
    # resolves AWS-wide values once and stores them as flat, AWS-prefixed keys.
    # @api private
    module Extension
      class << self
        # Resolves and caches the AWS JSON content type for a service.
        #
        # Example:
        #   Extension.json_content_type(service)
        #   # => 'application/x-amz-json-1.1'
        def json_content_type(service)
          service.fetch_metadata(:aws_json_content_type) do
            json_content_type_value(service)
          end
        end

        # Resolves and caches the AWS JSON target for an operation.
        #
        # Example:
        #   Extension.json_target(service, operation)
        #   # => 'ExampleService.GetThing'
        def json_target(service, operation)
          operation[:aws_json_target] ||= begin
            prefix = service.fetch_metadata(:aws_json_target_prefix) do
              service.id&.split('#')&.last
            end
            "#{prefix}.#{operation.name}".freeze
          end
        end

        # Resolves and caches whether a service enables Query-compatible errors.
        #
        # Example:
        #   Extension.query_compatible?(service)
        #   # => true
        def query_compatible?(service)
          service.fetch_metadata(:aws_query_compatible) do
            service.traits.key?('aws.protocols#awsQueryCompatible')
          end
        end

        # Resolves and caches the AWS SDK service identifier.
        #
        # Example:
        #   Extension.service_id(service)
        #   # => 'Example Service'
        def service_id(service)
          service.fetch_metadata(:aws_service_id) do
            service.traits.dig('aws.api#service', 'sdkId')
          end
        end

        private

        def json_content_type_value(service)
          if service.traits.key?('aws.protocols#awsJson1_0')
            'application/x-amz-json-1.0'
          elsif service.traits.key?('aws.protocols#awsJson1_1')
            'application/x-amz-json-1.1'
          end
        end
      end
    end
  end
end
