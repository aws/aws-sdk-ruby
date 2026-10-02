# frozen_string_literal: true

module Aws
  module Core
    # Cached AWS Query and EC2 Query metadata.
    #
    # Raw Smithy traits remain available on shapes and members. Query-specific
    # names, indexes, errors, and service settings are cached as flat,
    # Query-prefixed keys. Trait lookup remains string-keyed so generated and
    # dynamic clients use the same metadata path.
    # @api private
    module QueryExtension
      class << self
        # Resolves and caches the AWS Query wire name.
        #
        # Example:
        #   QueryExtension.query_name(member)
        #   # => 'ExampleName'
        def query_name(shape)
          shape.fetch_metadata(:aws_query_name) do
            resolve_names(shape, :aws_query_name)
          end
        end

        # Resolves and caches the EC2 Query wire name.
        #
        # Example:
        #   QueryExtension.ec2_query_name(member)
        #   # => 'ExampleName'
        def ec2_query_name(shape)
          shape.fetch_metadata(:aws_query_ec2_name) do
            resolve_names(shape, :aws_query_ec2_name)
          end
        end

        # Resolves and caches whether a member is flattened in Query XML.
        #
        # Example:
        #   QueryExtension.flattened?(member)
        #   # => true
        def flattened?(shape)
          shape.fetch_metadata(:aws_query_flattened) do
            shape.traits.key?('smithy.api#xmlFlattened')
          end
        end

        # Resolves and caches the serialization plan for a Query map.
        #
        # Example:
        #   QueryExtension.map_plan(member)
        #   # => [key_member, value_member, 'key', 'value', false]
        def map_plan(shape)
          shape.fetch_metadata(:aws_query_map_plan) do
            build_map_plan(shape)
          end
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
          Smithy::Schema::Extension.timestamp_format(shape)
        end

        # Resolves and caches Query members keyed by Ruby member name.
        #
        # Example:
        #   QueryExtension.query_index(structure)[:example]
        #   # => ['Example', member]
        def query_index(shape)
          shape[:aws_query_index] || resolve_indexes(shape, :aws_query_index)
        end

        # Resolves and caches EC2 Query members keyed by Ruby member name.
        #
        # Example:
        #   QueryExtension.ec2_query_index(structure)[:example]
        #   # => ['Example', member]
        def ec2_query_index(shape)
          shape[:aws_query_ec2_index] || resolve_indexes(shape, :aws_query_ec2_index)
        end

        # Resolves and caches Query errors keyed by modeled and wire error code.
        #
        # Example:
        #   QueryExtension.error_index(operation)['ExampleError']
        #   # => [modeled_name, wire_name, error_member]
        def error_index(operation)
          operation[:aws_query_error_index] ||= build_error_index(operation)
        end

        # Builds and caches the synthetic AWS Query response wrapper shape.
        #
        # Example:
        #   QueryExtension.output_wrapper(operation)
        #   # => response_wrapper_shape
        def output_wrapper(operation)
          operation[:aws_query_output_wrapper] ||= build_output_wrapper(operation)
        end

        # Resolves and caches the service XML namespace URI.
        #
        # Example:
        #   QueryExtension.xml_namespace(service)
        #   # => 'https://example.com/ns'
        def xml_namespace(service)
          service.fetch_metadata(:aws_query_xml_namespace) do
            service.traits.dig('smithy.api#xmlNamespace', 'uri')
          end
        end

        private

        def resolve_names(shape, result)
          query_name = query_name_value(shape)
          shape[:aws_query_name] = query_name
          shape[:aws_query_ec2_name] = ec2_query_name_value(shape, query_name)
          shape[result]
        end

        def build_map_plan(shape)
          target = shape.target
          return unless target.is_a?(Smithy::Schema::Shapes::MapShape)

          key_member = target.key
          value_member = target.value
          [
            key_member,
            value_member,
            query_name_value(key_member),
            query_name_value(value_member),
            flattened?(shape)
          ].freeze
        end

        def resolve_indexes(shape, result)
          query_index = {}
          ec2_query_index = {}

          shape.members.each do |ruby_name, member|
            add_member_indexes(query_index, ec2_query_index, ruby_name, member)
          end

          query_index.freeze
          ec2_query_index.freeze
          shape[:aws_query_index] = query_index
          shape[:aws_query_ec2_index] = ec2_query_index
          shape[result]
        end

        def add_member_indexes(query_index, ec2_query_index, ruby_name, member)
          add_member_index(query_index, ruby_name, query_name(member), member)
          add_member_index(ec2_query_index, ruby_name, ec2_query_name(member), member)
        end

        def add_member_index(index, ruby_name, wire_name, member)
          index[ruby_name] = [wire_name, member].freeze if wire_name
        end

        def query_name_value(shape)
          return shape[:query_name] if shape.key?(:query_name)

          if shape.is_a?(Smithy::Schema::Shapes::MemberShape)
            shape.traits['smithy.api#xmlName'] || shape.name
          else
            shape.traits['smithy.api#xmlName'] || shape.target.name
          end
        end

        def ec2_query_name_value(shape, query_name = query_name_value(shape))
          shape[:ec2_query_name] ||
            shape.traits['aws.protocols#ec2QueryName'] ||
            capitalize(query_name)
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
