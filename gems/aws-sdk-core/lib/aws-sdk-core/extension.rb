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

        # Resolves and caches the AWS HTTP checksum trait for an operation.
        #
        # Modeled member names are converted to the Ruby names used in params.
        def http_checksum(operation)
          operation.fetch_metadata(:aws_http_checksum) do
            trait = operation.traits['aws.protocols#httpChecksum']
            next unless trait

            resolve_http_checksum(operation, trait)
          end
        end

        # Resolves and caches whether an operation can use a checksum trailer.
        def http_checksum_trailer_eligible?(operation)
          operation.fetch_metadata(:aws_http_checksum_trailer_eligible) do
            !SCHEMA_EXTENSION.streaming_member(operation.input).nil? &&
              operation.traits.key?('aws.auth#unsignedPayload')
          end
        end

        # Resolves and caches supported response algorithms in priority order.
        def http_checksum_validation_algorithms(operation, priorities)
          operation.fetch_metadata(:aws_http_checksum_response_algorithms) do
            (priorities & http_checksum(operation)[:response_algorithms]).freeze
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

        def resolve_http_checksum(operation, trait)
          algorithm_member, algorithm_shape =
            resolve_http_checksum_member(operation, trait['requestAlgorithmMember'])
          validation_member, =
            resolve_http_checksum_member(operation, trait['requestValidationModeMember'])

          {
            request_algorithm_member: algorithm_member,
            request_algorithm_header: http_header_name(algorithm_shape),
            request_checksum_required: !!trait['requestChecksumRequired'],
            request_validation_mode_member: validation_member,
            response_algorithms: Array(trait['responseAlgorithms']).freeze
          }.freeze
        end

        def resolve_http_checksum_member(operation, modeled_name)
          return [nil, nil] unless modeled_name

          ruby_name, member = SCHEMA_EXTENSION.wire_index(operation.input)[modeled_name]
          unless ruby_name
            raise ArgumentError,
                  "#{modeled_name} is not a member of #{operation.input.name}"
          end
          [ruby_name, member]
        end

        def http_header_name(member)
          member&.traits&.dig('smithy.api#httpHeader')
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
