# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Reference
      def initialize(ref:)
        @ref = ref
      end

      attr_reader :ref
    end
  end
end
