# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class Parameter
      def initialize(type:, built_in: nil, default: nil, required: false,
                     documentation:, deprecated: nil)
        @type = type
        @built_in = built_in
        @default = default
        @required = required
        @documentation = documentation
        @deprecated = build_deprecated(deprecated)
      end

      attr_reader :type
      attr_reader :built_in
      attr_reader :default
      attr_reader :required
      attr_reader :documentation
      attr_reader :deprecated

      private

      def build_deprecated(deprecated_json)
        return unless dprecated_json

        Deprecated.new(
          message: deprecated_json['message'],
          since: deprecated_json['since']
        )
      end
    end
  end
end
