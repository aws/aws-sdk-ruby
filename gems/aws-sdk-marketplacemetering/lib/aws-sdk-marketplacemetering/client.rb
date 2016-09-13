# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws
  module MarketplaceMetering
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :marketplacemetering

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      def initialize(**args)
        super
      end

      # @!group API Operations

      # API to emit metering records. For identical requests, the API is
      # idempotent. It simply returns the metering record ID.
      # @option params [required, String] :product_code
      #   Product code is used to uniquely identify a product in AWS
      #   Marketplace. The product code should be the same as the one used
      #   during the publishing of a new product.
      # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
      #   Timestamp of the hour, recorded in UTC. The seconds and milliseconds
      #   portions of the timestamp will be ignored.
      # @option params [required, String] :usage_dimension
      #   It will be one of the \'fcp dimension name\' provided during the
      #   publishing of the product.
      # @option params [required, Integer] :usage_quantity
      #   Consumption value for the hour.
      # @option params [required, Boolean] :dry_run
      #   Checks whether you have the permissions required for the action, but
      #   does not make the request. If you have the permissions, the request
      #   returns DryRunOperation; otherwise, it returns UnauthorizedException.
      # @return [Types::MeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::MeterUsageResult#metering_record_id #MeteringRecordId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.meter_usage({
      #     product_code: "ProductCode", # required
      #     timestamp: Time.now, # required
      #     usage_dimension: "UsageDimension", # required
      #     usage_quantity: 1, # required
      #     dry_run: false, # required
      #   })
      #
      # @example Response structure
      #   resp.metering_record_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def meter_usage(params = {}, options = {})
        req = build_request(:meter_usage, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
