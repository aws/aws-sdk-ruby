# frozen_string_literal: true

module Aws
  module Core
    module Query
      # Codec that builds and parses the query string format.
      # @api private
      class Codec
        # @param [Hash] options
        # @option options [Boolean] :ec2 whether to use EC2 specific query encoding
        def initialize(options = {})
          @builder = ParamBuilder.new(options)
        end

        # @param [Shape] shape
        # @param [Object] data
        # @return [String, nil]
        def build(shape, data, target = nil)
          @builder.build(shape, data, target)
        end

        def parse(*)
          raise NotImplementedError
        end
      end
    end
  end
end
