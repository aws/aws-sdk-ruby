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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics.rb'
require 'aws-sdk-core/plugins/client_metrics_sender.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:marketplacecatalog)

module Aws::MarketplaceCatalog
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :marketplacecatalog

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetrics)
    add_plugin(Aws::Plugins::ClientMetricsSender)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Used to cancel an open change request. Must be sent before the status
    # of the request changes to `APPLYING`, the final stage of completing
    # your change request. You can describe a change during the 60-day
    # request history retention period for API calls.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`.
    #
    # @option params [required, String] :change_set_id
    #   Required. The unique identifier of the `StartChangeSet` request that
    #   you want to cancel.
    #
    # @return [Types::CancelChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::CancelChangeSetResponse#change_set_arn #change_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_change_set({
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/CancelChangeSet AWS API Documentation
    #
    # @overload cancel_change_set(params = {})
    # @param [Hash] params ({})
    def cancel_change_set(params = {}, options = {})
      req = build_request(:cancel_change_set, params)
      req.send_request(options)
    end

    # Provides information about a given change set.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #
    # @option params [required, String] :change_set_id
    #   Required. The unique identifier for the `StartChangeSet` request that
    #   you want to describe the details for.
    #
    # @return [Types::DescribeChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::DescribeChangeSetResponse#change_set_arn #change_set_arn} => String
    #   * {Types::DescribeChangeSetResponse#change_set_name #change_set_name} => String
    #   * {Types::DescribeChangeSetResponse#start_time #start_time} => String
    #   * {Types::DescribeChangeSetResponse#end_time #end_time} => String
    #   * {Types::DescribeChangeSetResponse#status #status} => String
    #   * {Types::DescribeChangeSetResponse#failure_description #failure_description} => String
    #   * {Types::DescribeChangeSetResponse#change_set #change_set} => Array&lt;Types::ChangeSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set({
    #     catalog: "Catalog", # required
    #     change_set_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #   resp.change_set_name #=> String
    #   resp.start_time #=> String
    #   resp.end_time #=> String
    #   resp.status #=> String, one of "PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.failure_description #=> String
    #   resp.change_set #=> Array
    #   resp.change_set[0].change_type #=> String
    #   resp.change_set[0].entity.type #=> String
    #   resp.change_set[0].entity.identifier #=> String
    #   resp.change_set[0].error_detail_list #=> Array
    #   resp.change_set[0].error_detail_list[0].error_code #=> String
    #   resp.change_set[0].error_detail_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeChangeSet AWS API Documentation
    #
    # @overload describe_change_set(params = {})
    # @param [Hash] params ({})
    def describe_change_set(params = {}, options = {})
      req = build_request(:describe_change_set, params)
      req.send_request(options)
    end

    # Returns the metadata and content of the entity.
    #
    # @option params [required, String] :catalog
    #   Required. The catalog related to the request. Fixed value:
    #   `AWSMarketplace`
    #
    # @option params [required, String] :entity_id
    #   Required. The unique ID of the entity to describe.
    #
    # @return [Types::DescribeEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityResponse#entity_type #entity_type} => String
    #   * {Types::DescribeEntityResponse#entity_identifier #entity_identifier} => String
    #   * {Types::DescribeEntityResponse#entity_arn #entity_arn} => String
    #   * {Types::DescribeEntityResponse#last_modified_date #last_modified_date} => String
    #   * {Types::DescribeEntityResponse#details #details} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity({
    #     catalog: "Catalog", # required
    #     entity_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_type #=> String
    #   resp.entity_identifier #=> String
    #   resp.entity_arn #=> String
    #   resp.last_modified_date #=> String
    #   resp.details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/DescribeEntity AWS API Documentation
    #
    # @overload describe_entity(params = {})
    # @param [Hash] params ({})
    def describe_entity(params = {}, options = {})
      req = build_request(:describe_entity, params)
      req.send_request(options)
    end

    # Returns the list of change sets owned by the account being used to
    # make the call. You can filter this list by providing any combination
    # of `entityId`, `ChangeSetName`, and status. If you provide more than
    # one filter, the API operation applies a logical AND between the
    # filters.
    #
    # You can describe a change during the 60-day request history retention
    # period for API calls.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [Array<Types::Filter>] :filter_list
    #   An array of filter objects.
    #
    # @option params [Types::Sort] :sort
    #   An object that contains two attributes, `sortBy` and `sortOrder`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned by a single call. This value
    #   must be provided in the next call to retrieve the next set of results.
    #   By default, this value is 20.
    #
    # @option params [String] :next_token
    #   The token value retrieved from a previous call to access the next page
    #   of results.
    #
    # @return [Types::ListChangeSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChangeSetsResponse#change_set_summary_list #change_set_summary_list} => Array&lt;Types::ChangeSetSummaryListItem&gt;
    #   * {Types::ListChangeSetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets({
    #     catalog: "Catalog", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["StringValue"],
    #       },
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_summary_list #=> Array
    #   resp.change_set_summary_list[0].change_set_id #=> String
    #   resp.change_set_summary_list[0].change_set_arn #=> String
    #   resp.change_set_summary_list[0].change_set_name #=> String
    #   resp.change_set_summary_list[0].start_time #=> String
    #   resp.change_set_summary_list[0].end_time #=> String
    #   resp.change_set_summary_list[0].status #=> String, one of "PREPARING", "APPLYING", "SUCCEEDED", "CANCELLED", "FAILED"
    #   resp.change_set_summary_list[0].entity_id_list #=> Array
    #   resp.change_set_summary_list[0].entity_id_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListChangeSets AWS API Documentation
    #
    # @overload list_change_sets(params = {})
    # @param [Hash] params ({})
    def list_change_sets(params = {}, options = {})
      req = build_request(:list_change_sets, params)
      req.send_request(options)
    end

    # Provides the list of entities of a given type.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :entity_type
    #   The type of entities to retrieve.
    #
    # @option params [Array<Types::Filter>] :filter_list
    #   An array of filter objects. Each filter object contains two
    #   attributes, `filterName` and `filterValues`.
    #
    # @option params [Types::Sort] :sort
    #   An object that contains two attributes, `sortBy` and `sortOrder`.
    #
    # @option params [String] :next_token
    #   The value of the next token, if it exists. Null if there are no more
    #   results.
    #
    # @option params [Integer] :max_results
    #   Specifies the upper limit of the elements on a single page. If a value
    #   isn't provided, the default value is 20.
    #
    # @return [Types::ListEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesResponse#entity_summary_list #entity_summary_list} => Array&lt;Types::EntitySummary&gt;
    #   * {Types::ListEntitiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities({
    #     catalog: "Catalog", # required
    #     entity_type: "EntityType", # required
    #     filter_list: [
    #       {
    #         name: "FilterName",
    #         value_list: ["StringValue"],
    #       },
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_summary_list #=> Array
    #   resp.entity_summary_list[0].name #=> String
    #   resp.entity_summary_list[0].entity_type #=> String
    #   resp.entity_summary_list[0].entity_id #=> String
    #   resp.entity_summary_list[0].entity_arn #=> String
    #   resp.entity_summary_list[0].last_modified_date #=> String
    #   resp.entity_summary_list[0].visibility #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/ListEntities AWS API Documentation
    #
    # @overload list_entities(params = {})
    # @param [Hash] params ({})
    def list_entities(params = {}, options = {})
      req = build_request(:list_entities, params)
      req.send_request(options)
    end

    # This operation allows you to request changes in your entities.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, Array<Types::Change>] :change_set
    #   Array of `change` object.
    #
    # @option params [String] :change_set_name
    #   Optional case sensitive string of up to 100 ASCII characters. The
    #   change set name can be used to filter the list of change sets.
    #
    # @option params [String] :client_request_token
    #   A unique token to identify the request to ensure idempotency.
    #
    # @return [Types::StartChangeSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChangeSetResponse#change_set_id #change_set_id} => String
    #   * {Types::StartChangeSetResponse#change_set_arn #change_set_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_change_set({
    #     catalog: "Catalog", # required
    #     change_set: [ # required
    #       {
    #         change_type: "ChangeType", # required
    #         entity: { # required
    #           type: "EntityType", # required
    #           identifier: "Identifier",
    #         },
    #         details: "Json", # required
    #       },
    #     ],
    #     change_set_name: "ChangeSetName",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.change_set_id #=> String
    #   resp.change_set_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-catalog-2018-09-17/StartChangeSet AWS API Documentation
    #
    # @overload start_change_set(params = {})
    # @param [Hash] params ({})
    def start_change_set(params = {}, options = {})
      req = build_request(:start_change_set, params)
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
      context[:gem_name] = 'aws-sdk-marketplacecatalog'
      context[:gem_version] = '1.0.0'
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
