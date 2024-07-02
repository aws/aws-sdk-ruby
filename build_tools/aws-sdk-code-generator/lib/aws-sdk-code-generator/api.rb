# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Api
    class << self

      # @param [Hash, String] shape_or_shape_ref
      # @param [Hash, String] api
      # @return [String, nil]
      def docstring(shape_or_shape_ref, api)
        ref, shape = resolve(shape_or_shape_ref, api)
        # APIG models, downcase shape name in origin or "__" prefix in origin
        # code-gen shape name might have been changed (upcased_first/lstrip_prefix/both),
        # when shape cannot be located with current shape name, try to resolve shape with
        # (downcase_fist/apig_prefix/both) original names
        if shape.nil?
          ref, shape = resolve(AwsSdkCodeGenerator::Helper.downcase_first(shape_or_shape_ref), api)
          if shape.nil?
            ref, shape = resolve(AwsSdkCodeGenerator::Helper.apig_prefix(shape_or_shape_ref), api)
            if shape.nil?
              ref, shape = resolve(AwsSdkCodeGenerator::Helper.apig_prefix(downcase_first(shape_or_shape_ref)), api)
            end
          end
        end
        ref['documentation'] || shape['documentation']
      end

      # @param [Hash, String] shape_or_shape_ref
      # @param [Hash, String] api
      # @return [Hash<ShapeRef>, Hash<Shape>]
      def resolve(shape_or_shape_ref, api)
        if String === shape_or_shape_ref
          [{}, api['shapes'][shape_or_shape_ref]]
        elsif shape_or_shape_ref['type']
          [{}, shape_or_shape_ref]
        else
          [shape_or_shape_ref, api['shapes'][shape_or_shape_ref['shape']]]
        end
      end

      # @param [String, Hash] shape_name_or_ref
      # @return [Hash]
      def shape(shape_name_or_ref, api)
        case shape_name_or_ref
        when Hash then api.fetch('shapes').fetch(shape_name_or_ref.fetch('shape'))
        when String then api.fetch('shapes').fetch(shape_name_or_ref)
        end
      end

      def ruby_input_type(shape_ref, api, operation = nil, options = {})
        nested = options.fetch(:nested, false)
        _, shape = resolve(shape_ref, api)
        case shape['type']
        when 'byte' then 'Integer<byte>'
        when 'blob'
          if streaming_input?(shape, operation)
            'String, IO'
          else
            'String, StringIO, File'
          end
        when 'boolean' then 'Boolean'
        when 'character' then 'String<character>'
        when 'double' then 'Float'
        when 'float' then 'Float'
        when 'integer' then 'Integer'
        when 'list'
          if nested
            "Array"
          else
            "Array<#{ruby_input_type(shape['member'], api, operation, nested: true)}>"
          end
        when 'long' then 'Integer'
        when 'map'
          if nested
            "Hash"
          else
            "Hash<String,#{ruby_input_type(shape['value'], api, operation, nested: true)}>"
          end
        when 'string' then 'String'
        when 'structure'
          if shape['document']
            'Hash,Array,String,Numeric,Boolean'
          else
            "Types::#{shape_ref['shape']}"
          end
        when 'timestamp' then 'Time,DateTime,Date,Integer,String'
        else
          raise "unhandled type #{shape.type}.inspect"
        end
      end

      def ruby_type(shape_ref, api)
        _, shape = resolve(shape_ref, api)
        case shape['type']
        when 'blob' then streaming?(shape_ref, api) ? 'IO' : 'String'
        when 'boolean' then 'Boolean'
        when 'byte' then 'Integer<byte>'
        when 'character' then 'String<character>'
        when 'double' then 'Float'
        when 'float' then 'Float'
        when 'integer' then 'Integer'
        when 'list' then "Array<#{ruby_type(shape['member'], api)}>"
        when 'long' then 'Integer'
        when 'map' then "Hash<String,#{ruby_type(shape['value'], api)}>"
        when 'string' then streaming?(shape_ref, api) ? 'IO' : 'String'
        when 'structure'
          if shape['document']
            'Hash,Array,String,Numeric,Boolean'
          else
            "Types::#{shape_ref['shape']}"
          end
        when 'timestamp' then 'Time'
        else
          raise "unhandled type #{shape['type'].inspect}"
        end
      end

      # @return [Boolean]
      def streaming?(shape_or_shape_ref, api)
        ref, shape = resolve(shape_or_shape_ref, api)
        ref['streaming'] || shape['streaming'] ||
          ref['eventstream'] || shape['eventstream']
      end

      # @return [Boolean]
      def eventstream?(shape_or_shape_ref, api)
        ref, shape = resolve(shape_or_shape_ref, api)
        ref['eventstream'] || shape['eventstream']
      end

      # @return [Boolean]
      def streaming_input?(shape, operation)
        shape['streaming'] && operation &&
          (operation['unsignedPayload'] ||
          operation['authtype'] == 'v4-unsigned-body')
      end

      def plural?(resource)
        plural = false
        (resource['identifiers'] || []).each do |i|
          if i['path'] && i['path'].include?('[]')
            plural = true
            break
          end
        end
        plural = true if resource['data'] && resource['data'].include?('[]')
        plural
      end
    end
  end
end
