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

Aws::Plugins::GlobalConfiguration.add_identifier(:outposts)

module Aws::Outposts
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :outposts

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

    # Creates an Outpost.
    #
    # @option params [String] :name
    #   The name of the Outpost.
    #
    # @option params [String] :description
    #   The Outpost description.
    #
    # @option params [required, String] :site_id
    #   The ID of the site.
    #
    # @option params [String] :availability_zone
    #   The Availability Zone.
    #
    # @option params [String] :availability_zone_id
    #   The ID of the Availability Zone.
    #
    # @return [Types::CreateOutpostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOutpostOutput#outpost #outpost} => Types::Outpost
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_outpost({
    #     name: "OutpostName",
    #     description: "OutpostDescription",
    #     site_id: "SiteId", # required
    #     availability_zone: "AvailabilityZone",
    #     availability_zone_id: "AvailabilityZoneId",
    #   })
    #
    # @example Response structure
    #
    #   resp.outpost.outpost_id #=> String
    #   resp.outpost.owner_id #=> String
    #   resp.outpost.outpost_arn #=> String
    #   resp.outpost.site_id #=> String
    #   resp.outpost.name #=> String
    #   resp.outpost.description #=> String
    #   resp.outpost.life_cycle_status #=> String
    #   resp.outpost.availability_zone #=> String
    #   resp.outpost.availability_zone_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/CreateOutpost AWS API Documentation
    #
    # @overload create_outpost(params = {})
    # @param [Hash] params ({})
    def create_outpost(params = {}, options = {})
      req = build_request(:create_outpost, params)
      req.send_request(options)
    end

    # Deletes the Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Outpost.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outpost({
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteOutpost AWS API Documentation
    #
    # @overload delete_outpost(params = {})
    # @param [Hash] params ({})
    def delete_outpost(params = {}, options = {})
      req = build_request(:delete_outpost, params)
      req.send_request(options)
    end

    # Deletes the site.
    #
    # @option params [required, String] :site_id
    #   The ID of the site.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site({
    #     site_id: "SiteId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/DeleteSite AWS API Documentation
    #
    # @overload delete_site(params = {})
    # @param [Hash] params ({})
    def delete_site(params = {}, options = {})
      req = build_request(:delete_site, params)
      req.send_request(options)
    end

    # Gets information about the specified Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Outpost.
    #
    # @return [Types::GetOutpostOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutpostOutput#outpost #outpost} => Types::Outpost
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost({
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.outpost.outpost_id #=> String
    #   resp.outpost.owner_id #=> String
    #   resp.outpost.outpost_arn #=> String
    #   resp.outpost.site_id #=> String
    #   resp.outpost.name #=> String
    #   resp.outpost.description #=> String
    #   resp.outpost.life_cycle_status #=> String
    #   resp.outpost.availability_zone #=> String
    #   resp.outpost.availability_zone_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpost AWS API Documentation
    #
    # @overload get_outpost(params = {})
    # @param [Hash] params ({})
    def get_outpost(params = {}, options = {})
      req = build_request(:get_outpost, params)
      req.send_request(options)
    end

    # Lists the instance types for the specified Outpost.
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Outpost.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @return [Types::GetOutpostInstanceTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutpostInstanceTypesOutput#instance_types #instance_types} => Array&lt;Types::InstanceTypeItem&gt;
    #   * {Types::GetOutpostInstanceTypesOutput#next_token #next_token} => String
    #   * {Types::GetOutpostInstanceTypesOutput#outpost_id #outpost_id} => String
    #   * {Types::GetOutpostInstanceTypesOutput#outpost_arn #outpost_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outpost_instance_types({
    #     outpost_id: "OutpostId", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_types #=> Array
    #   resp.instance_types[0].instance_type #=> String
    #   resp.next_token #=> String
    #   resp.outpost_id #=> String
    #   resp.outpost_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/GetOutpostInstanceTypes AWS API Documentation
    #
    # @overload get_outpost_instance_types(params = {})
    # @param [Hash] params ({})
    def get_outpost_instance_types(params = {}, options = {})
      req = build_request(:get_outpost_instance_types, params)
      req.send_request(options)
    end

    # List the Outposts for your AWS account.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @return [Types::ListOutpostsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOutpostsOutput#outposts #outposts} => Array&lt;Types::Outpost&gt;
    #   * {Types::ListOutpostsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outposts({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.outposts #=> Array
    #   resp.outposts[0].outpost_id #=> String
    #   resp.outposts[0].owner_id #=> String
    #   resp.outposts[0].outpost_arn #=> String
    #   resp.outposts[0].site_id #=> String
    #   resp.outposts[0].name #=> String
    #   resp.outposts[0].description #=> String
    #   resp.outposts[0].life_cycle_status #=> String
    #   resp.outposts[0].availability_zone #=> String
    #   resp.outposts[0].availability_zone_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListOutposts AWS API Documentation
    #
    # @overload list_outposts(params = {})
    # @param [Hash] params ({})
    def list_outposts(params = {}, options = {})
      req = build_request(:list_outposts, params)
      req.send_request(options)
    end

    # Lists the sites for the specified AWS account.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum page size.
    #
    # @return [Types::ListSitesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSitesOutput#sites #sites} => Array&lt;Types::Site&gt;
    #   * {Types::ListSitesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sites({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sites #=> Array
    #   resp.sites[0].site_id #=> String
    #   resp.sites[0].account_id #=> String
    #   resp.sites[0].name #=> String
    #   resp.sites[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03/ListSites AWS API Documentation
    #
    # @overload list_sites(params = {})
    # @param [Hash] params ({})
    def list_sites(params = {}, options = {})
      req = build_request(:list_sites, params)
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
      context[:gem_name] = 'aws-sdk-outposts'
      context[:gem_version] = '1.1.0'
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
