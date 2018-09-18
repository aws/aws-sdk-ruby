# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacemetering)

module Aws::MarketplaceMetering
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :marketplacemetering

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # BatchMeterUsage is called from a SaaS application listed on the AWS
    # Marketplace to post metering records for a set of customers.
    #
    # For identical requests, the API is idempotent; requests can be retried
    # with the same records or a subset of the input records.
    #
    # Every request to BatchMeterUsage is for one product. If you need to
    # meter usage for multiple products, you must make multiple calls to
    # BatchMeterUsage.
    #
    # BatchMeterUsage can process up to 25 UsageRecords at a time.
    #
    # @option params [required, Array<Types::UsageRecord>] :usage_records
    #   The set of UsageRecords to submit. BatchMeterUsage accepts up to 25
    #   UsageRecords at a time.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #
    # @return [Types::BatchMeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchMeterUsageResult#results #results} => Array&lt;Types::UsageRecordResult&gt;
    #   * {Types::BatchMeterUsageResult#unprocessed_records #unprocessed_records} => Array&lt;Types::UsageRecord&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_meter_usage({
    #     usage_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         customer_identifier: "CustomerIdentifier", # required
    #         dimension: "UsageDimension", # required
    #         quantity: 1, # required
    #       },
    #     ],
    #     product_code: "ProductCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].usage_record.timestamp #=> Time
    #   resp.results[0].usage_record.customer_identifier #=> String
    #   resp.results[0].usage_record.dimension #=> String
    #   resp.results[0].usage_record.quantity #=> Integer
    #   resp.results[0].metering_record_id #=> String
    #   resp.results[0].status #=> String, one of "Success", "CustomerNotSubscribed", "DuplicateRecord"
    #   resp.unprocessed_records #=> Array
    #   resp.unprocessed_records[0].timestamp #=> Time
    #   resp.unprocessed_records[0].customer_identifier #=> String
    #   resp.unprocessed_records[0].dimension #=> String
    #   resp.unprocessed_records[0].quantity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/BatchMeterUsage AWS API Documentation
    #
    # @overload batch_meter_usage(params = {})
    # @param [Hash] params ({})
    def batch_meter_usage(params = {}, options = {})
      req = build_request(:batch_meter_usage, params)
      req.send_request(options)
    end

    # API to emit metering records. For identical requests, the API is
    # idempotent. It simply returns the metering record ID.
    #
    # MeterUsage is authenticated on the buyer's AWS account, generally
    # when running from an EC2 instance on the AWS Marketplace.
    #
    # @option params [required, String] :product_code
    #   Product code is used to uniquely identify a product in AWS
    #   Marketplace. The product code should be the same as the one used
    #   during the publishing of a new product.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :timestamp
    #   Timestamp of the hour, recorded in UTC. The seconds and milliseconds
    #   portions of the timestamp will be ignored.
    #
    # @option params [required, String] :usage_dimension
    #   It will be one of the fcp dimension name provided during the
    #   publishing of the product.
    #
    # @option params [required, Integer] :usage_quantity
    #   Consumption value for the hour.
    #
    # @option params [required, Boolean] :dry_run
    #   Checks whether you have the permissions required for the action, but
    #   does not make the request. If you have the permissions, the request
    #   returns DryRunOperation; otherwise, it returns UnauthorizedException.
    #
    # @return [Types::MeterUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MeterUsageResult#metering_record_id #metering_record_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.meter_usage({
    #     product_code: "ProductCode", # required
    #     timestamp: Time.now, # required
    #     usage_dimension: "UsageDimension", # required
    #     usage_quantity: 1, # required
    #     dry_run: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metering_record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/MeterUsage AWS API Documentation
    #
    # @overload meter_usage(params = {})
    # @param [Hash] params ({})
    def meter_usage(params = {}, options = {})
      req = build_request(:meter_usage, params)
      req.send_request(options)
    end

    # ResolveCustomer is called by a SaaS application during the
    # registration process. When a buyer visits your website during the
    # registration process, the buyer submits a registration token through
    # their browser. The registration token is resolved through this API to
    # obtain a CustomerIdentifier and product code.
    #
    # @option params [required, String] :registration_token
    #   When a buyer visits your website during the registration process, the
    #   buyer submits a registration token through the browser. The
    #   registration token is resolved to obtain a CustomerIdentifier and
    #   product code.
    #
    # @return [Types::ResolveCustomerResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveCustomerResult#customer_identifier #customer_identifier} => String
    #   * {Types::ResolveCustomerResult#product_code #product_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_customer({
    #     registration_token: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.customer_identifier #=> String
    #   resp.product_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/meteringmarketplace-2016-01-14/ResolveCustomer AWS API Documentation
    #
    # @overload resolve_customer(params = {})
    # @param [Hash] params ({})
    def resolve_customer(params = {}, options = {})
      req = build_request(:resolve_customer, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-marketplacemetering'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
