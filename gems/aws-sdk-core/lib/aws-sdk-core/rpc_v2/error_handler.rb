# frozen_string_literal: true

module Aws
  module RpcV2
    class ErrorHandler < Xml::ErrorHandler
      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        @handler.call(context).on(300..599) do |response|
          response.error = error(context)
          response.data = nil
        end
      end

      private

      def extract_error(body, context)
        # TODO
      end

      def error_code(body, context)
        # TODO
      end
    end
  end
end
