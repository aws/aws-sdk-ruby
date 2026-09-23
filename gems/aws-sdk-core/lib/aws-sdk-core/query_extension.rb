# frozen_string_literal: true

module Aws
  module Core
    # Cached AWS Query and EC2 Query metadata.
    #
    # Raw Smithy traits remain available on shapes and members. Query-specific
    # names, indexes, errors, and service settings are cached under
    # +:aws_query+. Trait lookup remains string-keyed so generated and dynamic
    # clients use the same metadata path.
    # @api private
    module QueryExtension
      KEY = :aws_query
      EMPTY_HASH = {}.freeze

      class << self
        # Returns cached Query metadata for a shape, member, operation, or
        # service.
        #
        # Example:
        #   QueryExtension.fetch(shape)
        #   # => { query_name: 'Example', ec2_query_name: 'Example' }
        def fetch(shape)
          return shape[KEY] if shape.key?(KEY)

          shape[KEY] =
            case shape
            when Smithy::Schema::Shapes::OperationShape
              build_operation_metadata(shape)
            when Smithy::Schema::Shapes::ServiceShape
              build_service_metadata(shape)
            when Smithy::Schema::Shapes::MemberShape
              build_member_metadata(shape)
            else
              build_shape_metadata(shape)
            end
        end

        # Returns the AWS Query wire name.
        #
        # Example:
        #   QueryExtension.query_name(member)
        #   # => 'ExampleName'
        def query_name(shape)
          fetch(shape)[:query_name]
        end

        # Returns the EC2 Query wire name.
        #
        # Example:
        #   QueryExtension.ec2_query_name(member)
        #   # => 'ExampleName'
        def ec2_query_name(shape)
          fetch(shape)[:ec2_query_name]
        end

        # Returns whether a member is flattened in Query XML.
        #
        # Example:
        #   QueryExtension.flattened?(member)
        #   # => true
        def flattened?(shape)
          fetch(shape)[:flattened]
        end

        # Returns whether a collection may include nil values.
        #
        # Example:
        #   QueryExtension.sparse?(list)
        #   # => true
        def sparse?(shape)
          Smithy::Schema::Extension.sparse?(shape)
        end

        # Returns the resolved timestamp format.
        #
        # Example:
        #   QueryExtension.timestamp_format(member)
        #   # => 'epoch-seconds'
        def timestamp_format(shape)
          fetch(shape)[:timestamp_format]
        end

        # Returns Query members keyed by Ruby member name.
        #
        # Example:
        #   QueryExtension.query_index(structure)[:example]
        #   # => ['Example', member, target_shape]
        def query_index(shape)
          fetch(shape).fetch(:query_index, EMPTY_HASH)
        end

        # Returns EC2 Query members keyed by Ruby member name.
        #
        # Example:
        #   QueryExtension.ec2_query_index(structure)[:example]
        #   # => ['Example', member, target_shape]
        def ec2_query_index(shape)
          fetch(shape).fetch(:ec2_query_index, EMPTY_HASH)
        end

        # Returns Query error metadata keyed by modeled and wire error code.
        #
        # Example:
        #   QueryExtension.error_index(operation)['ExampleError']
        #   # => [modeled_name, wire_name, error_member]
        def error_index(operation)
          fetch(operation)[:error_index]
        end

        # Returns the synthetic AWS Query response wrapper shape.
        #
        # Example:
        #   QueryExtension.output_wrapper(operation)
        #   # => response_wrapper_shape
        def output_wrapper(operation)
          fetch(operation)[:output_wrapper]
        end

        # Returns the service XML namespace URI.
        #
        # Example:
        #   QueryExtension.xml_namespace(service)
        #   # => 'https://example.com/ns'
        def xml_namespace(service)
          fetch(service)[:xml_namespace]
        end

        private

        def build_service_metadata(service)
          { xml_namespace: service.traits.dig('smithy.api#xmlNamespace', 'uri') }.freeze
        end

        def build_operation_metadata(operation)
          {
            error_index: build_error_index(operation),
            output_wrapper: build_output_wrapper(operation)
          }.freeze
        end

        def build_shape_metadata(shape)
          metadata = base_metadata(shape)
          build_member_indexes(shape, metadata) if shape.respond_to?(:members)
          metadata.freeze
        end

        def build_member_metadata(member)
          base_metadata(member).freeze
        end

        def base_metadata(shape)
          {
            query_name: query_name_value(shape),
            ec2_query_name: ec2_query_name_value(shape),
            flattened: shape.traits.key?('smithy.api#xmlFlattened'),
            timestamp_format: Smithy::Schema::Extension.timestamp_format(shape)
          }.compact
        end

        def build_member_indexes(shape, metadata)
          query_index = {}
          ec2_query_index = {}

          Smithy::Schema::Extension.each_member(shape) do |ruby_name, member|
            add_member_indexes(query_index, ec2_query_index, ruby_name, member)
          end

          metadata[:query_index] = query_index.freeze unless query_index.empty?
          metadata[:ec2_query_index] = ec2_query_index.freeze unless ec2_query_index.empty?
        end

        def add_member_indexes(query_index, ec2_query_index, ruby_name, member)
          metadata = fetch(member)
          target_shape = Smithy::Schema::Extension.target_shape(member)
          add_member_index(query_index, ruby_name, metadata[:query_name], member, target_shape)
          add_member_index(ec2_query_index, ruby_name, metadata[:ec2_query_name], member, target_shape)
        end

        def add_member_index(index, ruby_name, wire_name, member, target_shape)
          index[ruby_name] = [wire_name, member, target_shape].freeze if wire_name
        end

        def query_name_value(shape)
          return shape[:query_name] if shape.key?(:query_name)

          if shape.is_a?(Smithy::Schema::Shapes::MemberShape)
            shape.traits['smithy.api#xmlName'] || shape.name
          else
            shape.traits['smithy.api#xmlName'] || shape.target.name
          end
        end

        def ec2_query_name_value(shape)
          shape[:ec2_query_name] ||
            shape.traits['aws.protocols#ec2QueryName'] ||
            capitalize(query_name_value(shape))
        end

        def build_error_index(operation)
          index = {}
          operation.errors.each do |error|
            target = error.target
            wire_name = target.traits.dig('aws.protocols#awsQueryError', 'code') || target.name
            value = [target.name, wire_name, error].freeze
            index[target.name] = value
            index[wire_name] = value
          end
          index.freeze
        end

        def build_output_wrapper(operation)
          response_metadata = build_response_metadata

          Smithy::Schema::Shapes::StructureShape.new.tap do |shape|
            shape.type = ::Struct.new(:result, :response_metadata)
            add_response_member(shape, :result, operation.output, "#{operation.name}Result")
            add_response_member(shape, :response_metadata, response_metadata, 'ResponseMetadata')
          end
        end

        def build_response_metadata
          Smithy::Schema::Shapes::StructureShape.new.tap do |shape|
            shape.type = ::Struct.new(:request_id)
            add_response_member(shape, :request_id, Smithy::Schema::Shapes::Prelude::String, 'RequestId')
          end
        end

        def add_response_member(shape, ruby_name, target, name)
          shape.add_member(
            ruby_name,
            Smithy::Schema::Shapes::MemberShape.new(target: target, name: name)
          )
        end

        def capitalize(str)
          return if str.nil?

          str[0].upcase + str[1..]
        end
      end
    end
  end
end
