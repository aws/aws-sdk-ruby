# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Reference
      def initialize(ref:)
        @ref = ref
      end

      attr_reader :ref

      def resolve(parameters, assigns)
        if parameters.class.singleton_class::PARAM_MAP.key?(@ref)
          member_name = parameters.class.singleton_class::PARAM_MAP[@ref]
          parameters[member_name]
        elsif assigns.key?(@ref)
          assigns[@ref]
        else
          raise ArgumentError,
                "Reference #{@ref} is not a param or an assigned value."
        end
      end
    end
  end
end
