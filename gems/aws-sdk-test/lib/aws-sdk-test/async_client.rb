require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
#require 'aws-sdk-core/plugins/response_paging.rb'
#require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:test)

module Aws::Test
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::ClientStubs

    @identifier = :test

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    #add_plugin(Aws::Plugins::ResponsePaging)
    # TODO will add StubAsyncResponse
    #add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Plugins::EventStreamConfiguration)

    def get_blob_event_stream(params = {}, options = {})
      params = params.dup
      output_handler = params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler)
      output_es_handler = _event_stream_handler(output_handler, EventStreams::BlobEventStream)

      yield(output_es_handler) if block_given

      req = build_request(:get_blob_event_stream, params)

      req.context[:output_event_stream_handler] = output_es_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options)
    end

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config)
      context[:gem_name] = 'aws-sdk-test'
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    def _event_stream_handler(handler, eventstream)
      case handler
      when eventstream then handler
      when Proc then eventstream.new.tap(&handler)
      when nil then eventstream.new
      else
        msg = "expected :event_stream_handler to be a block or "\
          "instance of Aws::Test::EventStreams::BlobEventStream"\
          ", got `#{handler.inspect}` instead"
        raise ArgumentError, msg
      end
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
