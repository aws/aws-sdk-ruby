# frozen_string_literal: true

module Aws
  module Core
    SCHEMA_EXTENSION = Smithy::Schema::Extension
    HTTP_EXTENSION = Smithy::Client::HttpExtension
    EMPTY_STRUCTURE = Smithy::Schema::EmptyStructure

    # Cached AWS service metadata.
    #
    # Raw Smithy traits remain available on +service.traits+. This extension
    # resolves AWS-wide values once and stores them under +:aws_core+.
    # @api private
    module Extension
      KEY = :aws_core

      class << self
        # Returns cached metadata for an AWS service.
        #
        # Example:
        #   Extension.fetch(service)
        #   # => { json_content_type: 'application/x-amz-json-1.1', ... }
        def fetch(service)
          return service[KEY] if service.key?(KEY)

          service[KEY] = build_metadata(service)
        end

        # Returns the AWS JSON content type for a service.
        #
        # Example:
        #   Extension.json_content_type(service)
        #   # => 'application/x-amz-json-1.1'
        def json_content_type(service)
          fetch(service)[:json_content_type]
        end

        # Returns the AWS JSON target for an operation.
        #
        # Example:
        #   Extension.json_target(service, operation)
        #   # => 'ExampleService.GetThing'
        def json_target(service, operation)
          "#{fetch(service)[:json_target_prefix]}.#{operation.name}"
        end

        # Returns whether a service enables AWS Query-compatible errors.
        #
        # Example:
        #   Extension.query_compatible?(service)
        #   # => true
        def query_compatible?(service)
          fetch(service)[:query_compatible]
        end

        # Returns the AWS SDK service identifier.
        #
        # Example:
        #   Extension.service_id(service)
        #   # => 'Example Service'
        def service_id(service)
          fetch(service)[:service_id]
        end

        private

        def build_metadata(service)
          {
            json_content_type: json_content_type_value(service),
            json_target_prefix: service.id&.split('#')&.last,
            query_compatible: service.traits.key?('aws.protocols#awsQueryCompatible'),
            service_id: service.traits.dig('aws.api#service', 'sdkId')
          }.freeze
        end

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
