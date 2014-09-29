module Seahorse
  module Client
    class ParamValidator

      # @param [Model::Shapes::Shape] shape
      # @param [Hash] params
      # @return [void]
      def self.validate!(shape, params)
        new(shape).validate!(params)
      end

      # @param [Model::Shapes::Shape] shape
      # @option options [Boolean] :validate_required (true)
      def initialize(shape, options = {})
        @shape = shape || Seahorse::Model::Shapes::Structure.new
        @validate_required = options[:validate_required] != false
      end

      # @param [Hash] params
      # @return [void]
      def validate!(params)
        errors = []
        shape(@shape, params, errors, context = 'params')
        raise ArgumentError, error_messages(errors) unless errors.empty?
      end

      private

      def structure(structure, values, errors, context)
        # ensure the value is hash like
        return unless hash?(values, errors, context)

        # ensure required members are present
        if @validate_required
          structure.required.each do |member_name|
            if values[member_name].nil?
              param = "#{context}[#{member_name.inspect}]"
              errors << "missing required parameter #{param}"
            end
          end
        end

        # validate non-nil members
        values.each do |name, value|
          unless value.nil?
            if structure.member?(name)
              member_shape = structure.member(name)
              shape(member_shape, value, errors, context + "[#{name.inspect}]")
            else
              errors << "unexpected value at #{context}[#{name.inspect}]"
            end
          end
        end
      end

      def list(list, values, errors, context)
        # ensure the value is an array
        unless values.is_a?(Array)
          errors << "expected #{context} to be an array"
          return
        end

        # validate members
        values.each.with_index do |value, index|
          shape(list.member, value, errors, context + "[#{index}]")
        end
      end

      def map(map, values, errors, context)
        return unless hash?(values, errors, context)
        values.each do |key, value|
          shape(map.key, key, errors, "#{context} #{key.inspect} key")
          shape(map.value, value, errors, context + "[#{key.inspect}]")
        end
      end

      def shape(shape, value, errors, context)
        case shape
        when Model::Shapes::Structure
          structure(shape, value, errors, context)
        when Model::Shapes::List
          list(shape, value, errors, context)
        when Model::Shapes::Map
          map(shape, value, errors, context)
        when Model::Shapes::String
          unless value.is_a?(String)
            errors << "expected #{context} to be a string"
          end
        when Model::Shapes::Integer
          unless value.is_a?(Integer)
            errors << "expected #{context} to be an integer"
          end
        when Model::Shapes::Float
          unless value.is_a?(Float)
            errors << "expected #{context} to be a float"
          end
        when Model::Shapes::Timestamp
          unless value.is_a?(Time)
            errors << "expected #{context} to be a Time object"
          end
        when Model::Shapes::Boolean
          unless [true, false].include?(value)
            errors << "expected #{context} to be true or false"
          end
        when Model::Shapes::Blob
          unless io_like?(value) or value.is_a?(String)
            errors << "expected #{context} to be a string or IO object"
          end
        end
      end

      def hash?(value, errors, context)
        if value.is_a?(Hash)
          true
        else
          errors << "expected #{context} to be a hash"
          false
        end
      end

      def io_like?(value)
        value.respond_to?(:read) &&
        value.respond_to?(:rewind) &&
        value.respond_to?(:size)
      end

      def error_messages(errors)
        if errors.size == 1
          errors.first
        else
          prefix = "\n  - "
          "parameter validator found #{errors.size} errors:" +
            prefix + errors.join(prefix)
        end
      end

    end
  end
end
