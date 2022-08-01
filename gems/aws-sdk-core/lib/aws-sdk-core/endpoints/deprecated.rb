# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Deprecated
      def initialize(message: nil, since: nil)
        @message = message
        @since = since
      end

      attr_reader :message
      attr_reader :since
    end
  end
end
