# frozen_string_literal: true

module Aws
  module MachineLearning
    module Plugins
      # @api private
      class PredictEndpoint < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            endpoint = context.params.delete(:predict_endpoint)
            context.http_request.endpoint = URI.parse(endpoint.to_s)
            @handler.call(context)
          end

        end

        handle(Handler, operations: [:predict])

      end
    end
  end
end
