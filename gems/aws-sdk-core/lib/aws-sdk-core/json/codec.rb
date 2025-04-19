# frozen_string_literal: true

require_relative 'deserializer'
require_relative 'serializer'

module Aws
  module Core
    module JSON
      # @api private
      class Codec
        # @param [Hash] options
        def initialize(options = {})
          @options = options
        end

        # @param [Shape] shape
        # @param [Object] data
        # @return [String, nil]
        def serialize(shape, data)
          Serializer.new(@options).serialize(shape, data)
        end

        # @param [Shape] shape
        # @param [String] bytes
        # @param [Struct] target
        # @return [Object]
        def deserialize(shape, bytes, target = nil)
          Deserializer.new(@options).deserialize(shape, bytes, target)
        end
      end
    end
  end
end
