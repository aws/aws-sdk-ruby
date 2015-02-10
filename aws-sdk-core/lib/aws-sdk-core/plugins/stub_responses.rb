module Aws
  module Plugins

    # @seahorse.client.option [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    class StubResponses < Seahorse::Client::Plugin

      option(:stub_responses, false)

      option(:region) do |config|
        'stubbed-region' if config.stub_responses
      end

      option(:credentials) do |config|
        if config.stub_responses
          Credentials.new('stubbed-akid', 'stubbed-secret')
        end
      end

      def add_handlers(handlers, config)
        handlers.add(Handler, step: :send) if config.stub_responses
      end

      def after_initialize(client)
        # disable retries when stubbing responses
        if client.config.stub_responses
          client.handlers.remove(RetryErrors::Handler)
        end
      end

      class Handler < Seahorse::Client::Handler

        def call(context)
          response = Seahorse::Client::Response.new(context: context)
          apply_stub(response, context.client.next_stub(context.operation_name))
          response
        end

        private

        def apply_stub(resp, stub)
          if Exception === stub
            resp.error = stub
          elsif Class === stub && stub.ancestors.include?(Errors::ServiceError)
            resp.error = stub.new(resp.context, 'stubbed error')
          elsif Class === stub && stub.ancestors.include?(Exception)
            resp.error = stub.new
          else
            resp.data = stub
            stub_http_body(resp) if streaming?(resp)
          end
        end

        def streaming?(resp)
          if output = resp.context.operation.output
            payload = output.payload_member
            payload && payload.definition['streaming'] == true
          else
            false
          end
        end

        def stub_http_body(resp)
          payload = resp.context.operation.output.payload
          resp.context.http_response.signal_headers(200, {})
          resp.context.http_response.signal_data(resp.data[payload])
          resp.context.http_response.signal_done
          resp.data[payload] = resp.context.http_response.body
        end

      end
    end
  end
end
