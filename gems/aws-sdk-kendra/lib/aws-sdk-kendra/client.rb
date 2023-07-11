# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kendra)

module Aws::Kendra
  # An API client for Kendra.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Kendra::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kendra

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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Kendra::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
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
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
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
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::Kendra::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Kendra::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
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

    # Grants users or groups in your IAM Identity Center identity source
    # access to your Amazon Kendra experience. You can create an Amazon
    # Kendra experience such as a search application. For more information
    # on creating a search application experience, see [Building a search
    # experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [required, Array<Types::EntityConfiguration>] :entity_list
    #   Lists users or groups in your IAM Identity Center identity source.
    #
    # @return [Types::AssociateEntitiesToExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateEntitiesToExperienceResponse#failed_entity_list #failed_entity_list} => Array&lt;Types::FailedEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_entities_to_experience({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_list: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         entity_type: "USER", # required, accepts USER, GROUP
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entity_list #=> Array
    #   resp.failed_entity_list[0].entity_id #=> String
    #   resp.failed_entity_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociateEntitiesToExperience AWS API Documentation
    #
    # @overload associate_entities_to_experience(params = {})
    # @param [Hash] params ({})
    def associate_entities_to_experience(params = {}, options = {})
      req = build_request(:associate_entities_to_experience, params)
      req.send_request(options)
    end

    # Defines the specific permissions of users or groups in your IAM
    # Identity Center identity source with access to your Amazon Kendra
    # experience. You can create an Amazon Kendra experience such as a
    # search application. For more information on creating a search
    # application experience, see [Building a search experience with no
    # code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [required, Array<Types::EntityPersonaConfiguration>] :personas
    #   The personas that define the specific permissions of users or groups
    #   in your IAM Identity Center identity source. The available personas or
    #   access roles are `Owner` and `Viewer`. For more information on these
    #   personas, see [Providing access to your search page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience
    #
    # @return [Types::AssociatePersonasToEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePersonasToEntitiesResponse#failed_entity_list #failed_entity_list} => Array&lt;Types::FailedEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_personas_to_entities({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     personas: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         persona: "OWNER", # required, accepts OWNER, VIEWER
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entity_list #=> Array
    #   resp.failed_entity_list[0].entity_id #=> String
    #   resp.failed_entity_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/AssociatePersonasToEntities AWS API Documentation
    #
    # @overload associate_personas_to_entities(params = {})
    # @param [Hash] params ({})
    def associate_personas_to_entities(params = {}, options = {})
      req = build_request(:associate_personas_to_entities, params)
      req.send_request(options)
    end

    # Removes one or more documents from an index. The documents must have
    # been added with the `BatchPutDocument` API.
    #
    # The documents are deleted asynchronously. You can see the progress of
    # the deletion by using Amazon Web Services CloudWatch. Any error
    # messages related to the processing of the batch are sent to you
    # CloudWatch log.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that contains the documents to delete.
    #
    # @option params [required, Array<String>] :document_id_list
    #   One or more identifiers for documents to delete from the index.
    #
    # @option params [Types::DataSourceSyncJobMetricTarget] :data_source_sync_job_metric_target
    #   Maps a particular data source sync job to a particular data source.
    #
    # @return [Types::BatchDeleteDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::BatchDeleteDocumentResponseFailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_document({
    #     index_id: "IndexId", # required
    #     document_id_list: ["DocumentId"], # required
    #     data_source_sync_job_metric_target: {
    #       data_source_id: "DataSourceId", # required
    #       data_source_sync_job_id: "DataSourceSyncJobId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.failed_documents[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteDocument AWS API Documentation
    #
    # @overload batch_delete_document(params = {})
    # @param [Hash] params ({})
    def batch_delete_document(params = {}, options = {})
      req = build_request(:batch_delete_document, params)
      req.send_request(options)
    end

    # Removes one or more sets of featured results. Features results are
    # placed above all other results for certain queries. If there's an
    # exact match of a query, then one or more specific documents are
    # featured in the search results.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used for featuring results.
    #
    # @option params [required, Array<String>] :featured_results_set_ids
    #   The identifiers of the featured results sets that you want to delete.
    #
    # @return [Types::BatchDeleteFeaturedResultsSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteFeaturedResultsSetResponse#errors #errors} => Array&lt;Types::BatchDeleteFeaturedResultsSetError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_featured_results_set({
    #     index_id: "IndexId", # required
    #     featured_results_set_ids: ["FeaturedResultsSetId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchDeleteFeaturedResultsSet AWS API Documentation
    #
    # @overload batch_delete_featured_results_set(params = {})
    # @param [Hash] params ({})
    def batch_delete_featured_results_set(params = {}, options = {})
      req = build_request(:batch_delete_featured_results_set, params)
      req.send_request(options)
    end

    # Returns the indexing status for one or more documents submitted with
    # the [ BatchPutDocument][1] API.
    #
    # When you use the `BatchPutDocument` API, documents are indexed
    # asynchronously. You can use the `BatchGetDocumentStatus` API to get
    # the current status of a list of documents so that you can determine if
    # they have been successfully indexed.
    #
    # You can also use the `BatchGetDocumentStatus` API to check the status
    # of the [ BatchDeleteDocument][2] API. When a document is deleted from
    # the index, Amazon Kendra returns `NOT_FOUND` as the status.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to add documents to. The index ID is
    #   returned by the [CreateIndex ][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html
    #
    # @option params [required, Array<Types::DocumentInfo>] :document_info_list
    #   A list of `DocumentInfo` objects that identify the documents for which
    #   to get the status. You identify the documents by their document ID and
    #   optional attributes.
    #
    # @return [Types::BatchGetDocumentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetDocumentStatusResponse#errors #errors} => Array&lt;Types::BatchGetDocumentStatusResponseError&gt;
    #   * {Types::BatchGetDocumentStatusResponse#document_status_list #document_status_list} => Array&lt;Types::Status&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_document_status({
    #     index_id: "IndexId", # required
    #     document_info_list: [ # required
    #       {
    #         document_id: "DocumentId", # required
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].document_id #=> String
    #   resp.errors[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.errors[0].error_message #=> String
    #   resp.document_status_list #=> Array
    #   resp.document_status_list[0].document_id #=> String
    #   resp.document_status_list[0].document_status #=> String, one of "NOT_FOUND", "PROCESSING", "INDEXED", "UPDATED", "FAILED", "UPDATE_FAILED"
    #   resp.document_status_list[0].failure_code #=> String
    #   resp.document_status_list[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchGetDocumentStatus AWS API Documentation
    #
    # @overload batch_get_document_status(params = {})
    # @param [Hash] params ({})
    def batch_get_document_status(params = {}, options = {})
      req = build_request(:batch_get_document_status, params)
      req.send_request(options)
    end

    # Adds one or more documents to an index.
    #
    # The `BatchPutDocument` API enables you to ingest inline documents or a
    # set of documents stored in an Amazon S3 bucket. Use this API to ingest
    # your text and unstructured text into an index, add custom attributes
    # to the documents, and to attach an access control list to the
    # documents added to the index.
    #
    # The documents are indexed asynchronously. You can see the progress of
    # the batch using Amazon Web Services CloudWatch. Any error messages
    # related to processing the batch are sent to your Amazon Web Services
    # CloudWatch log.
    #
    # For an example of ingesting inline documents using Python and Java
    # SDKs, see [Adding files directly to an index][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to add the documents to. You need to
    #   create the index first using the `CreateIndex` API.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket. For more information, see [IAM access roles for
    #   Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [required, Array<Types::Document>] :documents
    #   One or more documents to add to the index.
    #
    #   Documents have the following file size limits.
    #
    #   * 50 MB total size for any file
    #
    #   * 5 MB extracted text for any file
    #
    #   For more information, see [Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   Configuration information for altering your document metadata and
    #   content during the document ingestion process when you use the
    #   `BatchPutDocument` API.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest documents
    #   into Amazon Kendra, see [Customizing document metadata during the
    #   ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @return [Types::BatchPutDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutDocumentResponse#failed_documents #failed_documents} => Array&lt;Types::BatchPutDocumentResponseFailedDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_document({
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     documents: [ # required
    #       {
    #         id: "DocumentId", # required
    #         title: "Title",
    #         blob: "data",
    #         s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         attributes: [
    #           {
    #             key: "DocumentAttributeKey", # required
    #             value: { # required
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #         ],
    #         access_control_list: [
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #         hierarchical_access_control_list: [
    #           {
    #             principal_list: [ # required
    #               {
    #                 name: "PrincipalName", # required
    #                 type: "USER", # required, accepts USER, GROUP
    #                 access: "ALLOW", # required, accepts ALLOW, DENY
    #                 data_source_id: "DataSourceId",
    #               },
    #             ],
    #           },
    #         ],
    #         content_type: "PDF", # accepts PDF, HTML, MS_WORD, PLAIN_TEXT, PPT, RTF, XML, XSLT, MS_EXCEL, CSV, JSON, MD
    #         access_control_configuration_id: "AccessControlConfigurationId",
    #       },
    #     ],
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           document_content_deletion: false,
    #         },
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_documents #=> Array
    #   resp.failed_documents[0].id #=> String
    #   resp.failed_documents[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.failed_documents[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/BatchPutDocument AWS API Documentation
    #
    # @overload batch_put_document(params = {})
    # @param [Hash] params ({})
    def batch_put_document(params = {}, options = {})
      req = build_request(:batch_put_document, params)
      req.send_request(options)
    end

    # Clears existing query suggestions from an index.
    #
    # This deletes existing suggestions only, not the queries in the query
    # log. After you clear suggestions, Amazon Kendra learns new suggestions
    # based on new queries added to the query log from the time you cleared
    # suggestions. If you do not see any new suggestions, then please allow
    # Amazon Kendra to collect enough queries to learn new suggestions.
    #
    # `ClearQuerySuggestions` is currently not supported in the Amazon Web
    # Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to clear query suggestions from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.clear_query_suggestions({
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ClearQuerySuggestions AWS API Documentation
    #
    # @overload clear_query_suggestions(params = {})
    # @param [Hash] params ({})
    def clear_query_suggestions(params = {}, options = {})
      req = build_request(:clear_query_suggestions, params)
      req.send_request(options)
    end

    # Creates an access configuration for your documents. This includes user
    # and group access information for your documents. This is useful for
    # user context filtering, where search results are filtered based on the
    # user or their group access to documents.
    #
    # You can use this to re-configure your existing document level access
    # control without indexing all of your documents again. For example,
    # your index contains top-secret company documents that only certain
    # employees or users should access. One of these users leaves the
    # company or switches to a team that should be blocked from accessing
    # top-secret documents. The user still has access to top-secret
    # documents because the user had access when your documents were
    # previously indexed. You can create a specific access control
    # configuration for the user with deny access. You can later update the
    # access control configuration to allow access if the user returns to
    # the company and re-joins the 'top-secret' team. You can re-configure
    # access control for your documents as circumstances change.
    #
    # To apply your access control configuration to certain documents, you
    # call the [BatchPutDocument][1] API with the
    # `AccessControlConfigurationId` included in the [Document][2] object.
    # If you use an S3 bucket as a data source, you update the
    # `.metadata.json` with the `AccessControlConfigurationId` and
    # synchronize your data source. Amazon Kendra currently only supports
    # access control configuration for S3 data sources and documents indexed
    # using the `BatchPutDocument` API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to create an access control configuration
    #   for your documents.
    #
    # @option params [required, String] :name
    #   A name for the access control configuration.
    #
    # @option params [String] :description
    #   A description for the access control configuration.
    #
    # @option params [Array<Types::Principal>] :access_control_list
    #   Information on principals (users and/or groups) and which documents
    #   they should have access to. This is useful for user context filtering,
    #   where search results are filtered based on the user or their group
    #   access to documents.
    #
    # @option params [Array<Types::HierarchicalPrincipal>] :hierarchical_access_control_list
    #   The list of [principal][1] lists that define the hierarchy for which
    #   documents users should have access to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create an access
    #   control configuration. Multiple calls to the
    #   `CreateAccessControlConfiguration` API with the same client token will
    #   create only one access control configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAccessControlConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessControlConfigurationResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_control_configuration({
    #     index_id: "IndexId", # required
    #     name: "AccessControlConfigurationName", # required
    #     description: "Description",
    #     access_control_list: [
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER", # required, accepts USER, GROUP
    #         access: "ALLOW", # required, accepts ALLOW, DENY
    #         data_source_id: "DataSourceId",
    #       },
    #     ],
    #     hierarchical_access_control_list: [
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "ClientTokenName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateAccessControlConfiguration AWS API Documentation
    #
    # @overload create_access_control_configuration(params = {})
    # @param [Hash] params ({})
    def create_access_control_configuration(params = {}, options = {})
      req = build_request(:create_access_control_configuration, params)
      req.send_request(options)
    end

    # Creates a data source connector that you want to use with an Amazon
    # Kendra index.
    #
    # You specify a name, data source connector type and description for
    # your data source. You also specify configuration information for the
    # data source connector.
    #
    # `CreateDataSource` is a synchronous operation. The operation returns
    # 200 if the data source was successfully created. Otherwise, an
    # exception is raised.
    #
    # For an example of creating an index and data source using the Python
    # SDK, see [Getting started with Python SDK][1]. For an example of
    # creating an index and data source using the Java SDK, see [Getting
    # started with Java SDK][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html
    #
    # @option params [required, String] :name
    #   A name for the data source connector.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to use with the data source
    #   connector.
    #
    # @option params [required, String] :type
    #   The type of data source repository. For example, `SHAREPOINT`.
    #
    # @option params [Types::DataSourceConfiguration] :configuration
    #   Configuration information to connect to your data source repository.
    #
    #   You can't specify the `Configuration` parameter when the `Type`
    #   parameter is set to `CUSTOM`. If you do, you receive a
    #   `ValidationException` exception.
    #
    #   The `Configuration` parameter is required for all other data sources.
    #
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   Configuration information for an Amazon Virtual Private Cloud to
    #   connect to your data source. For more information, see [Configuring a
    #   VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html
    #
    # @option params [String] :description
    #   A description for the data source connector.
    #
    # @option params [String] :schedule
    #   Sets the frequency for Amazon Kendra to check the documents in your
    #   data source repository and update the index. If you don't set a
    #   schedule Amazon Kendra will not periodically update the index. You can
    #   call the `StartDataSourceSyncJob` API to update the index.
    #
    #   Specify a `cron-` format schedule string or an empty string to
    #   indicate that the index is updated on demand.
    #
    #   You can't specify the `Schedule` parameter when the `Type` parameter
    #   is set to `CUSTOM`. If you do, you receive a `ValidationException`
    #   exception.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources. For more information,
    #   see [IAM access roles for Amazon Kendra.][1].
    #
    #   You can't specify the `RoleArn` parameter when the `Type` parameter
    #   is set to `CUSTOM`. If you do, you receive a `ValidationException`
    #   exception.
    #
    #   The `RoleArn` parameter is required for all other data sources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the data source
    #   connector. You can also use tags to help control access to the data
    #   source connector. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = + -
    #   @.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a data
    #   source connector. Multiple calls to the `CreateDataSource` API with
    #   the same client token will create only one data source connector.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :language_code
    #   The code for a language. This allows you to support a language for all
    #   documents when creating the data source connector. English is
    #   supported by default. For more information on supported languages,
    #   including their codes, see [Adding documents in languages other than
    #   English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   Configuration information for altering document metadata and content
    #   during the document ingestion process.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest documents
    #   into Amazon Kendra, see [Customizing document metadata during the
    #   ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     name: "DataSourceName", # required
    #     index_id: "IndexId", # required
    #     type: "S3", # required, accepts S3, SHAREPOINT, DATABASE, SALESFORCE, ONEDRIVE, SERVICENOW, CUSTOM, CONFLUENCE, GOOGLEDRIVE, WEBCRAWLER, WORKDOCS, FSX, SLACK, BOX, QUIP, JIRA, GITHUB, ALFRESCO, TEMPLATE
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey",
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey",
    #         },
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE, SHAREPOINT_2019
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #         },
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         disable_local_groups: false,
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery",
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #       },
    #       confluence_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD", # required, accepts CLOUD, SERVER
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, PAT
    #       },
    #       google_drive_configuration: {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"],
    #       },
    #       web_crawler_configuration: {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           },
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             },
    #           ],
    #         },
    #       },
    #       work_docs_configuration: {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       fsx_configuration: {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS", # required, accepts WINDOWS
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       slack_configuration: {
    #         team_id: "TeamId", # required
    #         secret_arn: "SecretArn", # required
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         slack_entity_list: ["PUBLIC_CHANNEL"], # required, accepts PUBLIC_CHANNEL, PRIVATE_CHANNEL, GROUP_MESSAGE, DIRECT_MESSAGE
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: "SinceCrawlDate", # required
    #         look_back_period: 1,
    #         private_channel_filter: ["String"],
    #         public_channel_filter: ["String"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       box_configuration: {
    #         enterprise_id: "EnterpriseId", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #         file_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         task_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         web_link_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       quip_configuration: {
    #         domain: "Domain", # required
    #         secret_arn: "SecretArn", # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: ["FolderId"],
    #         thread_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         message_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       jira_configuration: {
    #         jira_account_url: "JiraAccountUrl", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         project: ["String"],
    #         issue_type: ["String"],
    #         status: ["String"],
    #         issue_sub_entity_filter: ["COMMENTS"], # accepts COMMENTS, ATTACHMENTS, WORKLOGS
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         issue_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         project_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         work_log_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: "OrganizationName", # required
    #           host_url: "Url", # required
    #         },
    #         on_premise_configuration: {
    #           host_url: "Url", # required
    #           organization_name: "OrganizationName", # required
    #           ssl_certificate_s3_path: { # required
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         type: "SAAS", # accepts SAAS, ON_PREMISE
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false,
    #         },
    #         repository_filter: ["RepositoryName"],
    #         inclusion_folder_name_patterns: ["String"],
    #         inclusion_file_type_patterns: ["String"],
    #         inclusion_file_name_patterns: ["String"],
    #         exclusion_folder_name_patterns: ["String"],
    #         exclusion_file_type_patterns: ["String"],
    #         exclusion_file_name_patterns: ["String"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         git_hub_repository_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_commit_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_document_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       alfresco_configuration: {
    #         site_url: "SiteUrl", # required
    #         site_id: "SiteId", # required
    #         secret_arn: "SecretArn", # required
    #         ssl_certificate_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         crawl_system_folders: false,
    #         crawl_comments: false,
    #         entity_filter: ["wiki"], # accepts wiki, blog, documentLibrary
    #         document_library_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         wiki_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       template_configuration: {
    #         template: {
    #         },
    #       },
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["VpcSecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientTokenName",
    #     language_code: "LanguageCode",
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           document_content_deletion: false,
    #         },
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon Kendra experience such as a search application. For
    # more information on creating a search application experience,
    # including using the Python and Java SDKs, see [Building a search
    # experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :name
    #   A name for your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access `Query` API, `GetQuerySuggestions` API, and other required
    #   APIs. The role also must include permission to access IAM Identity
    #   Center (successor to Single Sign-On) that stores your user and group
    #   information. For more information, see [IAM access roles for Amazon
    #   Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Types::ExperienceConfiguration] :configuration
    #   Configuration information for your Amazon Kendra experience. This
    #   includes `ContentSourceConfiguration`, which specifies the data source
    #   IDs and/or FAQ IDs, and `UserIdentityConfiguration`, which specifies
    #   the user or group information to grant access to your Amazon Kendra
    #   experience.
    #
    # @option params [String] :description
    #   A description for your Amazon Kendra experience.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create your Amazon
    #   Kendra experience. Multiple calls to the `CreateExperience` API with
    #   the same client token creates only one Amazon Kendra experience.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExperienceResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experience({
    #     name: "ExperienceName", # required
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false,
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: "IdentityAttributeName",
    #       },
    #     },
    #     description: "Description",
    #     client_token: "ClientTokenName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateExperience AWS API Documentation
    #
    # @overload create_experience(params = {})
    # @param [Hash] params ({})
    def create_experience(params = {}, options = {})
      req = build_request(:create_experience, params)
      req.send_request(options)
    end

    # Creates a set of frequently ask questions (FAQs) using a specified FAQ
    # file stored in an Amazon S3 bucket.
    #
    # Adding FAQs to an index is an asynchronous operation.
    #
    # For an example of adding an FAQ to an index using Python and Java
    # SDKs, see [Using your FAQ file][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the FAQ.
    #
    # @option params [required, String] :name
    #   A name for the FAQ.
    #
    # @option params [String] :description
    #   A description for the FAQ.
    #
    # @option params [required, Types::S3Path] :s3_path
    #   The path to the FAQ file in S3.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the S3 bucket that contains the FAQs. For more information, see
    #   [IAM access roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify the FAQ. You can use the tags
    #   to identify and organize your resources and to control access to
    #   resources.
    #
    # @option params [String] :file_format
    #   The format of the FAQ input file. You can choose between a basic CSV
    #   format, a CSV format that includes customs attributes in a header, and
    #   a JSON format that includes custom attributes.
    #
    #   The default format is CSV.
    #
    #   The format must match the format of the file stored in the S3 bucket
    #   identified in the `S3Path` parameter.
    #
    #   For more information, see [Adding questions and answers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a FAQ.
    #   Multiple calls to the `CreateFaqRequest` API with the same client
    #   token will create only one FAQ.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :language_code
    #   The code for a language. This allows you to support a language for the
    #   FAQ document. English is supported by default. For more information on
    #   supported languages, including their codes, see [Adding documents in
    #   languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #
    # @return [Types::CreateFaqResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFaqResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_faq({
    #     index_id: "IndexId", # required
    #     name: "FaqName", # required
    #     description: "Description",
    #     s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_format: "CSV", # accepts CSV, CSV_WITH_HEADER, JSON
    #     client_token: "ClientTokenName",
    #     language_code: "LanguageCode",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateFaq AWS API Documentation
    #
    # @overload create_faq(params = {})
    # @param [Hash] params ({})
    def create_faq(params = {}, options = {})
      req = build_request(:create_faq, params)
      req.send_request(options)
    end

    # Creates a set of featured results to display at the top of the search
    # results page. Featured results are placed above all other results for
    # certain queries. You map specific queries to specific documents for
    # featuring in the results. If a query contains an exact match, then one
    # or more specific documents are featured in the search results.
    #
    # You can create up to 50 sets of featured results per index. You can
    # request to increase this limit by contacting [Support][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that you want to use for featuring
    #   results.
    #
    # @option params [required, String] :featured_results_set_name
    #   A name for the set of featured results.
    #
    # @option params [String] :description
    #   A description for the set of featured results.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a set of
    #   featured results. Multiple calls to the `CreateFeaturedResultsSet` API
    #   with the same client token will create only one featured results set.
    #
    # @option params [String] :status
    #   The current status of the set of featured results. When the value is
    #   `ACTIVE`, featured results are ready for use. You can still configure
    #   your settings before setting the status to `ACTIVE`. You can set the
    #   status to `ACTIVE` or `INACTIVE` using the
    #   [UpdateFeaturedResultsSet][1] API. The queries you specify for
    #   featured results must be unique per featured results set for each
    #   index, whether the status is `ACTIVE` or `INACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateFeaturedResultsSet.html
    #
    # @option params [Array<String>] :query_texts
    #   A list of queries for featuring results. For more information on the
    #   list of queries, see [FeaturedResultsSet][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html
    #
    # @option params [Array<Types::FeaturedDocument>] :featured_documents
    #   A list of document IDs for the documents you want to feature at the
    #   top of the search results page. For more information on the list of
    #   documents, see [FeaturedResultsSet][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the featured
    #   results set. You can also use tags to help control access to the
    #   featured results set. Tag keys and values can consist of Unicode
    #   letters, digits, white space, and any of the following symbols:\_ . :
    #   / = + - @.
    #
    # @return [Types::CreateFeaturedResultsSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFeaturedResultsSetResponse#featured_results_set #featured_results_set} => Types::FeaturedResultsSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_featured_results_set({
    #     index_id: "IndexId", # required
    #     featured_results_set_name: "FeaturedResultsSetName", # required
    #     description: "FeaturedResultsSetDescription",
    #     client_token: "ClientTokenName",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     query_texts: ["QueryText"],
    #     featured_documents: [
    #       {
    #         id: "DocumentId",
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.featured_results_set.featured_results_set_id #=> String
    #   resp.featured_results_set.featured_results_set_name #=> String
    #   resp.featured_results_set.description #=> String
    #   resp.featured_results_set.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.featured_results_set.query_texts #=> Array
    #   resp.featured_results_set.query_texts[0] #=> String
    #   resp.featured_results_set.featured_documents #=> Array
    #   resp.featured_results_set.featured_documents[0].id #=> String
    #   resp.featured_results_set.last_updated_timestamp #=> Integer
    #   resp.featured_results_set.creation_timestamp #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateFeaturedResultsSet AWS API Documentation
    #
    # @overload create_featured_results_set(params = {})
    # @param [Hash] params ({})
    def create_featured_results_set(params = {}, options = {})
      req = build_request(:create_featured_results_set, params)
      req.send_request(options)
    end

    # Creates an Amazon Kendra index. Index creation is an asynchronous API.
    # To determine if index creation has completed, check the `Status` field
    # returned from a call to `DescribeIndex`. The `Status` field is set to
    # `ACTIVE` when the index is ready to use.
    #
    # Once the index is active you can index your documents using the
    # `BatchPutDocument` API or using one of the supported data sources.
    #
    # For an example of creating an index and data source using the Python
    # SDK, see [Getting started with Python SDK][1]. For an example of
    # creating an index and data source using the Java SDK, see [Getting
    # started with Java SDK][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html
    #
    # @option params [required, String] :name
    #   A name for the index.
    #
    # @option params [String] :edition
    #   The Amazon Kendra edition to use for the index. Choose
    #   `DEVELOPER_EDITION` for indexes intended for development, testing, or
    #   proof of concept. Use `ENTERPRISE_EDITION` for production. Once you
    #   set the edition for an index, it can't be changed.
    #
    #   The `Edition` parameter is optional. If you don't supply a value, the
    #   default is `ENTERPRISE_EDITION`.
    #
    #   For more information on quota limits for Enterprise and Developer
    #   editions, see [Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your Amazon CloudWatch logs and metrics. For more information,
    #   see [IAM access roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The identifier of the KMS customer managed key (CMK) that's used to
    #   encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
    #   asymmetric CMKs.
    #
    # @option params [String] :description
    #   A description for the index.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create an index.
    #   Multiple calls to the `CreateIndex` API with the same client token
    #   will create only one index.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the index. You
    #   can also use tags to help control access to the index. Tag keys and
    #   values can consist of Unicode letters, digits, white space, and any of
    #   the following symbols: \_ . : / = + - @.
    #
    # @option params [Array<Types::UserTokenConfiguration>] :user_token_configurations
    #   The user token configuration.
    #
    # @option params [String] :user_context_policy
    #   The user context policy.
    #
    #   ATTRIBUTE\_FILTER
    #
    #   : All indexed content is searchable and displayable for all users. If
    #     you want to filter search results on user context, you can use the
    #     attribute filters of `_user_id` and `_group_ids` or you can provide
    #     user and group information in `UserContext`.
    #
    #   USER\_TOKEN
    #
    #   : Enables token-based user access control to filter search results on
    #     user context. All documents with no access control and all documents
    #     accessible to the user will be searchable and displayable.
    #
    # @option params [Types::UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   Gets users and groups from IAM Identity Center (successor to Single
    #   Sign-On) identity source. To configure this, see
    #   [UserGroupResolutionConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html
    #
    # @return [Types::CreateIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     name: "IndexName", # required
    #     edition: "DEVELOPER_EDITION", # accepts DEVELOPER_EDITION, ENTERPRISE_EDITION
    #     role_arn: "RoleArn", # required
    #     server_side_encryption_configuration: {
    #       kms_key_id: "KmsKeyId",
    #     },
    #     description: "Description",
    #     client_token: "ClientTokenName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex",
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         },
    #       },
    #     ],
    #     user_context_policy: "ATTRIBUTE_FILTER", # accepts ATTRIBUTE_FILTER, USER_TOKEN
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: "AWS_SSO", # required, accepts AWS_SSO, NONE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Creates a block list to exlcude certain queries from suggestions.
    #
    # Any query that contains words or phrases specified in the block list
    # is blocked or filtered out from being shown as a suggestion.
    #
    # You need to provide the file location of your block list text file in
    # your S3 bucket. In your text file, enter each block word or phrase on
    # a separate line.
    #
    # For information on the current quota limits for block lists, see
    # [Quotas for Amazon Kendra][1].
    #
    # `CreateQuerySuggestionsBlockList` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # For an example of creating a block list for query suggestions using
    # the Python SDK, see [Query suggestions block list][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to create a query suggestions
    #   block list for.
    #
    # @option params [required, String] :name
    #   A name for the block list.
    #
    #   For example, the name 'offensive-words', which includes all
    #   offensive words that could appear in user queries and need to be
    #   blocked from suggestions.
    #
    # @option params [String] :description
    #   A description for the block list.
    #
    #   For example, the description "List of all offensive words that can
    #   appear in user queries and need to be blocked from suggestions."
    #
    # @option params [required, Types::S3Path] :source_s3_path
    #   The S3 path to your block list text file in your S3 bucket.
    #
    #   Each block word or phrase should be on a separate line in a text file.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a query
    #   suggestions block list.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket that contains the block list text file. For more
    #   information, see [IAM access roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the block list.
    #   Tag keys and values can consist of Unicode letters, digits, white
    #   space, and any of the following symbols: \_ . : / = + - @.
    #
    # @return [Types::CreateQuerySuggestionsBlockListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuerySuggestionsBlockListResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_query_suggestions_block_list({
    #     index_id: "IndexId", # required
    #     name: "QuerySuggestionsBlockListName", # required
    #     description: "Description",
    #     source_s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     client_token: "ClientTokenName",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateQuerySuggestionsBlockList AWS API Documentation
    #
    # @overload create_query_suggestions_block_list(params = {})
    # @param [Hash] params ({})
    def create_query_suggestions_block_list(params = {}, options = {})
      req = build_request(:create_query_suggestions_block_list, params)
      req.send_request(options)
    end

    # Creates a thesaurus for an index. The thesaurus contains a list of
    # synonyms in Solr format.
    #
    # For an example of adding a thesaurus file to an index, see [Adding
    # custom synonyms to an index][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the thesaurus.
    #
    # @option params [required, String] :name
    #   A name for the thesaurus.
    #
    # @option params [String] :description
    #   A description for the thesaurus.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket that contains the thesaurus file. For more
    #   information, see [IAM access roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of key-value pairs that identify or categorize the thesaurus.
    #   You can also use tags to help control access to the thesaurus. Tag
    #   keys and values can consist of Unicode letters, digits, white space,
    #   and any of the following symbols: \_ . : / = + - @.
    #
    # @option params [required, Types::S3Path] :source_s3_path
    #   The path to the thesaurus file in S3.
    #
    # @option params [String] :client_token
    #   A token that you provide to identify the request to create a
    #   thesaurus. Multiple calls to the `CreateThesaurus` API with the same
    #   client token will create only one thesaurus.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateThesaurusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThesaurusResponse#id #id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thesaurus({
    #     index_id: "IndexId", # required
    #     name: "ThesaurusName", # required
    #     description: "Description",
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     source_s3_path: { # required
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     client_token: "ClientTokenName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/CreateThesaurus AWS API Documentation
    #
    # @overload create_thesaurus(params = {})
    # @param [Hash] params ({})
    def create_thesaurus(params = {}, options = {})
      req = build_request(:create_thesaurus, params)
      req.send_request(options)
    end

    # Deletes an access control configuration that you created for your
    # documents in an index. This includes user and group access information
    # for your documents. This is useful for user context filtering, where
    # search results are filtered based on the user or their group access to
    # documents.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for an access control configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the access control configuration you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_control_configuration({
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteAccessControlConfiguration AWS API Documentation
    #
    # @overload delete_access_control_configuration(params = {})
    # @param [Hash] params ({})
    def delete_access_control_configuration(params = {}, options = {})
      req = build_request(:delete_access_control_configuration, params)
      req.send_request(options)
    end

    # Deletes an Amazon Kendra data source connector. An exception is not
    # thrown if the data source is already being deleted. While the data
    # source is being deleted, the `Status` field returned by a call to the
    # `DescribeDataSource` API is set to `DELETING`. For more information,
    # see [Deleting Data Sources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector you want to delete.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes your Amazon Kendra experience such as a search application.
    # For more information on creating a search application experience, see
    # [Building a search experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience you want to delete.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experience({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteExperience AWS API Documentation
    #
    # @overload delete_experience(params = {})
    # @param [Hash] params ({})
    def delete_experience(params = {}, options = {})
      req = build_request(:delete_experience, params)
      req.send_request(options)
    end

    # Removes an FAQ from an index.
    #
    # @option params [required, String] :id
    #   The identifier of the FAQ you want to remove.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the FAQ.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_faq({
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteFaq AWS API Documentation
    #
    # @overload delete_faq(params = {})
    # @param [Hash] params ({})
    def delete_faq(params = {}, options = {})
      req = build_request(:delete_faq, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Kendra index. An exception is not thrown if
    # the index is already being deleted. While the index is being deleted,
    # the `Status` field returned by a call to the `DescribeIndex` API is
    # set to `DELETING`.
    #
    # @option params [required, String] :id
    #   The identifier of the index you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # Deletes a group so that all users and sub groups that belong to the
    # group can no longer access documents only available to that group.
    #
    # For example, after deleting the group "Summer Interns", all interns
    # who belonged to that group no longer see intern-only documents in
    # their search results.
    #
    # If you want to delete or replace users or sub groups of a group, you
    # need to use the `PutPrincipalMapping` operation. For example, if a
    # user in the group "Engineering" leaves the engineering team and
    # another user takes their place, you provide an updated list of users
    # or sub groups that belong to the "Engineering" group when calling
    # `PutPrincipalMapping`. You can update your internal list of users or
    # sub groups and input this list when calling `PutPrincipalMapping`.
    #
    # `DeletePrincipalMapping` is currently not supported in the Amazon Web
    # Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to delete a group from.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source you want to delete a group from.
    #
    #   A group can be tied to multiple data sources. You can delete a group
    #   from accessing documents in a certain data source. For example, the
    #   groups "Research", "Engineering", and "Sales and Marketing" are
    #   all tied to the company's documents stored in the data sources
    #   Confluence and Salesforce. You want to delete "Research" and
    #   "Engineering" groups from Salesforce, so that these groups cannot
    #   access customer-related documents stored in Salesforce. Only "Sales
    #   and Marketing" should access documents in the Salesforce data source.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group you want to delete.
    #
    # @option params [Integer] :ordering_id
    #   The timestamp identifier you specify to ensure Amazon Kendra does not
    #   override the latest `DELETE` action with previous actions. The highest
    #   number ID, which is the ordering ID, is the latest action you want to
    #   process and apply on top of other actions with lower number IDs. This
    #   prevents previous actions with lower number IDs from possibly
    #   overriding the latest action.
    #
    #   The ordering ID can be the Unix time of the last update you made to a
    #   group members list. You would then provide this list when calling
    #   `PutPrincipalMapping`. This ensures your `DELETE` action for that
    #   updated group with the latest members list doesn't get overwritten by
    #   earlier `DELETE` actions for the same group which are yet to be
    #   processed.
    #
    #   The default ordering ID is the current Unix time in milliseconds that
    #   the action was received by Amazon Kendra.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_principal_mapping({
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #     ordering_id: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeletePrincipalMapping AWS API Documentation
    #
    # @overload delete_principal_mapping(params = {})
    # @param [Hash] params ({})
    def delete_principal_mapping(params = {}, options = {})
      req = build_request(:delete_principal_mapping, params)
      req.send_request(options)
    end

    # Deletes a block list used for query suggestions for an index.
    #
    # A deleted block list might not take effect right away. Amazon Kendra
    # needs to refresh the entire suggestions list to add back the queries
    # that were previously blocked.
    #
    # `DeleteQuerySuggestionsBlockList` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the block list.
    #
    # @option params [required, String] :id
    #   The identifier of the block list you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_query_suggestions_block_list({
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteQuerySuggestionsBlockList AWS API Documentation
    #
    # @overload delete_query_suggestions_block_list(params = {})
    # @param [Hash] params ({})
    def delete_query_suggestions_block_list(params = {}, options = {})
      req = build_request(:delete_query_suggestions_block_list, params)
      req.send_request(options)
    end

    # Deletes an existing Amazon Kendra thesaurus.
    #
    # @option params [required, String] :id
    #   The identifier of the thesaurus you want to delete.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the thesaurus.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thesaurus({
    #     id: "ThesaurusId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DeleteThesaurus AWS API Documentation
    #
    # @overload delete_thesaurus(params = {})
    # @param [Hash] params ({})
    def delete_thesaurus(params = {}, options = {})
      req = build_request(:delete_thesaurus, params)
      req.send_request(options)
    end

    # Gets information about an access control configuration that you
    # created for your documents in an index. This includes user and group
    # access information for your documents. This is useful for user context
    # filtering, where search results are filtered based on the user or
    # their group access to documents.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for an access control configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the access control configuration you want to get
    #   information on.
    #
    # @return [Types::DescribeAccessControlConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessControlConfigurationResponse#name #name} => String
    #   * {Types::DescribeAccessControlConfigurationResponse#description #description} => String
    #   * {Types::DescribeAccessControlConfigurationResponse#error_message #error_message} => String
    #   * {Types::DescribeAccessControlConfigurationResponse#access_control_list #access_control_list} => Array&lt;Types::Principal&gt;
    #   * {Types::DescribeAccessControlConfigurationResponse#hierarchical_access_control_list #hierarchical_access_control_list} => Array&lt;Types::HierarchicalPrincipal&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_control_configuration({
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.error_message #=> String
    #   resp.access_control_list #=> Array
    #   resp.access_control_list[0].name #=> String
    #   resp.access_control_list[0].type #=> String, one of "USER", "GROUP"
    #   resp.access_control_list[0].access #=> String, one of "ALLOW", "DENY"
    #   resp.access_control_list[0].data_source_id #=> String
    #   resp.hierarchical_access_control_list #=> Array
    #   resp.hierarchical_access_control_list[0].principal_list #=> Array
    #   resp.hierarchical_access_control_list[0].principal_list[0].name #=> String
    #   resp.hierarchical_access_control_list[0].principal_list[0].type #=> String, one of "USER", "GROUP"
    #   resp.hierarchical_access_control_list[0].principal_list[0].access #=> String, one of "ALLOW", "DENY"
    #   resp.hierarchical_access_control_list[0].principal_list[0].data_source_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeAccessControlConfiguration AWS API Documentation
    #
    # @overload describe_access_control_configuration(params = {})
    # @param [Hash] params ({})
    def describe_access_control_configuration(params = {}, options = {})
      req = build_request(:describe_access_control_configuration, params)
      req.send_request(options)
    end

    # Gets information about an Amazon Kendra data source connector.
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @return [Types::DescribeDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDataSourceResponse#id #id} => String
    #   * {Types::DescribeDataSourceResponse#index_id #index_id} => String
    #   * {Types::DescribeDataSourceResponse#name #name} => String
    #   * {Types::DescribeDataSourceResponse#type #type} => String
    #   * {Types::DescribeDataSourceResponse#configuration #configuration} => Types::DataSourceConfiguration
    #   * {Types::DescribeDataSourceResponse#vpc_configuration #vpc_configuration} => Types::DataSourceVpcConfiguration
    #   * {Types::DescribeDataSourceResponse#created_at #created_at} => Time
    #   * {Types::DescribeDataSourceResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeDataSourceResponse#description #description} => String
    #   * {Types::DescribeDataSourceResponse#status #status} => String
    #   * {Types::DescribeDataSourceResponse#schedule #schedule} => String
    #   * {Types::DescribeDataSourceResponse#role_arn #role_arn} => String
    #   * {Types::DescribeDataSourceResponse#error_message #error_message} => String
    #   * {Types::DescribeDataSourceResponse#language_code #language_code} => String
    #   * {Types::DescribeDataSourceResponse#custom_document_enrichment_configuration #custom_document_enrichment_configuration} => Types::CustomDocumentEnrichmentConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_source({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB", "ALFRESCO", "TEMPLATE"
    #   resp.configuration.s3_configuration.bucket_name #=> String
    #   resp.configuration.s3_configuration.inclusion_prefixes #=> Array
    #   resp.configuration.s3_configuration.inclusion_prefixes[0] #=> String
    #   resp.configuration.s3_configuration.inclusion_patterns #=> Array
    #   resp.configuration.s3_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.s3_configuration.exclusion_patterns #=> Array
    #   resp.configuration.s3_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.s3_configuration.documents_metadata_configuration.s3_prefix #=> String
    #   resp.configuration.s3_configuration.access_control_list_configuration.key_path #=> String
    #   resp.configuration.share_point_configuration.share_point_version #=> String, one of "SHAREPOINT_2013", "SHAREPOINT_2016", "SHAREPOINT_ONLINE", "SHAREPOINT_2019"
    #   resp.configuration.share_point_configuration.urls #=> Array
    #   resp.configuration.share_point_configuration.urls[0] #=> String
    #   resp.configuration.share_point_configuration.secret_arn #=> String
    #   resp.configuration.share_point_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.share_point_configuration.use_change_log #=> Boolean
    #   resp.configuration.share_point_configuration.inclusion_patterns #=> Array
    #   resp.configuration.share_point_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.share_point_configuration.exclusion_patterns #=> Array
    #   resp.configuration.share_point_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.share_point_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.share_point_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.share_point_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.share_point_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.share_point_configuration.field_mappings #=> Array
    #   resp.configuration.share_point_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.share_point_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.share_point_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.share_point_configuration.document_title_field_name #=> String
    #   resp.configuration.share_point_configuration.disable_local_groups #=> Boolean
    #   resp.configuration.share_point_configuration.ssl_certificate_s3_path.bucket #=> String
    #   resp.configuration.share_point_configuration.ssl_certificate_s3_path.key #=> String
    #   resp.configuration.share_point_configuration.authentication_type #=> String, one of "HTTP_BASIC", "OAUTH2"
    #   resp.configuration.share_point_configuration.proxy_configuration.host #=> String
    #   resp.configuration.share_point_configuration.proxy_configuration.port #=> Integer
    #   resp.configuration.share_point_configuration.proxy_configuration.credentials #=> String
    #   resp.configuration.database_configuration.database_engine_type #=> String, one of "RDS_AURORA_MYSQL", "RDS_AURORA_POSTGRESQL", "RDS_MYSQL", "RDS_POSTGRESQL"
    #   resp.configuration.database_configuration.connection_configuration.database_host #=> String
    #   resp.configuration.database_configuration.connection_configuration.database_port #=> Integer
    #   resp.configuration.database_configuration.connection_configuration.database_name #=> String
    #   resp.configuration.database_configuration.connection_configuration.table_name #=> String
    #   resp.configuration.database_configuration.connection_configuration.secret_arn #=> String
    #   resp.configuration.database_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.database_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.database_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.database_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.database_configuration.column_configuration.document_id_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.document_data_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.document_title_column_name #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings #=> Array
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.database_configuration.column_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.database_configuration.column_configuration.change_detecting_columns #=> Array
    #   resp.configuration.database_configuration.column_configuration.change_detecting_columns[0] #=> String
    #   resp.configuration.database_configuration.acl_configuration.allowed_groups_column_name #=> String
    #   resp.configuration.database_configuration.sql_configuration.query_identifiers_enclosing_option #=> String, one of "DOUBLE_QUOTES", "NONE"
    #   resp.configuration.salesforce_configuration.server_url #=> String
    #   resp.configuration.salesforce_configuration.secret_arn #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].name #=> String, one of "ACCOUNT", "CAMPAIGN", "CASE", "CONTACT", "CONTRACT", "DOCUMENT", "GROUP", "IDEA", "LEAD", "OPPORTUNITY", "PARTNER", "PRICEBOOK", "PRODUCT", "PROFILE", "SOLUTION", "TASK", "USER"
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.standard_object_configurations[0].field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.included_states #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.included_states[0] #=> String, one of "DRAFT", "PUBLISHED", "ARCHIVED"
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.standard_knowledge_article_type_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.knowledge_article_configuration.custom_knowledge_article_type_configurations[0].field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.document_data_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types #=> Array
    #   resp.configuration.salesforce_configuration.chatter_feed_configuration.include_filter_types[0] #=> String, one of "ACTIVE_USER", "STANDARD_USER"
    #   resp.configuration.salesforce_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.document_title_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings #=> Array
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.salesforce_configuration.standard_object_attachment_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.salesforce_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.salesforce_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.salesforce_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.salesforce_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.tenant_domain #=> String
    #   resp.configuration.one_drive_configuration.secret_arn #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_list #=> Array
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_list[0] #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_s3_path.bucket #=> String
    #   resp.configuration.one_drive_configuration.one_drive_users.one_drive_user_s3_path.key #=> String
    #   resp.configuration.one_drive_configuration.inclusion_patterns #=> Array
    #   resp.configuration.one_drive_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.exclusion_patterns #=> Array
    #   resp.configuration.one_drive_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.one_drive_configuration.field_mappings #=> Array
    #   resp.configuration.one_drive_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.one_drive_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.one_drive_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.one_drive_configuration.disable_local_groups #=> Boolean
    #   resp.configuration.service_now_configuration.host_url #=> String
    #   resp.configuration.service_now_configuration.secret_arn #=> String
    #   resp.configuration.service_now_configuration.service_now_build_version #=> String, one of "LONDON", "OTHERS"
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.document_data_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.document_title_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings #=> Array
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.service_now_configuration.knowledge_article_configuration.filter_query #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.service_now_configuration.service_catalog_configuration.include_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.include_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.exclude_attachment_file_patterns #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.exclude_attachment_file_patterns[0] #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.document_data_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.document_title_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings #=> Array
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.service_now_configuration.service_catalog_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.service_now_configuration.authentication_type #=> String, one of "HTTP_BASIC", "OAUTH2"
    #   resp.configuration.confluence_configuration.server_url #=> String
    #   resp.configuration.confluence_configuration.secret_arn #=> String
    #   resp.configuration.confluence_configuration.version #=> String, one of "CLOUD", "SERVER"
    #   resp.configuration.confluence_configuration.space_configuration.crawl_personal_spaces #=> Boolean
    #   resp.configuration.confluence_configuration.space_configuration.crawl_archived_spaces #=> Boolean
    #   resp.configuration.confluence_configuration.space_configuration.include_spaces #=> Array
    #   resp.configuration.confluence_configuration.space_configuration.include_spaces[0] #=> String
    #   resp.configuration.confluence_configuration.space_configuration.exclude_spaces #=> Array
    #   resp.configuration.confluence_configuration.space_configuration.exclude_spaces[0] #=> String
    #   resp.configuration.confluence_configuration.space_configuration.space_field_mappings #=> Array
    #   resp.configuration.confluence_configuration.space_configuration.space_field_mappings[0].data_source_field_name #=> String, one of "DISPLAY_URL", "ITEM_TYPE", "SPACE_KEY", "URL"
    #   resp.configuration.confluence_configuration.space_configuration.space_field_mappings[0].date_field_format #=> String
    #   resp.configuration.confluence_configuration.space_configuration.space_field_mappings[0].index_field_name #=> String
    #   resp.configuration.confluence_configuration.page_configuration.page_field_mappings #=> Array
    #   resp.configuration.confluence_configuration.page_configuration.page_field_mappings[0].data_source_field_name #=> String, one of "AUTHOR", "CONTENT_STATUS", "CREATED_DATE", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "MODIFIED_DATE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"
    #   resp.configuration.confluence_configuration.page_configuration.page_field_mappings[0].date_field_format #=> String
    #   resp.configuration.confluence_configuration.page_configuration.page_field_mappings[0].index_field_name #=> String
    #   resp.configuration.confluence_configuration.blog_configuration.blog_field_mappings #=> Array
    #   resp.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].data_source_field_name #=> String, one of "AUTHOR", "DISPLAY_URL", "ITEM_TYPE", "LABELS", "PUBLISH_DATE", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"
    #   resp.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].date_field_format #=> String
    #   resp.configuration.confluence_configuration.blog_configuration.blog_field_mappings[0].index_field_name #=> String
    #   resp.configuration.confluence_configuration.attachment_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings #=> Array
    #   resp.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].data_source_field_name #=> String, one of "AUTHOR", "CONTENT_TYPE", "CREATED_DATE", "DISPLAY_URL", "FILE_SIZE", "ITEM_TYPE", "PARENT_ID", "SPACE_KEY", "SPACE_NAME", "URL", "VERSION"
    #   resp.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].date_field_format #=> String
    #   resp.configuration.confluence_configuration.attachment_configuration.attachment_field_mappings[0].index_field_name #=> String
    #   resp.configuration.confluence_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.confluence_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.confluence_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.confluence_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.confluence_configuration.inclusion_patterns #=> Array
    #   resp.configuration.confluence_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.confluence_configuration.exclusion_patterns #=> Array
    #   resp.configuration.confluence_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.confluence_configuration.proxy_configuration.host #=> String
    #   resp.configuration.confluence_configuration.proxy_configuration.port #=> Integer
    #   resp.configuration.confluence_configuration.proxy_configuration.credentials #=> String
    #   resp.configuration.confluence_configuration.authentication_type #=> String, one of "HTTP_BASIC", "PAT"
    #   resp.configuration.google_drive_configuration.secret_arn #=> String
    #   resp.configuration.google_drive_configuration.inclusion_patterns #=> Array
    #   resp.configuration.google_drive_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.google_drive_configuration.exclusion_patterns #=> Array
    #   resp.configuration.google_drive_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.google_drive_configuration.field_mappings #=> Array
    #   resp.configuration.google_drive_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.google_drive_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.google_drive_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.google_drive_configuration.exclude_mime_types #=> Array
    #   resp.configuration.google_drive_configuration.exclude_mime_types[0] #=> String
    #   resp.configuration.google_drive_configuration.exclude_user_accounts #=> Array
    #   resp.configuration.google_drive_configuration.exclude_user_accounts[0] #=> String
    #   resp.configuration.google_drive_configuration.exclude_shared_drives #=> Array
    #   resp.configuration.google_drive_configuration.exclude_shared_drives[0] #=> String
    #   resp.configuration.web_crawler_configuration.urls.seed_url_configuration.seed_urls #=> Array
    #   resp.configuration.web_crawler_configuration.urls.seed_url_configuration.seed_urls[0] #=> String
    #   resp.configuration.web_crawler_configuration.urls.seed_url_configuration.web_crawler_mode #=> String, one of "HOST_ONLY", "SUBDOMAINS", "EVERYTHING"
    #   resp.configuration.web_crawler_configuration.urls.site_maps_configuration.site_maps #=> Array
    #   resp.configuration.web_crawler_configuration.urls.site_maps_configuration.site_maps[0] #=> String
    #   resp.configuration.web_crawler_configuration.crawl_depth #=> Integer
    #   resp.configuration.web_crawler_configuration.max_links_per_page #=> Integer
    #   resp.configuration.web_crawler_configuration.max_content_size_per_page_in_mega_bytes #=> Float
    #   resp.configuration.web_crawler_configuration.max_urls_per_minute_crawl_rate #=> Integer
    #   resp.configuration.web_crawler_configuration.url_inclusion_patterns #=> Array
    #   resp.configuration.web_crawler_configuration.url_inclusion_patterns[0] #=> String
    #   resp.configuration.web_crawler_configuration.url_exclusion_patterns #=> Array
    #   resp.configuration.web_crawler_configuration.url_exclusion_patterns[0] #=> String
    #   resp.configuration.web_crawler_configuration.proxy_configuration.host #=> String
    #   resp.configuration.web_crawler_configuration.proxy_configuration.port #=> Integer
    #   resp.configuration.web_crawler_configuration.proxy_configuration.credentials #=> String
    #   resp.configuration.web_crawler_configuration.authentication_configuration.basic_authentication #=> Array
    #   resp.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].host #=> String
    #   resp.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].port #=> Integer
    #   resp.configuration.web_crawler_configuration.authentication_configuration.basic_authentication[0].credentials #=> String
    #   resp.configuration.work_docs_configuration.organization_id #=> String
    #   resp.configuration.work_docs_configuration.crawl_comments #=> Boolean
    #   resp.configuration.work_docs_configuration.use_change_log #=> Boolean
    #   resp.configuration.work_docs_configuration.inclusion_patterns #=> Array
    #   resp.configuration.work_docs_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.work_docs_configuration.exclusion_patterns #=> Array
    #   resp.configuration.work_docs_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.work_docs_configuration.field_mappings #=> Array
    #   resp.configuration.work_docs_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.work_docs_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.work_docs_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.fsx_configuration.file_system_id #=> String
    #   resp.configuration.fsx_configuration.file_system_type #=> String, one of "WINDOWS"
    #   resp.configuration.fsx_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.fsx_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.fsx_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.fsx_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.fsx_configuration.secret_arn #=> String
    #   resp.configuration.fsx_configuration.inclusion_patterns #=> Array
    #   resp.configuration.fsx_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.fsx_configuration.exclusion_patterns #=> Array
    #   resp.configuration.fsx_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.fsx_configuration.field_mappings #=> Array
    #   resp.configuration.fsx_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.fsx_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.fsx_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.slack_configuration.team_id #=> String
    #   resp.configuration.slack_configuration.secret_arn #=> String
    #   resp.configuration.slack_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.slack_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.slack_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.slack_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.slack_configuration.slack_entity_list #=> Array
    #   resp.configuration.slack_configuration.slack_entity_list[0] #=> String, one of "PUBLIC_CHANNEL", "PRIVATE_CHANNEL", "GROUP_MESSAGE", "DIRECT_MESSAGE"
    #   resp.configuration.slack_configuration.use_change_log #=> Boolean
    #   resp.configuration.slack_configuration.crawl_bot_message #=> Boolean
    #   resp.configuration.slack_configuration.exclude_archived #=> Boolean
    #   resp.configuration.slack_configuration.since_crawl_date #=> String
    #   resp.configuration.slack_configuration.look_back_period #=> Integer
    #   resp.configuration.slack_configuration.private_channel_filter #=> Array
    #   resp.configuration.slack_configuration.private_channel_filter[0] #=> String
    #   resp.configuration.slack_configuration.public_channel_filter #=> Array
    #   resp.configuration.slack_configuration.public_channel_filter[0] #=> String
    #   resp.configuration.slack_configuration.inclusion_patterns #=> Array
    #   resp.configuration.slack_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.slack_configuration.exclusion_patterns #=> Array
    #   resp.configuration.slack_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.slack_configuration.field_mappings #=> Array
    #   resp.configuration.slack_configuration.field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.slack_configuration.field_mappings[0].date_field_format #=> String
    #   resp.configuration.slack_configuration.field_mappings[0].index_field_name #=> String
    #   resp.configuration.box_configuration.enterprise_id #=> String
    #   resp.configuration.box_configuration.secret_arn #=> String
    #   resp.configuration.box_configuration.use_change_log #=> Boolean
    #   resp.configuration.box_configuration.crawl_comments #=> Boolean
    #   resp.configuration.box_configuration.crawl_tasks #=> Boolean
    #   resp.configuration.box_configuration.crawl_web_links #=> Boolean
    #   resp.configuration.box_configuration.file_field_mappings #=> Array
    #   resp.configuration.box_configuration.file_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.box_configuration.file_field_mappings[0].date_field_format #=> String
    #   resp.configuration.box_configuration.file_field_mappings[0].index_field_name #=> String
    #   resp.configuration.box_configuration.task_field_mappings #=> Array
    #   resp.configuration.box_configuration.task_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.box_configuration.task_field_mappings[0].date_field_format #=> String
    #   resp.configuration.box_configuration.task_field_mappings[0].index_field_name #=> String
    #   resp.configuration.box_configuration.comment_field_mappings #=> Array
    #   resp.configuration.box_configuration.comment_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.box_configuration.comment_field_mappings[0].date_field_format #=> String
    #   resp.configuration.box_configuration.comment_field_mappings[0].index_field_name #=> String
    #   resp.configuration.box_configuration.web_link_field_mappings #=> Array
    #   resp.configuration.box_configuration.web_link_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.box_configuration.web_link_field_mappings[0].date_field_format #=> String
    #   resp.configuration.box_configuration.web_link_field_mappings[0].index_field_name #=> String
    #   resp.configuration.box_configuration.inclusion_patterns #=> Array
    #   resp.configuration.box_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.box_configuration.exclusion_patterns #=> Array
    #   resp.configuration.box_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.box_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.box_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.box_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.box_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.quip_configuration.domain #=> String
    #   resp.configuration.quip_configuration.secret_arn #=> String
    #   resp.configuration.quip_configuration.crawl_file_comments #=> Boolean
    #   resp.configuration.quip_configuration.crawl_chat_rooms #=> Boolean
    #   resp.configuration.quip_configuration.crawl_attachments #=> Boolean
    #   resp.configuration.quip_configuration.folder_ids #=> Array
    #   resp.configuration.quip_configuration.folder_ids[0] #=> String
    #   resp.configuration.quip_configuration.thread_field_mappings #=> Array
    #   resp.configuration.quip_configuration.thread_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.quip_configuration.thread_field_mappings[0].date_field_format #=> String
    #   resp.configuration.quip_configuration.thread_field_mappings[0].index_field_name #=> String
    #   resp.configuration.quip_configuration.message_field_mappings #=> Array
    #   resp.configuration.quip_configuration.message_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.quip_configuration.message_field_mappings[0].date_field_format #=> String
    #   resp.configuration.quip_configuration.message_field_mappings[0].index_field_name #=> String
    #   resp.configuration.quip_configuration.attachment_field_mappings #=> Array
    #   resp.configuration.quip_configuration.attachment_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.quip_configuration.attachment_field_mappings[0].date_field_format #=> String
    #   resp.configuration.quip_configuration.attachment_field_mappings[0].index_field_name #=> String
    #   resp.configuration.quip_configuration.inclusion_patterns #=> Array
    #   resp.configuration.quip_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.quip_configuration.exclusion_patterns #=> Array
    #   resp.configuration.quip_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.quip_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.quip_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.quip_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.quip_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.jira_configuration.jira_account_url #=> String
    #   resp.configuration.jira_configuration.secret_arn #=> String
    #   resp.configuration.jira_configuration.use_change_log #=> Boolean
    #   resp.configuration.jira_configuration.project #=> Array
    #   resp.configuration.jira_configuration.project[0] #=> String
    #   resp.configuration.jira_configuration.issue_type #=> Array
    #   resp.configuration.jira_configuration.issue_type[0] #=> String
    #   resp.configuration.jira_configuration.status #=> Array
    #   resp.configuration.jira_configuration.status[0] #=> String
    #   resp.configuration.jira_configuration.issue_sub_entity_filter #=> Array
    #   resp.configuration.jira_configuration.issue_sub_entity_filter[0] #=> String, one of "COMMENTS", "ATTACHMENTS", "WORKLOGS"
    #   resp.configuration.jira_configuration.attachment_field_mappings #=> Array
    #   resp.configuration.jira_configuration.attachment_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.jira_configuration.attachment_field_mappings[0].date_field_format #=> String
    #   resp.configuration.jira_configuration.attachment_field_mappings[0].index_field_name #=> String
    #   resp.configuration.jira_configuration.comment_field_mappings #=> Array
    #   resp.configuration.jira_configuration.comment_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.jira_configuration.comment_field_mappings[0].date_field_format #=> String
    #   resp.configuration.jira_configuration.comment_field_mappings[0].index_field_name #=> String
    #   resp.configuration.jira_configuration.issue_field_mappings #=> Array
    #   resp.configuration.jira_configuration.issue_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.jira_configuration.issue_field_mappings[0].date_field_format #=> String
    #   resp.configuration.jira_configuration.issue_field_mappings[0].index_field_name #=> String
    #   resp.configuration.jira_configuration.project_field_mappings #=> Array
    #   resp.configuration.jira_configuration.project_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.jira_configuration.project_field_mappings[0].date_field_format #=> String
    #   resp.configuration.jira_configuration.project_field_mappings[0].index_field_name #=> String
    #   resp.configuration.jira_configuration.work_log_field_mappings #=> Array
    #   resp.configuration.jira_configuration.work_log_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.jira_configuration.work_log_field_mappings[0].date_field_format #=> String
    #   resp.configuration.jira_configuration.work_log_field_mappings[0].index_field_name #=> String
    #   resp.configuration.jira_configuration.inclusion_patterns #=> Array
    #   resp.configuration.jira_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.jira_configuration.exclusion_patterns #=> Array
    #   resp.configuration.jira_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.jira_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.jira_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.jira_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.jira_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.git_hub_configuration.saa_s_configuration.organization_name #=> String
    #   resp.configuration.git_hub_configuration.saa_s_configuration.host_url #=> String
    #   resp.configuration.git_hub_configuration.on_premise_configuration.host_url #=> String
    #   resp.configuration.git_hub_configuration.on_premise_configuration.organization_name #=> String
    #   resp.configuration.git_hub_configuration.on_premise_configuration.ssl_certificate_s3_path.bucket #=> String
    #   resp.configuration.git_hub_configuration.on_premise_configuration.ssl_certificate_s3_path.key #=> String
    #   resp.configuration.git_hub_configuration.type #=> String, one of "SAAS", "ON_PREMISE"
    #   resp.configuration.git_hub_configuration.secret_arn #=> String
    #   resp.configuration.git_hub_configuration.use_change_log #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_repository_documents #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue_comment #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_issue_comment_attachment #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request_comment #=> Boolean
    #   resp.configuration.git_hub_configuration.git_hub_document_crawl_properties.crawl_pull_request_comment_attachment #=> Boolean
    #   resp.configuration.git_hub_configuration.repository_filter #=> Array
    #   resp.configuration.git_hub_configuration.repository_filter[0] #=> String
    #   resp.configuration.git_hub_configuration.inclusion_folder_name_patterns #=> Array
    #   resp.configuration.git_hub_configuration.inclusion_folder_name_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.inclusion_file_type_patterns #=> Array
    #   resp.configuration.git_hub_configuration.inclusion_file_type_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.inclusion_file_name_patterns #=> Array
    #   resp.configuration.git_hub_configuration.inclusion_file_name_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.exclusion_folder_name_patterns #=> Array
    #   resp.configuration.git_hub_configuration.exclusion_folder_name_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.exclusion_file_type_patterns #=> Array
    #   resp.configuration.git_hub_configuration.exclusion_file_type_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.exclusion_file_name_patterns #=> Array
    #   resp.configuration.git_hub_configuration.exclusion_file_name_patterns[0] #=> String
    #   resp.configuration.git_hub_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.git_hub_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.git_hub_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.git_hub_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.configuration.git_hub_configuration.git_hub_repository_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_repository_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_repository_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_repository_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_commit_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_commit_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_commit_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_commit_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_document_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_issue_document_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_document_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_document_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_comment_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_issue_comment_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_comment_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_comment_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_attachment_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_issue_attachment_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_attachment_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_issue_attachment_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_comment_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_comment_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_comment_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_comment_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_attachment_configuration_field_mappings #=> Array
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_attachment_configuration_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_attachment_configuration_field_mappings[0].date_field_format #=> String
    #   resp.configuration.git_hub_configuration.git_hub_pull_request_document_attachment_configuration_field_mappings[0].index_field_name #=> String
    #   resp.configuration.alfresco_configuration.site_url #=> String
    #   resp.configuration.alfresco_configuration.site_id #=> String
    #   resp.configuration.alfresco_configuration.secret_arn #=> String
    #   resp.configuration.alfresco_configuration.ssl_certificate_s3_path.bucket #=> String
    #   resp.configuration.alfresco_configuration.ssl_certificate_s3_path.key #=> String
    #   resp.configuration.alfresco_configuration.crawl_system_folders #=> Boolean
    #   resp.configuration.alfresco_configuration.crawl_comments #=> Boolean
    #   resp.configuration.alfresco_configuration.entity_filter #=> Array
    #   resp.configuration.alfresco_configuration.entity_filter[0] #=> String, one of "wiki", "blog", "documentLibrary"
    #   resp.configuration.alfresco_configuration.document_library_field_mappings #=> Array
    #   resp.configuration.alfresco_configuration.document_library_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.alfresco_configuration.document_library_field_mappings[0].date_field_format #=> String
    #   resp.configuration.alfresco_configuration.document_library_field_mappings[0].index_field_name #=> String
    #   resp.configuration.alfresco_configuration.blog_field_mappings #=> Array
    #   resp.configuration.alfresco_configuration.blog_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.alfresco_configuration.blog_field_mappings[0].date_field_format #=> String
    #   resp.configuration.alfresco_configuration.blog_field_mappings[0].index_field_name #=> String
    #   resp.configuration.alfresco_configuration.wiki_field_mappings #=> Array
    #   resp.configuration.alfresco_configuration.wiki_field_mappings[0].data_source_field_name #=> String
    #   resp.configuration.alfresco_configuration.wiki_field_mappings[0].date_field_format #=> String
    #   resp.configuration.alfresco_configuration.wiki_field_mappings[0].index_field_name #=> String
    #   resp.configuration.alfresco_configuration.inclusion_patterns #=> Array
    #   resp.configuration.alfresco_configuration.inclusion_patterns[0] #=> String
    #   resp.configuration.alfresco_configuration.exclusion_patterns #=> Array
    #   resp.configuration.alfresco_configuration.exclusion_patterns[0] #=> String
    #   resp.configuration.alfresco_configuration.vpc_configuration.subnet_ids #=> Array
    #   resp.configuration.alfresco_configuration.vpc_configuration.subnet_ids[0] #=> String
    #   resp.configuration.alfresco_configuration.vpc_configuration.security_group_ids #=> Array
    #   resp.configuration.alfresco_configuration.vpc_configuration.security_group_ids[0] #=> String
    #   resp.vpc_configuration.subnet_ids #=> Array
    #   resp.vpc_configuration.subnet_ids[0] #=> String
    #   resp.vpc_configuration.security_group_ids #=> Array
    #   resp.vpc_configuration.security_group_ids[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"
    #   resp.schedule #=> String
    #   resp.role_arn #=> String
    #   resp.error_message #=> String
    #   resp.language_code #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations #=> Array
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_document_attribute_key #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.operator #=> String, one of "GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_value #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_list_value #=> Array
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.string_list_value[0] #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.long_value #=> Integer
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].condition.condition_on_value.date_value #=> Time
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_key #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value_deletion #=> Boolean
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value.string_value #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value.string_list_value #=> Array
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value.string_list_value[0] #=> String
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value.long_value #=> Integer
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].target.target_document_attribute_value.date_value #=> Time
    #   resp.custom_document_enrichment_configuration.inline_configurations[0].document_content_deletion #=> Boolean
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_document_attribute_key #=> String
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.operator #=> String, one of "GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value.string_value #=> String
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value.string_list_value #=> Array
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value.string_list_value[0] #=> String
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value.long_value #=> Integer
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.invocation_condition.condition_on_value.date_value #=> Time
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.lambda_arn #=> String
    #   resp.custom_document_enrichment_configuration.pre_extraction_hook_configuration.s3_bucket #=> String
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_document_attribute_key #=> String
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.operator #=> String, one of "GreaterThan", "GreaterThanOrEquals", "LessThan", "LessThanOrEquals", "Equals", "NotEquals", "Contains", "NotContains", "Exists", "NotExists", "BeginsWith"
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value.string_value #=> String
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value.string_list_value #=> Array
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value.string_list_value[0] #=> String
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value.long_value #=> Integer
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.invocation_condition.condition_on_value.date_value #=> Time
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.lambda_arn #=> String
    #   resp.custom_document_enrichment_configuration.post_extraction_hook_configuration.s3_bucket #=> String
    #   resp.custom_document_enrichment_configuration.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeDataSource AWS API Documentation
    #
    # @overload describe_data_source(params = {})
    # @param [Hash] params ({})
    def describe_data_source(params = {}, options = {})
      req = build_request(:describe_data_source, params)
      req.send_request(options)
    end

    # Gets information about your Amazon Kendra experience such as a search
    # application. For more information on creating a search application
    # experience, see [Building a search experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience you want to get
    #   information on.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @return [Types::DescribeExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExperienceResponse#id #id} => String
    #   * {Types::DescribeExperienceResponse#index_id #index_id} => String
    #   * {Types::DescribeExperienceResponse#name #name} => String
    #   * {Types::DescribeExperienceResponse#endpoints #endpoints} => Array&lt;Types::ExperienceEndpoint&gt;
    #   * {Types::DescribeExperienceResponse#configuration #configuration} => Types::ExperienceConfiguration
    #   * {Types::DescribeExperienceResponse#created_at #created_at} => Time
    #   * {Types::DescribeExperienceResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeExperienceResponse#description #description} => String
    #   * {Types::DescribeExperienceResponse#status #status} => String
    #   * {Types::DescribeExperienceResponse#role_arn #role_arn} => String
    #   * {Types::DescribeExperienceResponse#error_message #error_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_experience({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_type #=> String, one of "HOME"
    #   resp.endpoints[0].endpoint #=> String
    #   resp.configuration.content_source_configuration.data_source_ids #=> Array
    #   resp.configuration.content_source_configuration.data_source_ids[0] #=> String
    #   resp.configuration.content_source_configuration.faq_ids #=> Array
    #   resp.configuration.content_source_configuration.faq_ids[0] #=> String
    #   resp.configuration.content_source_configuration.direct_put_content #=> Boolean
    #   resp.configuration.user_identity_configuration.identity_attribute_name #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.role_arn #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeExperience AWS API Documentation
    #
    # @overload describe_experience(params = {})
    # @param [Hash] params ({})
    def describe_experience(params = {}, options = {})
      req = build_request(:describe_experience, params)
      req.send_request(options)
    end

    # Gets information about an FAQ list.
    #
    # @option params [required, String] :id
    #   The identifier of the FAQ you want to get information on.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the FAQ.
    #
    # @return [Types::DescribeFaqResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFaqResponse#id #id} => String
    #   * {Types::DescribeFaqResponse#index_id #index_id} => String
    #   * {Types::DescribeFaqResponse#name #name} => String
    #   * {Types::DescribeFaqResponse#description #description} => String
    #   * {Types::DescribeFaqResponse#created_at #created_at} => Time
    #   * {Types::DescribeFaqResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeFaqResponse#s3_path #s3_path} => Types::S3Path
    #   * {Types::DescribeFaqResponse#status #status} => String
    #   * {Types::DescribeFaqResponse#role_arn #role_arn} => String
    #   * {Types::DescribeFaqResponse#error_message #error_message} => String
    #   * {Types::DescribeFaqResponse#file_format #file_format} => String
    #   * {Types::DescribeFaqResponse#language_code #language_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_faq({
    #     id: "FaqId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.s3_path.bucket #=> String
    #   resp.s3_path.key #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.role_arn #=> String
    #   resp.error_message #=> String
    #   resp.file_format #=> String, one of "CSV", "CSV_WITH_HEADER", "JSON"
    #   resp.language_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeFaq AWS API Documentation
    #
    # @overload describe_faq(params = {})
    # @param [Hash] params ({})
    def describe_faq(params = {}, options = {})
      req = build_request(:describe_faq, params)
      req.send_request(options)
    end

    # Gets information about a set of featured results. Features results are
    # placed above all other results for certain queries. If there's an
    # exact match of a query, then one or more specific documents are
    # featured in the search results.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used for featuring results.
    #
    # @option params [required, String] :featured_results_set_id
    #   The identifier of the set of featured results that you want to get
    #   information on.
    #
    # @return [Types::DescribeFeaturedResultsSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFeaturedResultsSetResponse#featured_results_set_id #featured_results_set_id} => String
    #   * {Types::DescribeFeaturedResultsSetResponse#featured_results_set_name #featured_results_set_name} => String
    #   * {Types::DescribeFeaturedResultsSetResponse#description #description} => String
    #   * {Types::DescribeFeaturedResultsSetResponse#status #status} => String
    #   * {Types::DescribeFeaturedResultsSetResponse#query_texts #query_texts} => Array&lt;String&gt;
    #   * {Types::DescribeFeaturedResultsSetResponse#featured_documents_with_metadata #featured_documents_with_metadata} => Array&lt;Types::FeaturedDocumentWithMetadata&gt;
    #   * {Types::DescribeFeaturedResultsSetResponse#featured_documents_missing #featured_documents_missing} => Array&lt;Types::FeaturedDocumentMissing&gt;
    #   * {Types::DescribeFeaturedResultsSetResponse#last_updated_timestamp #last_updated_timestamp} => Integer
    #   * {Types::DescribeFeaturedResultsSetResponse#creation_timestamp #creation_timestamp} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_featured_results_set({
    #     index_id: "IndexId", # required
    #     featured_results_set_id: "FeaturedResultsSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.featured_results_set_id #=> String
    #   resp.featured_results_set_name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.query_texts #=> Array
    #   resp.query_texts[0] #=> String
    #   resp.featured_documents_with_metadata #=> Array
    #   resp.featured_documents_with_metadata[0].id #=> String
    #   resp.featured_documents_with_metadata[0].title #=> String
    #   resp.featured_documents_with_metadata[0].uri #=> String
    #   resp.featured_documents_missing #=> Array
    #   resp.featured_documents_missing[0].id #=> String
    #   resp.last_updated_timestamp #=> Integer
    #   resp.creation_timestamp #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeFeaturedResultsSet AWS API Documentation
    #
    # @overload describe_featured_results_set(params = {})
    # @param [Hash] params ({})
    def describe_featured_results_set(params = {}, options = {})
      req = build_request(:describe_featured_results_set, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Kendra index.
    #
    # @option params [required, String] :id
    #   The identifier of the index you want to get information on.
    #
    # @return [Types::DescribeIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexResponse#name #name} => String
    #   * {Types::DescribeIndexResponse#id #id} => String
    #   * {Types::DescribeIndexResponse#edition #edition} => String
    #   * {Types::DescribeIndexResponse#role_arn #role_arn} => String
    #   * {Types::DescribeIndexResponse#server_side_encryption_configuration #server_side_encryption_configuration} => Types::ServerSideEncryptionConfiguration
    #   * {Types::DescribeIndexResponse#status #status} => String
    #   * {Types::DescribeIndexResponse#description #description} => String
    #   * {Types::DescribeIndexResponse#created_at #created_at} => Time
    #   * {Types::DescribeIndexResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeIndexResponse#document_metadata_configurations #document_metadata_configurations} => Array&lt;Types::DocumentMetadataConfiguration&gt;
    #   * {Types::DescribeIndexResponse#index_statistics #index_statistics} => Types::IndexStatistics
    #   * {Types::DescribeIndexResponse#error_message #error_message} => String
    #   * {Types::DescribeIndexResponse#capacity_units #capacity_units} => Types::CapacityUnitsConfiguration
    #   * {Types::DescribeIndexResponse#user_token_configurations #user_token_configurations} => Array&lt;Types::UserTokenConfiguration&gt;
    #   * {Types::DescribeIndexResponse#user_context_policy #user_context_policy} => String
    #   * {Types::DescribeIndexResponse#user_group_resolution_configuration #user_group_resolution_configuration} => Types::UserGroupResolutionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index({
    #     id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.edition #=> String, one of "DEVELOPER_EDITION", "ENTERPRISE_EDITION"
    #   resp.role_arn #=> String
    #   resp.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.document_metadata_configurations #=> Array
    #   resp.document_metadata_configurations[0].name #=> String
    #   resp.document_metadata_configurations[0].type #=> String, one of "STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"
    #   resp.document_metadata_configurations[0].relevance.freshness #=> Boolean
    #   resp.document_metadata_configurations[0].relevance.importance #=> Integer
    #   resp.document_metadata_configurations[0].relevance.duration #=> String
    #   resp.document_metadata_configurations[0].relevance.rank_order #=> String, one of "ASCENDING", "DESCENDING"
    #   resp.document_metadata_configurations[0].relevance.value_importance_map #=> Hash
    #   resp.document_metadata_configurations[0].relevance.value_importance_map["ValueImportanceMapKey"] #=> Integer
    #   resp.document_metadata_configurations[0].search.facetable #=> Boolean
    #   resp.document_metadata_configurations[0].search.searchable #=> Boolean
    #   resp.document_metadata_configurations[0].search.displayable #=> Boolean
    #   resp.document_metadata_configurations[0].search.sortable #=> Boolean
    #   resp.index_statistics.faq_statistics.indexed_question_answers_count #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_documents_count #=> Integer
    #   resp.index_statistics.text_document_statistics.indexed_text_bytes #=> Integer
    #   resp.error_message #=> String
    #   resp.capacity_units.storage_capacity_units #=> Integer
    #   resp.capacity_units.query_capacity_units #=> Integer
    #   resp.user_token_configurations #=> Array
    #   resp.user_token_configurations[0].jwt_token_type_configuration.key_location #=> String, one of "URL", "SECRET_MANAGER"
    #   resp.user_token_configurations[0].jwt_token_type_configuration.url #=> String
    #   resp.user_token_configurations[0].jwt_token_type_configuration.secret_manager_arn #=> String
    #   resp.user_token_configurations[0].jwt_token_type_configuration.user_name_attribute_field #=> String
    #   resp.user_token_configurations[0].jwt_token_type_configuration.group_attribute_field #=> String
    #   resp.user_token_configurations[0].jwt_token_type_configuration.issuer #=> String
    #   resp.user_token_configurations[0].jwt_token_type_configuration.claim_regex #=> String
    #   resp.user_token_configurations[0].json_token_type_configuration.user_name_attribute_field #=> String
    #   resp.user_token_configurations[0].json_token_type_configuration.group_attribute_field #=> String
    #   resp.user_context_policy #=> String, one of "ATTRIBUTE_FILTER", "USER_TOKEN"
    #   resp.user_group_resolution_configuration.user_group_resolution_mode #=> String, one of "AWS_SSO", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeIndex AWS API Documentation
    #
    # @overload describe_index(params = {})
    # @param [Hash] params ({})
    def describe_index(params = {}, options = {})
      req = build_request(:describe_index, params)
      req.send_request(options)
    end

    # Describes the processing of `PUT` and `DELETE` actions for mapping
    # users to their groups. This includes information on the status of
    # actions currently processing or yet to be processed, when actions were
    # last updated, when actions were received by Amazon Kendra, the latest
    # action that should process and apply after other actions, and useful
    # error messages if an action could not be processed.
    #
    # `DescribePrincipalMapping` is currently not supported in the Amazon
    # Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index required to check the processing of `PUT`
    #   and `DELETE` actions for mapping users to their groups.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source to check the processing of `PUT` and
    #   `DELETE` actions for mapping users to their groups.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group required to check the processing of `PUT`
    #   and `DELETE` actions for mapping users to their groups.
    #
    # @return [Types::DescribePrincipalMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePrincipalMappingResponse#index_id #index_id} => String
    #   * {Types::DescribePrincipalMappingResponse#data_source_id #data_source_id} => String
    #   * {Types::DescribePrincipalMappingResponse#group_id #group_id} => String
    #   * {Types::DescribePrincipalMappingResponse#group_ordering_id_summaries #group_ordering_id_summaries} => Array&lt;Types::GroupOrderingIdSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_principal_mapping({
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_id #=> String
    #   resp.data_source_id #=> String
    #   resp.group_id #=> String
    #   resp.group_ordering_id_summaries #=> Array
    #   resp.group_ordering_id_summaries[0].status #=> String, one of "FAILED", "SUCCEEDED", "PROCESSING", "DELETING", "DELETED"
    #   resp.group_ordering_id_summaries[0].last_updated_at #=> Time
    #   resp.group_ordering_id_summaries[0].received_at #=> Time
    #   resp.group_ordering_id_summaries[0].ordering_id #=> Integer
    #   resp.group_ordering_id_summaries[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribePrincipalMapping AWS API Documentation
    #
    # @overload describe_principal_mapping(params = {})
    # @param [Hash] params ({})
    def describe_principal_mapping(params = {}, options = {})
      req = build_request(:describe_principal_mapping, params)
      req.send_request(options)
    end

    # Gets information about a block list used for query suggestions for an
    # index.
    #
    # This is used to check the current settings that are applied to a block
    # list.
    #
    # `DescribeQuerySuggestionsBlockList` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the block list.
    #
    # @option params [required, String] :id
    #   The identifier of the block list you want to get information on.
    #
    # @return [Types::DescribeQuerySuggestionsBlockListResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#index_id #index_id} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#id #id} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#name #name} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#description #description} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#status #status} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#error_message #error_message} => String
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#created_at #created_at} => Time
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#source_s3_path #source_s3_path} => Types::S3Path
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#item_count #item_count} => Integer
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#file_size_bytes #file_size_bytes} => Integer
    #   * {Types::DescribeQuerySuggestionsBlockListResponse#role_arn #role_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_suggestions_block_list({
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"
    #   resp.error_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.source_s3_path.bucket #=> String
    #   resp.source_s3_path.key #=> String
    #   resp.item_count #=> Integer
    #   resp.file_size_bytes #=> Integer
    #   resp.role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsBlockList AWS API Documentation
    #
    # @overload describe_query_suggestions_block_list(params = {})
    # @param [Hash] params ({})
    def describe_query_suggestions_block_list(params = {}, options = {})
      req = build_request(:describe_query_suggestions_block_list, params)
      req.send_request(options)
    end

    # Gets information on the settings of query suggestions for an index.
    #
    # This is used to check the current settings applied to query
    # suggestions.
    #
    # `DescribeQuerySuggestionsConfig` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index with query suggestions that you want to
    #   get information on.
    #
    # @return [Types::DescribeQuerySuggestionsConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQuerySuggestionsConfigResponse#mode #mode} => String
    #   * {Types::DescribeQuerySuggestionsConfigResponse#status #status} => String
    #   * {Types::DescribeQuerySuggestionsConfigResponse#query_log_look_back_window_in_days #query_log_look_back_window_in_days} => Integer
    #   * {Types::DescribeQuerySuggestionsConfigResponse#include_queries_without_user_information #include_queries_without_user_information} => Boolean
    #   * {Types::DescribeQuerySuggestionsConfigResponse#minimum_number_of_querying_users #minimum_number_of_querying_users} => Integer
    #   * {Types::DescribeQuerySuggestionsConfigResponse#minimum_query_count #minimum_query_count} => Integer
    #   * {Types::DescribeQuerySuggestionsConfigResponse#last_suggestions_build_time #last_suggestions_build_time} => Time
    #   * {Types::DescribeQuerySuggestionsConfigResponse#last_clear_time #last_clear_time} => Time
    #   * {Types::DescribeQuerySuggestionsConfigResponse#total_suggestions_count #total_suggestions_count} => Integer
    #   * {Types::DescribeQuerySuggestionsConfigResponse#attribute_suggestions_config #attribute_suggestions_config} => Types::AttributeSuggestionsDescribeConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_query_suggestions_config({
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mode #=> String, one of "ENABLED", "LEARN_ONLY"
    #   resp.status #=> String, one of "ACTIVE", "UPDATING"
    #   resp.query_log_look_back_window_in_days #=> Integer
    #   resp.include_queries_without_user_information #=> Boolean
    #   resp.minimum_number_of_querying_users #=> Integer
    #   resp.minimum_query_count #=> Integer
    #   resp.last_suggestions_build_time #=> Time
    #   resp.last_clear_time #=> Time
    #   resp.total_suggestions_count #=> Integer
    #   resp.attribute_suggestions_config.suggestable_config_list #=> Array
    #   resp.attribute_suggestions_config.suggestable_config_list[0].attribute_name #=> String
    #   resp.attribute_suggestions_config.suggestable_config_list[0].suggestable #=> Boolean
    #   resp.attribute_suggestions_config.attribute_suggestions_mode #=> String, one of "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeQuerySuggestionsConfig AWS API Documentation
    #
    # @overload describe_query_suggestions_config(params = {})
    # @param [Hash] params ({})
    def describe_query_suggestions_config(params = {}, options = {})
      req = build_request(:describe_query_suggestions_config, params)
      req.send_request(options)
    end

    # Gets information about an existing Amazon Kendra thesaurus.
    #
    # @option params [required, String] :id
    #   The identifier of the thesaurus you want to get information on.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the thesaurus.
    #
    # @return [Types::DescribeThesaurusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThesaurusResponse#id #id} => String
    #   * {Types::DescribeThesaurusResponse#index_id #index_id} => String
    #   * {Types::DescribeThesaurusResponse#name #name} => String
    #   * {Types::DescribeThesaurusResponse#description #description} => String
    #   * {Types::DescribeThesaurusResponse#status #status} => String
    #   * {Types::DescribeThesaurusResponse#error_message #error_message} => String
    #   * {Types::DescribeThesaurusResponse#created_at #created_at} => Time
    #   * {Types::DescribeThesaurusResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeThesaurusResponse#role_arn #role_arn} => String
    #   * {Types::DescribeThesaurusResponse#source_s3_path #source_s3_path} => Types::S3Path
    #   * {Types::DescribeThesaurusResponse#file_size_bytes #file_size_bytes} => Integer
    #   * {Types::DescribeThesaurusResponse#term_count #term_count} => Integer
    #   * {Types::DescribeThesaurusResponse#synonym_rule_count #synonym_rule_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thesaurus({
    #     id: "ThesaurusId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.index_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"
    #   resp.error_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.role_arn #=> String
    #   resp.source_s3_path.bucket #=> String
    #   resp.source_s3_path.key #=> String
    #   resp.file_size_bytes #=> Integer
    #   resp.term_count #=> Integer
    #   resp.synonym_rule_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DescribeThesaurus AWS API Documentation
    #
    # @overload describe_thesaurus(params = {})
    # @param [Hash] params ({})
    def describe_thesaurus(params = {}, options = {})
      req = build_request(:describe_thesaurus, params)
      req.send_request(options)
    end

    # Prevents users or groups in your IAM Identity Center identity source
    # from accessing your Amazon Kendra experience. You can create an Amazon
    # Kendra experience such as a search application. For more information
    # on creating a search application experience, see [Building a search
    # experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [required, Array<Types::EntityConfiguration>] :entity_list
    #   Lists users or groups in your IAM Identity Center identity source.
    #
    # @return [Types::DisassociateEntitiesFromExperienceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateEntitiesFromExperienceResponse#failed_entity_list #failed_entity_list} => Array&lt;Types::FailedEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_entities_from_experience({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_list: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         entity_type: "USER", # required, accepts USER, GROUP
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entity_list #=> Array
    #   resp.failed_entity_list[0].entity_id #=> String
    #   resp.failed_entity_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociateEntitiesFromExperience AWS API Documentation
    #
    # @overload disassociate_entities_from_experience(params = {})
    # @param [Hash] params ({})
    def disassociate_entities_from_experience(params = {}, options = {})
      req = build_request(:disassociate_entities_from_experience, params)
      req.send_request(options)
    end

    # Removes the specific permissions of users or groups in your IAM
    # Identity Center identity source with access to your Amazon Kendra
    # experience. You can create an Amazon Kendra experience such as a
    # search application. For more information on creating a search
    # application experience, see [Building a search experience with no
    # code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [required, Array<String>] :entity_ids
    #   The identifiers of users or groups in your IAM Identity Center
    #   identity source. For example, user IDs could be user emails.
    #
    # @return [Types::DisassociatePersonasFromEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociatePersonasFromEntitiesResponse#failed_entity_list #failed_entity_list} => Array&lt;Types::FailedEntity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_personas_from_entities({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     entity_ids: ["EntityId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_entity_list #=> Array
    #   resp.failed_entity_list[0].entity_id #=> String
    #   resp.failed_entity_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/DisassociatePersonasFromEntities AWS API Documentation
    #
    # @overload disassociate_personas_from_entities(params = {})
    # @param [Hash] params ({})
    def disassociate_personas_from_entities(params = {}, options = {})
      req = build_request(:disassociate_personas_from_entities, params)
      req.send_request(options)
    end

    # Fetches the queries that are suggested to your users.
    #
    # `GetQuerySuggestions` is currently not supported in the Amazon Web
    # Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to get query suggestions from.
    #
    # @option params [required, String] :query_text
    #   The text of a user's query to generate query suggestions.
    #
    #   A query is suggested if the query prefix matches what a user starts to
    #   type as their query.
    #
    #   Amazon Kendra does not show any suggestions if a user types fewer than
    #   two characters or more than 60 characters. A query must also have at
    #   least one search result and contain at least one word of more than
    #   four characters.
    #
    # @option params [Integer] :max_suggestions_count
    #   The maximum number of query suggestions you want to show to your
    #   users.
    #
    # @option params [Array<String>] :suggestion_types
    #   The suggestions type to base query suggestions on. The suggestion
    #   types are query history or document fields/attributes. You can set one
    #   type or the other.
    #
    #   If you set query history as your suggestions type, Amazon Kendra
    #   suggests queries relevant to your users based on popular queries in
    #   the query history.
    #
    #   If you set document fields/attributes as your suggestions type, Amazon
    #   Kendra suggests queries relevant to your users based on the contents
    #   of document fields.
    #
    # @option params [Types::AttributeSuggestionsGetConfig] :attribute_suggestions_config
    #   Configuration information for the document fields/attributes that you
    #   want to base query suggestions on.
    #
    # @return [Types::GetQuerySuggestionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQuerySuggestionsResponse#query_suggestions_id #query_suggestions_id} => String
    #   * {Types::GetQuerySuggestionsResponse#suggestions #suggestions} => Array&lt;Types::Suggestion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_suggestions({
    #     index_id: "IndexId", # required
    #     query_text: "SuggestionQueryText", # required
    #     max_suggestions_count: 1,
    #     suggestion_types: ["QUERY"], # accepts QUERY, DOCUMENT_ATTRIBUTES
    #     attribute_suggestions_config: {
    #       suggestion_attributes: ["DocumentAttributeKey"],
    #       additional_response_attributes: ["DocumentAttributeKey"],
    #       attribute_filter: {
    #         and_all_filters: [
    #           {
    #             # recursive AttributeFilter
    #           },
    #         ],
    #         or_all_filters: [
    #           {
    #             # recursive AttributeFilter
    #           },
    #         ],
    #         not_filter: {
    #           # recursive AttributeFilter
    #         },
    #         equals_to: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         contains_all: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         contains_any: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         greater_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         greater_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         less_than: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         less_than_or_equals: {
    #           key: "DocumentAttributeKey", # required
    #           value: { # required
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #       },
    #       user_context: {
    #         token: "Token",
    #         user_id: "PrincipalName",
    #         groups: ["PrincipalName"],
    #         data_source_groups: [
    #           {
    #             group_id: "PrincipalName", # required
    #             data_source_id: "DataSourceId", # required
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.query_suggestions_id #=> String
    #   resp.suggestions #=> Array
    #   resp.suggestions[0].id #=> String
    #   resp.suggestions[0].value.text.text #=> String
    #   resp.suggestions[0].value.text.highlights #=> Array
    #   resp.suggestions[0].value.text.highlights[0].begin_offset #=> Integer
    #   resp.suggestions[0].value.text.highlights[0].end_offset #=> Integer
    #   resp.suggestions[0].source_documents #=> Array
    #   resp.suggestions[0].source_documents[0].document_id #=> String
    #   resp.suggestions[0].source_documents[0].suggestion_attributes #=> Array
    #   resp.suggestions[0].source_documents[0].suggestion_attributes[0] #=> String
    #   resp.suggestions[0].source_documents[0].additional_attributes #=> Array
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].key #=> String
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].value.string_value #=> String
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].value.string_list_value #=> Array
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].value.string_list_value[0] #=> String
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].value.long_value #=> Integer
    #   resp.suggestions[0].source_documents[0].additional_attributes[0].value.date_value #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetQuerySuggestions AWS API Documentation
    #
    # @overload get_query_suggestions(params = {})
    # @param [Hash] params ({})
    def get_query_suggestions(params = {}, options = {})
      req = build_request(:get_query_suggestions, params)
      req.send_request(options)
    end

    # Retrieves search metrics data. The data provides a snapshot of how
    # your users interact with your search application and how effective the
    # application is.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to get search metrics data.
    #
    # @option params [required, String] :interval
    #   The time interval or time window to get search metrics data. The time
    #   interval uses the time zone of your index. You can view data in the
    #   following time windows:
    #
    #   * `THIS_WEEK`: The current week, starting on the Sunday and ending on
    #     the day before the current date.
    #
    #   * `ONE_WEEK_AGO`: The previous week, starting on the Sunday and ending
    #     on the following Saturday.
    #
    #   * `TWO_WEEKS_AGO`: The week before the previous week, starting on the
    #     Sunday and ending on the following Saturday.
    #
    #   * `THIS_MONTH`: The current month, starting on the first day of the
    #     month and ending on the day before the current date.
    #
    #   * `ONE_MONTH_AGO`: The previous month, starting on the first day of
    #     the month and ending on the last day of the month.
    #
    #   * `TWO_MONTHS_AGO`: The month before the previous month, starting on
    #     the first day of the month and ending on last day of the month.
    #
    # @option params [required, String] :metric_type
    #   The metric you want to retrieve. You can specify only one metric per
    #   call.
    #
    #   For more information about the metrics you can view, see [Gaining
    #   insights with search analytics][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of search
    #   metrics data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned data for the metric.
    #
    # @return [Types::GetSnapshotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnapshotsResponse#snap_shot_time_filter #snap_shot_time_filter} => Types::TimeRange
    #   * {Types::GetSnapshotsResponse#snapshots_data_header #snapshots_data_header} => Array&lt;String&gt;
    #   * {Types::GetSnapshotsResponse#snapshots_data #snapshots_data} => Array&lt;Array&lt;String&gt;&gt;
    #   * {Types::GetSnapshotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshots({
    #     index_id: "IndexId", # required
    #     interval: "THIS_MONTH", # required, accepts THIS_MONTH, THIS_WEEK, ONE_WEEK_AGO, TWO_WEEKS_AGO, ONE_MONTH_AGO, TWO_MONTHS_AGO
    #     metric_type: "QUERIES_BY_COUNT", # required, accepts QUERIES_BY_COUNT, QUERIES_BY_ZERO_CLICK_RATE, QUERIES_BY_ZERO_RESULT_RATE, DOCS_BY_CLICK_COUNT, AGG_QUERY_DOC_METRICS, TREND_QUERY_DOC_METRICS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.snap_shot_time_filter.start_time #=> Time
    #   resp.snap_shot_time_filter.end_time #=> Time
    #   resp.snapshots_data_header #=> Array
    #   resp.snapshots_data_header[0] #=> String
    #   resp.snapshots_data #=> Array
    #   resp.snapshots_data[0] #=> Array
    #   resp.snapshots_data[0][0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/GetSnapshots AWS API Documentation
    #
    # @overload get_snapshots(params = {})
    # @param [Hash] params ({})
    def get_snapshots(params = {}, options = {})
      req = build_request(:get_snapshots, params)
      req.send_request(options)
    end

    # Lists one or more access control configurations for an index. This
    # includes user and group access information for your documents. This is
    # useful for user context filtering, where search results are filtered
    # based on the user or their group access to documents.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the access control configuration.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there's more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of access
    #   control configurations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access control configurations to return.
    #
    # @return [Types::ListAccessControlConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessControlConfigurationsResponse#next_token #next_token} => String
    #   * {Types::ListAccessControlConfigurationsResponse#access_control_configurations #access_control_configurations} => Array&lt;Types::AccessControlConfigurationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_control_configurations({
    #     index_id: "IndexId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.access_control_configurations #=> Array
    #   resp.access_control_configurations[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListAccessControlConfigurations AWS API Documentation
    #
    # @overload list_access_control_configurations(params = {})
    # @param [Hash] params ({})
    def list_access_control_configurations(params = {}, options = {})
      req = build_request(:list_access_control_configurations, params)
      req.send_request(options)
    end

    # Gets statistics about synchronizing a data source connector.
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of synchronization jobs to return in the response.
    #   If there are fewer results in the list, this response contains only
    #   the actual results.
    #
    # @option params [Types::TimeRange] :start_time_filter
    #   When specified, the synchronization jobs returned in the list are
    #   limited to jobs between the specified dates.
    #
    # @option params [String] :status_filter
    #   Only returns synchronization jobs with the `Status` field equal to the
    #   specified status.
    #
    # @return [Types::ListDataSourceSyncJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceSyncJobsResponse#history #history} => Array&lt;Types::DataSourceSyncJob&gt;
    #   * {Types::ListDataSourceSyncJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_sync_jobs({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     start_time_filter: {
    #       start_time: Time.now,
    #       end_time: Time.now,
    #     },
    #     status_filter: "FAILED", # accepts FAILED, SUCCEEDED, SYNCING, INCOMPLETE, STOPPING, ABORTED, SYNCING_INDEXING
    #   })
    #
    # @example Response structure
    #
    #   resp.history #=> Array
    #   resp.history[0].execution_id #=> String
    #   resp.history[0].start_time #=> Time
    #   resp.history[0].end_time #=> Time
    #   resp.history[0].status #=> String, one of "FAILED", "SUCCEEDED", "SYNCING", "INCOMPLETE", "STOPPING", "ABORTED", "SYNCING_INDEXING"
    #   resp.history[0].error_message #=> String
    #   resp.history[0].error_code #=> String, one of "InternalError", "InvalidRequest"
    #   resp.history[0].data_source_error_code #=> String
    #   resp.history[0].metrics.documents_added #=> String
    #   resp.history[0].metrics.documents_modified #=> String
    #   resp.history[0].metrics.documents_deleted #=> String
    #   resp.history[0].metrics.documents_failed #=> String
    #   resp.history[0].metrics.documents_scanned #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSourceSyncJobs AWS API Documentation
    #
    # @overload list_data_source_sync_jobs(params = {})
    # @param [Hash] params ({})
    def list_data_source_sync_jobs(params = {}, options = {})
      req = build_request(:list_data_source_sync_jobs, params)
      req.send_request(options)
    end

    # Lists the data source connectors that you have created.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with one or more data source
    #   connectors.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of data
    #   source connectors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data source connectors to return.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#summary_items #summary_items} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].name #=> String
    #   resp.summary_items[0].id #=> String
    #   resp.summary_items[0].type #=> String, one of "S3", "SHAREPOINT", "DATABASE", "SALESFORCE", "ONEDRIVE", "SERVICENOW", "CUSTOM", "CONFLUENCE", "GOOGLEDRIVE", "WEBCRAWLER", "WORKDOCS", "FSX", "SLACK", "BOX", "QUIP", "JIRA", "GITHUB", "ALFRESCO", "TEMPLATE"
    #   resp.summary_items[0].created_at #=> Time
    #   resp.summary_items[0].updated_at #=> Time
    #   resp.summary_items[0].status #=> String, one of "CREATING", "DELETING", "FAILED", "UPDATING", "ACTIVE"
    #   resp.summary_items[0].language_code #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists specific permissions of users and groups with access to your
    # Amazon Kendra experience.
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of users or
    #   groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned users or groups.
    #
    # @return [Types::ListEntityPersonasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntityPersonasResponse#summary_items #summary_items} => Array&lt;Types::PersonasSummary&gt;
    #   * {Types::ListEntityPersonasResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_personas({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].entity_id #=> String
    #   resp.summary_items[0].persona #=> String, one of "OWNER", "VIEWER"
    #   resp.summary_items[0].created_at #=> Time
    #   resp.summary_items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListEntityPersonas AWS API Documentation
    #
    # @overload list_entity_personas(params = {})
    # @param [Hash] params ({})
    def list_entity_personas(params = {}, options = {})
      req = build_request(:list_entity_personas, params)
      req.send_request(options)
    end

    # Lists users or groups in your IAM Identity Center identity source that
    # are granted access to your Amazon Kendra experience. You can create an
    # Amazon Kendra experience such as a search application. For more
    # information on creating a search application experience, see [Building
    # a search experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of users or
    #   groups.
    #
    # @return [Types::ListExperienceEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperienceEntitiesResponse#summary_items #summary_items} => Array&lt;Types::ExperienceEntitiesSummary&gt;
    #   * {Types::ListExperienceEntitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experience_entities({
    #     id: "ExperienceId", # required
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].entity_id #=> String
    #   resp.summary_items[0].entity_type #=> String, one of "USER", "GROUP"
    #   resp.summary_items[0].display_data.user_name #=> String
    #   resp.summary_items[0].display_data.group_name #=> String
    #   resp.summary_items[0].display_data.identified_user_name #=> String
    #   resp.summary_items[0].display_data.first_name #=> String
    #   resp.summary_items[0].display_data.last_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperienceEntities AWS API Documentation
    #
    # @overload list_experience_entities(params = {})
    # @param [Hash] params ({})
    def list_experience_entities(params = {}, options = {})
      req = build_request(:list_experience_entities, params)
      req.send_request(options)
    end

    # Lists one or more Amazon Kendra experiences. You can create an Amazon
    # Kendra experience such as a search application. For more information
    # on creating a search application experience, see [Building a search
    # experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of Amazon
    #   Kendra experiences.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned Amazon Kendra experiences.
    #
    # @return [Types::ListExperiencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperiencesResponse#summary_items #summary_items} => Array&lt;Types::ExperiencesSummary&gt;
    #   * {Types::ListExperiencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiences({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_items #=> Array
    #   resp.summary_items[0].name #=> String
    #   resp.summary_items[0].id #=> String
    #   resp.summary_items[0].created_at #=> Time
    #   resp.summary_items[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.summary_items[0].endpoints #=> Array
    #   resp.summary_items[0].endpoints[0].endpoint_type #=> String, one of "HOME"
    #   resp.summary_items[0].endpoints[0].endpoint #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListExperiences AWS API Documentation
    #
    # @overload list_experiences(params = {})
    # @param [Hash] params ({})
    def list_experiences(params = {}, options = {})
      req = build_request(:list_experiences, params)
      req.send_request(options)
    end

    # Gets a list of FAQ lists associated with an index.
    #
    # @option params [required, String] :index_id
    #   The index that contains the FAQ lists.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of FAQs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of FAQs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #
    # @return [Types::ListFaqsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFaqsResponse#next_token #next_token} => String
    #   * {Types::ListFaqsResponse#faq_summary_items #faq_summary_items} => Array&lt;Types::FaqSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_faqs({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.faq_summary_items #=> Array
    #   resp.faq_summary_items[0].id #=> String
    #   resp.faq_summary_items[0].name #=> String
    #   resp.faq_summary_items[0].status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.faq_summary_items[0].created_at #=> Time
    #   resp.faq_summary_items[0].updated_at #=> Time
    #   resp.faq_summary_items[0].file_format #=> String, one of "CSV", "CSV_WITH_HEADER", "JSON"
    #   resp.faq_summary_items[0].language_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListFaqs AWS API Documentation
    #
    # @overload list_faqs(params = {})
    # @param [Hash] params ({})
    def list_faqs(params = {}, options = {})
      req = build_request(:list_faqs, params)
      req.send_request(options)
    end

    # Lists all your sets of featured results for a given index. Features
    # results are placed above all other results for certain queries. If
    # there's an exact match of a query, then one or more specific
    # documents are featured in the search results.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used for featuring results.
    #
    # @option params [String] :next_token
    #   If the response is truncated, Amazon Kendra returns a pagination token
    #   in the response. You can use this pagination token to retrieve the
    #   next set of featured results sets.
    #
    # @option params [Integer] :max_results
    #   The maximum number of featured results sets to return.
    #
    # @return [Types::ListFeaturedResultsSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFeaturedResultsSetsResponse#featured_results_set_summary_items #featured_results_set_summary_items} => Array&lt;Types::FeaturedResultsSetSummary&gt;
    #   * {Types::ListFeaturedResultsSetsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_featured_results_sets({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.featured_results_set_summary_items #=> Array
    #   resp.featured_results_set_summary_items[0].featured_results_set_id #=> String
    #   resp.featured_results_set_summary_items[0].featured_results_set_name #=> String
    #   resp.featured_results_set_summary_items[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.featured_results_set_summary_items[0].last_updated_timestamp #=> Integer
    #   resp.featured_results_set_summary_items[0].creation_timestamp #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListFeaturedResultsSets AWS API Documentation
    #
    # @overload list_featured_results_sets(params = {})
    # @param [Hash] params ({})
    def list_featured_results_sets(params = {}, options = {})
      req = build_request(:list_featured_results_sets, params)
      req.send_request(options)
    end

    # Provides a list of groups that are mapped to users before a given
    # ordering or timestamp identifier.
    #
    # `ListGroupsOlderThanOrderingId` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for getting a list of groups mapped to
    #   users before a given ordering or timestamp identifier.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source for getting a list of groups mapped
    #   to users before a given ordering timestamp identifier.
    #
    # @option params [required, Integer] :ordering_id
    #   The timestamp identifier used for the latest `PUT` or `DELETE` action
    #   for mapping users to their groups.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of groups
    #   that are mapped to users before a given ordering or timestamp
    #   identifier.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned groups that are mapped to users before
    #   a given ordering or timestamp identifier.
    #
    # @return [Types::ListGroupsOlderThanOrderingIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsOlderThanOrderingIdResponse#groups_summaries #groups_summaries} => Array&lt;Types::GroupSummary&gt;
    #   * {Types::ListGroupsOlderThanOrderingIdResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups_older_than_ordering_id({
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     ordering_id: 1, # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups_summaries #=> Array
    #   resp.groups_summaries[0].group_id #=> String
    #   resp.groups_summaries[0].ordering_id #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListGroupsOlderThanOrderingId AWS API Documentation
    #
    # @overload list_groups_older_than_ordering_id(params = {})
    # @param [Hash] params ({})
    def list_groups_older_than_ordering_id(params = {}, options = {})
      req = build_request(:list_groups_older_than_ordering_id, params)
      req.send_request(options)
    end

    # Lists the Amazon Kendra indexes that you created.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of indexes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of indices to return.
    #
    # @return [Types::ListIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndicesResponse#index_configuration_summary_items #index_configuration_summary_items} => Array&lt;Types::IndexConfigurationSummary&gt;
    #   * {Types::ListIndicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.index_configuration_summary_items #=> Array
    #   resp.index_configuration_summary_items[0].name #=> String
    #   resp.index_configuration_summary_items[0].id #=> String
    #   resp.index_configuration_summary_items[0].edition #=> String, one of "DEVELOPER_EDITION", "ENTERPRISE_EDITION"
    #   resp.index_configuration_summary_items[0].created_at #=> Time
    #   resp.index_configuration_summary_items[0].updated_at #=> Time
    #   resp.index_configuration_summary_items[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "SYSTEM_UPDATING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListIndices AWS API Documentation
    #
    # @overload list_indices(params = {})
    # @param [Hash] params ({})
    def list_indices(params = {}, options = {})
      req = build_request(:list_indices, params)
      req.send_request(options)
    end

    # Lists the block lists used for query suggestions for an index.
    #
    # For information on the current quota limits for block lists, see
    # [Quotas for Amazon Kendra][1].
    #
    # `ListQuerySuggestionsBlockLists` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for a list of all block lists that exist
    #   for that index.
    #
    #   For information on the current quota limits for block lists, see
    #   [Quotas for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of block
    #   lists (`BlockListSummaryItems`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of block lists to return.
    #
    # @return [Types::ListQuerySuggestionsBlockListsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuerySuggestionsBlockListsResponse#block_list_summary_items #block_list_summary_items} => Array&lt;Types::QuerySuggestionsBlockListSummary&gt;
    #   * {Types::ListQuerySuggestionsBlockListsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_suggestions_block_lists({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.block_list_summary_items #=> Array
    #   resp.block_list_summary_items[0].id #=> String
    #   resp.block_list_summary_items[0].name #=> String
    #   resp.block_list_summary_items[0].status #=> String, one of "ACTIVE", "CREATING", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"
    #   resp.block_list_summary_items[0].created_at #=> Time
    #   resp.block_list_summary_items[0].updated_at #=> Time
    #   resp.block_list_summary_items[0].item_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListQuerySuggestionsBlockLists AWS API Documentation
    #
    # @overload list_query_suggestions_block_lists(params = {})
    # @param [Hash] params ({})
    def list_query_suggestions_block_lists(params = {}, options = {})
      req = build_request(:list_query_suggestions_block_lists, params)
      req.send_request(options)
    end

    # Gets a list of tags associated with a specified resource. Indexes,
    # FAQs, and data sources can have tags associated with them.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   get a list of tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the thesauri for an index.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index with one or more thesauri.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there is more data to
    #   retrieve), Amazon Kendra returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of thesauri
    #   (`ThesaurusSummaryItems`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of thesauri to return.
    #
    # @return [Types::ListThesauriResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThesauriResponse#next_token #next_token} => String
    #   * {Types::ListThesauriResponse#thesaurus_summary_items #thesaurus_summary_items} => Array&lt;Types::ThesaurusSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thesauri({
    #     index_id: "IndexId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.thesaurus_summary_items #=> Array
    #   resp.thesaurus_summary_items[0].id #=> String
    #   resp.thesaurus_summary_items[0].name #=> String
    #   resp.thesaurus_summary_items[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "UPDATING", "ACTIVE_BUT_UPDATE_FAILED", "FAILED"
    #   resp.thesaurus_summary_items[0].created_at #=> Time
    #   resp.thesaurus_summary_items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/ListThesauri AWS API Documentation
    #
    # @overload list_thesauri(params = {})
    # @param [Hash] params ({})
    def list_thesauri(params = {}, options = {})
      req = build_request(:list_thesauri, params)
      req.send_request(options)
    end

    # Maps users to their groups so that you only need to provide the user
    # ID when you issue the query.
    #
    # You can also map sub groups to groups. For example, the group
    # "Company Intellectual Property Teams" includes sub groups
    # "Research" and "Engineering". These sub groups include their own
    # list of users or people who work in these teams. Only users who work
    # in research and engineering, and therefore belong in the intellectual
    # property group, can see top-secret company documents in their search
    # results.
    #
    # This is useful for user context filtering, where search results are
    # filtered based on the user or their group access to documents. For
    # more information, see [Filtering on user context][1].
    #
    # If more than five `PUT` actions for a group are currently processing,
    # a validation exception is thrown.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index you want to map users to their groups.
    #
    # @option params [String] :data_source_id
    #   The identifier of the data source you want to map users to their
    #   groups.
    #
    #   This is useful if a group is tied to multiple data sources, but you
    #   only want the group to access documents of a certain data source. For
    #   example, the groups "Research", "Engineering", and "Sales and
    #   Marketing" are all tied to the company's documents stored in the
    #   data sources Confluence and Salesforce. However, "Sales and
    #   Marketing" team only needs access to customer-related documents
    #   stored in Salesforce.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group you want to map its users to.
    #
    # @option params [required, Types::GroupMembers] :group_members
    #   The list that contains your users or sub groups that belong the same
    #   group.
    #
    #   For example, the group "Company" includes the user "CEO" and the
    #   sub groups "Research", "Engineering", and "Sales and Marketing".
    #
    #   If you have more than 1000 users and/or sub groups for a single group,
    #   you need to provide the path to the S3 file that lists your users and
    #   sub groups for a group. Your sub groups can contain more than 1000
    #   users, but the list of sub groups that belong to a group (and/or
    #   users) must be no more than 1000.
    #
    # @option params [Integer] :ordering_id
    #   The timestamp identifier you specify to ensure Amazon Kendra does not
    #   override the latest `PUT` action with previous actions. The highest
    #   number ID, which is the ordering ID, is the latest action you want to
    #   process and apply on top of other actions with lower number IDs. This
    #   prevents previous actions with lower number IDs from possibly
    #   overriding the latest action.
    #
    #   The ordering ID can be the Unix time of the last update you made to a
    #   group members list. You would then provide this list when calling
    #   `PutPrincipalMapping`. This ensures your `PUT` action for that updated
    #   group with the latest members list doesn't get overwritten by earlier
    #   `PUT` actions for the same group which are yet to be processed.
    #
    #   The default ordering ID is the current Unix time in milliseconds that
    #   the action was received by Amazon Kendra.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role that has access to the S3
    #   file that contains your list of users or sub groups that belong to a
    #   group.
    #
    #   For more information, see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html#iam-roles-ds
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_principal_mapping({
    #     index_id: "IndexId", # required
    #     data_source_id: "DataSourceId",
    #     group_id: "GroupId", # required
    #     group_members: { # required
    #       member_groups: [
    #         {
    #           group_id: "GroupId", # required
    #           data_source_id: "DataSourceId",
    #         },
    #       ],
    #       member_users: [
    #         {
    #           user_id: "UserId", # required
    #         },
    #       ],
    #       s3_pathfor_group_members: {
    #         bucket: "S3BucketName", # required
    #         key: "S3ObjectKey", # required
    #       },
    #     },
    #     ordering_id: 1,
    #     role_arn: "RoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/PutPrincipalMapping AWS API Documentation
    #
    # @overload put_principal_mapping(params = {})
    # @param [Hash] params ({})
    def put_principal_mapping(params = {}, options = {})
      req = build_request(:put_principal_mapping, params)
      req.send_request(options)
    end

    # Searches an index given an input query.
    #
    # You can configure boosting or relevance tuning at the query level to
    # override boosting at the index level, filter based on document
    # fields/attributes and faceted search, and filter based on the user or
    # their group access to documents. You can also include certain fields
    # in the response that might provide useful additional information.
    #
    # A query response contains three types of results.
    #
    # * Relevant suggested answers. The answers can be either a text excerpt
    #   or table excerpt. The answer can be highlighted in the excerpt.
    #
    # * Matching FAQs or questions-answer from your FAQ file.
    #
    # * Relevant documents. This result type includes an excerpt of the
    #   document with the document title. The searched terms can be
    #   highlighted in the excerpt.
    #
    # You can specify that the query return only one type of result using
    # the `QueryResultTypeFilter` parameter. Each query returns the 100 most
    # relevant results. If you filter result type to only question-answers,
    # a maximum of four results are returned. If you filter result type to
    # only answers, a maximum of three results are returned.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the search.
    #
    # @option params [String] :query_text
    #   The input query text for the search. Amazon Kendra truncates queries
    #   at 30 token words, which excludes punctuation and stop words.
    #   Truncation still applies if you use Boolean or more advanced, complex
    #   queries.
    #
    # @option params [Types::AttributeFilter] :attribute_filter
    #   Filters search results by document fields/attributes. You can only
    #   provide one attribute filter; however, the `AndAllFilters`,
    #   `NotFilter`, and `OrAllFilters` parameters contain a list of other
    #   filters.
    #
    #   The `AttributeFilter` parameter means you can create a set of
    #   filtering rules that a document must satisfy to be included in the
    #   query results.
    #
    # @option params [Array<Types::Facet>] :facets
    #   An array of documents fields/attributes for faceted search. Amazon
    #   Kendra returns a count for each field key specified. This helps your
    #   users narrow their search.
    #
    # @option params [Array<String>] :requested_document_attributes
    #   An array of document fields/attributes to include in the response. You
    #   can limit the response to include certain document fields. By default,
    #   all document attributes are included in the response.
    #
    # @option params [String] :query_result_type_filter
    #   Sets the type of query result or response. Only results for the
    #   specified type are returned.
    #
    # @option params [Array<Types::DocumentRelevanceConfiguration>] :document_relevance_override_configurations
    #   Overrides relevance tuning configurations of fields/attributes set at
    #   the index level.
    #
    #   If you use this API to override the relevance tuning configured at the
    #   index level, but there is no relevance tuning configured at the index
    #   level, then Amazon Kendra does not apply any relevance tuning.
    #
    #   If there is relevance tuning configured for fields at the index level,
    #   and you use this API to override only some of these fields, then for
    #   the fields you did not override, the importance is set to 1.
    #
    # @option params [Integer] :page_number
    #   Query results are returned in pages the size of the `PageSize`
    #   parameter. By default, Amazon Kendra returns the first page of
    #   results. Use this parameter to get result pages after the first one.
    #
    # @option params [Integer] :page_size
    #   Sets the number of results that are returned in each page of results.
    #   The default page size is 10. The maximum number of results returned is
    #   100. If you ask for more than 100 results, only 100 are returned.
    #
    # @option params [Types::SortingConfiguration] :sorting_configuration
    #   Provides information that determines how the results of the query are
    #   sorted. You can set the field that Amazon Kendra should sort the
    #   results on, and specify whether the results should be sorted in
    #   ascending or descending order. In the case of ties in sorting the
    #   results, the results are sorted by relevance.
    #
    #   If you don't provide sorting configuration, the results are sorted by
    #   the relevance that Amazon Kendra determines for the result.
    #
    # @option params [Types::UserContext] :user_context
    #   The user context token or user and group information.
    #
    # @option params [String] :visitor_id
    #   Provides an identifier for a specific user. The `VisitorId` should be
    #   a unique identifier, such as a GUID. Don't use personally
    #   identifiable information, such as the user's email address, as the
    #   `VisitorId`.
    #
    # @option params [Types::SpellCorrectionConfiguration] :spell_correction_configuration
    #   Enables suggested spell corrections for queries.
    #
    # @return [Types::QueryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryResult#query_id #query_id} => String
    #   * {Types::QueryResult#result_items #result_items} => Array&lt;Types::QueryResultItem&gt;
    #   * {Types::QueryResult#facet_results #facet_results} => Array&lt;Types::FacetResult&gt;
    #   * {Types::QueryResult#total_number_of_results #total_number_of_results} => Integer
    #   * {Types::QueryResult#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::QueryResult#spell_corrected_queries #spell_corrected_queries} => Array&lt;Types::SpellCorrectedQuery&gt;
    #   * {Types::QueryResult#featured_results_items #featured_results_items} => Array&lt;Types::FeaturedResultsItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query({
    #     index_id: "IndexId", # required
    #     query_text: "QueryText",
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_all: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_any: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #     },
    #     facets: [
    #       {
    #         document_attribute_key: "DocumentAttributeKey",
    #         facets: {
    #           # recursive FacetList
    #         },
    #         max_results: 1,
    #       },
    #     ],
    #     requested_document_attributes: ["DocumentAttributeKey"],
    #     query_result_type_filter: "DOCUMENT", # accepts DOCUMENT, QUESTION_ANSWER, ANSWER
    #     document_relevance_override_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         relevance: { # required
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #       },
    #     ],
    #     page_number: 1,
    #     page_size: 1,
    #     sorting_configuration: {
    #       document_attribute_key: "DocumentAttributeKey", # required
    #       sort_order: "DESC", # required, accepts DESC, ASC
    #     },
    #     user_context: {
    #       token: "Token",
    #       user_id: "PrincipalName",
    #       groups: ["PrincipalName"],
    #       data_source_groups: [
    #         {
    #           group_id: "PrincipalName", # required
    #           data_source_id: "DataSourceId", # required
    #         },
    #       ],
    #     },
    #     visitor_id: "VisitorId",
    #     spell_correction_configuration: {
    #       include_query_spell_check_suggestions: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].id #=> String
    #   resp.result_items[0].type #=> String, one of "DOCUMENT", "QUESTION_ANSWER", "ANSWER"
    #   resp.result_items[0].format #=> String, one of "TABLE", "TEXT"
    #   resp.result_items[0].additional_attributes #=> Array
    #   resp.result_items[0].additional_attributes[0].key #=> String
    #   resp.result_items[0].additional_attributes[0].value_type #=> String, one of "TEXT_WITH_HIGHLIGHTS_VALUE"
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.text #=> String
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights #=> Array
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.result_items[0].document_id #=> String
    #   resp.result_items[0].document_title.text #=> String
    #   resp.result_items[0].document_title.highlights #=> Array
    #   resp.result_items[0].document_title.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].document_title.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].document_title.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].document_title.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.result_items[0].document_excerpt.text #=> String
    #   resp.result_items[0].document_excerpt.highlights #=> Array
    #   resp.result_items[0].document_excerpt.highlights[0].begin_offset #=> Integer
    #   resp.result_items[0].document_excerpt.highlights[0].end_offset #=> Integer
    #   resp.result_items[0].document_excerpt.highlights[0].top_answer #=> Boolean
    #   resp.result_items[0].document_excerpt.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.result_items[0].document_uri #=> String
    #   resp.result_items[0].document_attributes #=> Array
    #   resp.result_items[0].document_attributes[0].key #=> String
    #   resp.result_items[0].document_attributes[0].value.string_value #=> String
    #   resp.result_items[0].document_attributes[0].value.string_list_value #=> Array
    #   resp.result_items[0].document_attributes[0].value.string_list_value[0] #=> String
    #   resp.result_items[0].document_attributes[0].value.long_value #=> Integer
    #   resp.result_items[0].document_attributes[0].value.date_value #=> Time
    #   resp.result_items[0].score_attributes.score_confidence #=> String, one of "VERY_HIGH", "HIGH", "MEDIUM", "LOW", "NOT_AVAILABLE"
    #   resp.result_items[0].feedback_token #=> String
    #   resp.result_items[0].table_excerpt.rows #=> Array
    #   resp.result_items[0].table_excerpt.rows[0].cells #=> Array
    #   resp.result_items[0].table_excerpt.rows[0].cells[0].value #=> String
    #   resp.result_items[0].table_excerpt.rows[0].cells[0].top_answer #=> Boolean
    #   resp.result_items[0].table_excerpt.rows[0].cells[0].highlighted #=> Boolean
    #   resp.result_items[0].table_excerpt.rows[0].cells[0].header #=> Boolean
    #   resp.result_items[0].table_excerpt.total_number_of_rows #=> Integer
    #   resp.facet_results #=> Array
    #   resp.facet_results[0].document_attribute_key #=> String
    #   resp.facet_results[0].document_attribute_value_type #=> String, one of "STRING_VALUE", "STRING_LIST_VALUE", "LONG_VALUE", "DATE_VALUE"
    #   resp.facet_results[0].document_attribute_value_count_pairs #=> Array
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_value #=> String
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_list_value #=> Array
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.string_list_value[0] #=> String
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.long_value #=> Integer
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].document_attribute_value.date_value #=> Time
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].count #=> Integer
    #   resp.facet_results[0].document_attribute_value_count_pairs[0].facet_results #=> Types::FacetResultList
    #   resp.total_number_of_results #=> Integer
    #   resp.warnings #=> Array
    #   resp.warnings[0].message #=> String
    #   resp.warnings[0].code #=> String, one of "QUERY_LANGUAGE_INVALID_SYNTAX"
    #   resp.spell_corrected_queries #=> Array
    #   resp.spell_corrected_queries[0].suggested_query_text #=> String
    #   resp.spell_corrected_queries[0].corrections #=> Array
    #   resp.spell_corrected_queries[0].corrections[0].begin_offset #=> Integer
    #   resp.spell_corrected_queries[0].corrections[0].end_offset #=> Integer
    #   resp.spell_corrected_queries[0].corrections[0].term #=> String
    #   resp.spell_corrected_queries[0].corrections[0].corrected_term #=> String
    #   resp.featured_results_items #=> Array
    #   resp.featured_results_items[0].id #=> String
    #   resp.featured_results_items[0].type #=> String, one of "DOCUMENT", "QUESTION_ANSWER", "ANSWER"
    #   resp.featured_results_items[0].additional_attributes #=> Array
    #   resp.featured_results_items[0].additional_attributes[0].key #=> String
    #   resp.featured_results_items[0].additional_attributes[0].value_type #=> String, one of "TEXT_WITH_HIGHLIGHTS_VALUE"
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.text #=> String
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.highlights #=> Array
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].begin_offset #=> Integer
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].end_offset #=> Integer
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].top_answer #=> Boolean
    #   resp.featured_results_items[0].additional_attributes[0].value.text_with_highlights_value.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.featured_results_items[0].document_id #=> String
    #   resp.featured_results_items[0].document_title.text #=> String
    #   resp.featured_results_items[0].document_title.highlights #=> Array
    #   resp.featured_results_items[0].document_title.highlights[0].begin_offset #=> Integer
    #   resp.featured_results_items[0].document_title.highlights[0].end_offset #=> Integer
    #   resp.featured_results_items[0].document_title.highlights[0].top_answer #=> Boolean
    #   resp.featured_results_items[0].document_title.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.featured_results_items[0].document_excerpt.text #=> String
    #   resp.featured_results_items[0].document_excerpt.highlights #=> Array
    #   resp.featured_results_items[0].document_excerpt.highlights[0].begin_offset #=> Integer
    #   resp.featured_results_items[0].document_excerpt.highlights[0].end_offset #=> Integer
    #   resp.featured_results_items[0].document_excerpt.highlights[0].top_answer #=> Boolean
    #   resp.featured_results_items[0].document_excerpt.highlights[0].type #=> String, one of "STANDARD", "THESAURUS_SYNONYM"
    #   resp.featured_results_items[0].document_uri #=> String
    #   resp.featured_results_items[0].document_attributes #=> Array
    #   resp.featured_results_items[0].document_attributes[0].key #=> String
    #   resp.featured_results_items[0].document_attributes[0].value.string_value #=> String
    #   resp.featured_results_items[0].document_attributes[0].value.string_list_value #=> Array
    #   resp.featured_results_items[0].document_attributes[0].value.string_list_value[0] #=> String
    #   resp.featured_results_items[0].document_attributes[0].value.long_value #=> Integer
    #   resp.featured_results_items[0].document_attributes[0].value.date_value #=> Time
    #   resp.featured_results_items[0].feedback_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Query AWS API Documentation
    #
    # @overload query(params = {})
    # @param [Hash] params ({})
    def query(params = {}, options = {})
      req = build_request(:query, params)
      req.send_request(options)
    end

    # Retrieves relevant passages or text excerpts given an input query.
    #
    # This API is similar to the [Query][1] API. However, by default, the
    # `Query` API only returns excerpt passages of up to 100 token words.
    # With the `Retrieve` API, you can retrieve longer passages of up to 200
    # token words and up to 100 semantically relevant passages. This
    # doesn't include question-answer or FAQ type responses from your
    # index. The passages are text excerpts that can be semantically
    # extracted from multiple documents and multiple parts of the same
    # document. If in extreme cases your documents produce no relevant
    # passages using the `Retrieve` API, you can alternatively use the
    # `Query` API.
    #
    # You can also do the following:
    #
    # * Override boosting at the index level
    #
    # * Filter based on document fields or attributes
    #
    # * Filter based on the user or their group access to documents
    #
    # You can also include certain fields in the response that might provide
    # useful additional information.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index to retrieve relevant passages for the
    #   search.
    #
    # @option params [required, String] :query_text
    #   The input query text to retrieve relevant passages for the search.
    #   Amazon Kendra truncates queries at 30 token words, which excludes
    #   punctuation and stop words. Truncation still applies if you use
    #   Boolean or more advanced, complex queries.
    #
    # @option params [Types::AttributeFilter] :attribute_filter
    #   Filters search results by document fields/attributes. You can only
    #   provide one attribute filter; however, the `AndAllFilters`,
    #   `NotFilter`, and `OrAllFilters` parameters contain a list of other
    #   filters.
    #
    #   The `AttributeFilter` parameter means you can create a set of
    #   filtering rules that a document must satisfy to be included in the
    #   query results.
    #
    # @option params [Array<String>] :requested_document_attributes
    #   A list of document fields/attributes to include in the response. You
    #   can limit the response to include certain document fields. By default,
    #   all document fields are included in the response.
    #
    # @option params [Array<Types::DocumentRelevanceConfiguration>] :document_relevance_override_configurations
    #   Overrides relevance tuning configurations of fields/attributes set at
    #   the index level.
    #
    #   If you use this API to override the relevance tuning configured at the
    #   index level, but there is no relevance tuning configured at the index
    #   level, then Amazon Kendra does not apply any relevance tuning.
    #
    #   If there is relevance tuning configured for fields at the index level,
    #   and you use this API to override only some of these fields, then for
    #   the fields you did not override, the importance is set to 1.
    #
    # @option params [Integer] :page_number
    #   Retrieved relevant passages are returned in pages the size of the
    #   `PageSize` parameter. By default, Amazon Kendra returns the first page
    #   of results. Use this parameter to get result pages after the first
    #   one.
    #
    # @option params [Integer] :page_size
    #   Sets the number of retrieved relevant passages that are returned in
    #   each page of results. The default page size is 10. The maximum number
    #   of results returned is 100. If you ask for more than 100 results, only
    #   100 are returned.
    #
    # @option params [Types::UserContext] :user_context
    #   The user context token or user and group information.
    #
    # @return [Types::RetrieveResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveResult#query_id #query_id} => String
    #   * {Types::RetrieveResult#result_items #result_items} => Array&lt;Types::RetrieveResultItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve({
    #     index_id: "IndexId", # required
    #     query_text: "QueryText", # required
    #     attribute_filter: {
    #       and_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       or_all_filters: [
    #         {
    #           # recursive AttributeFilter
    #         },
    #       ],
    #       not_filter: {
    #         # recursive AttributeFilter
    #       },
    #       equals_to: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_all: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       contains_any: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       greater_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #       less_than_or_equals: {
    #         key: "DocumentAttributeKey", # required
    #         value: { # required
    #           string_value: "DocumentAttributeStringValue",
    #           string_list_value: ["String"],
    #           long_value: 1,
    #           date_value: Time.now,
    #         },
    #       },
    #     },
    #     requested_document_attributes: ["DocumentAttributeKey"],
    #     document_relevance_override_configurations: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         relevance: { # required
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #       },
    #     ],
    #     page_number: 1,
    #     page_size: 1,
    #     user_context: {
    #       token: "Token",
    #       user_id: "PrincipalName",
    #       groups: ["PrincipalName"],
    #       data_source_groups: [
    #         {
    #           group_id: "PrincipalName", # required
    #           data_source_id: "DataSourceId", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.result_items #=> Array
    #   resp.result_items[0].id #=> String
    #   resp.result_items[0].document_id #=> String
    #   resp.result_items[0].document_title #=> String
    #   resp.result_items[0].content #=> String
    #   resp.result_items[0].document_uri #=> String
    #   resp.result_items[0].document_attributes #=> Array
    #   resp.result_items[0].document_attributes[0].key #=> String
    #   resp.result_items[0].document_attributes[0].value.string_value #=> String
    #   resp.result_items[0].document_attributes[0].value.string_list_value #=> Array
    #   resp.result_items[0].document_attributes[0].value.string_list_value[0] #=> String
    #   resp.result_items[0].document_attributes[0].value.long_value #=> Integer
    #   resp.result_items[0].document_attributes[0].value.date_value #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/Retrieve AWS API Documentation
    #
    # @overload retrieve(params = {})
    # @param [Hash] params ({})
    def retrieve(params = {}, options = {})
      req = build_request(:retrieve, params)
      req.send_request(options)
    end

    # Starts a synchronization job for a data source connector. If a
    # synchronization job is already in progress, Amazon Kendra returns a
    # `ResourceInUseException` exception.
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector to synchronize.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @return [Types::StartDataSourceSyncJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataSourceSyncJobResponse#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_sync_job({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StartDataSourceSyncJob AWS API Documentation
    #
    # @overload start_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def start_data_source_sync_job(params = {}, options = {})
      req = build_request(:start_data_source_sync_job, params)
      req.send_request(options)
    end

    # Stops a synchronization job that is currently running. You can't stop
    # a scheduled synchronization job.
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector for which to stop the
    #   synchronization jobs.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_source_sync_job({
    #     id: "DataSourceId", # required
    #     index_id: "IndexId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/StopDataSourceSyncJob AWS API Documentation
    #
    # @overload stop_data_source_sync_job(params = {})
    # @param [Hash] params ({})
    def stop_data_source_sync_job(params = {}, options = {})
      req = build_request(:stop_data_source_sync_job, params)
      req.send_request(options)
    end

    # Enables you to provide feedback to Amazon Kendra to improve the
    # performance of your index.
    #
    # `SubmitFeedback` is currently not supported in the Amazon Web Services
    # GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index that was queried.
    #
    # @option params [required, String] :query_id
    #   The identifier of the specific query for which you are submitting
    #   feedback. The query ID is returned in the response to the `Query` API.
    #
    # @option params [Array<Types::ClickFeedback>] :click_feedback_items
    #   Tells Amazon Kendra that a particular search result link was chosen by
    #   the user.
    #
    # @option params [Array<Types::RelevanceFeedback>] :relevance_feedback_items
    #   Provides Amazon Kendra with relevant or not relevant feedback for
    #   whether a particular item was relevant to the search.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_feedback({
    #     index_id: "IndexId", # required
    #     query_id: "QueryId", # required
    #     click_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         click_time: Time.now, # required
    #       },
    #     ],
    #     relevance_feedback_items: [
    #       {
    #         result_id: "ResultId", # required
    #         relevance_value: "RELEVANT", # required, accepts RELEVANT, NOT_RELEVANT
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/SubmitFeedback AWS API Documentation
    #
    # @overload submit_feedback(params = {})
    # @param [Hash] params ({})
    def submit_feedback(params = {}, options = {})
      req = build_request(:submit_feedback, params)
      req.send_request(options)
    end

    # Adds the specified tag to the specified index, FAQ, or data source
    # resource. If the tag already exists, the existing value is replaced
    # with the new value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tag keys to add to the index, FAQ, or data source. If a tag
    #   already exists, the existing value is replaced with the new value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an index, FAQ, or a data source.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the index, FAQ, or data source to
    #   remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the index, FAQ, or data source. If a
    #   tag key does not exist on the resource, it is ignored.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an access control configuration for your documents in an
    # index. This includes user and group access information for your
    # documents. This is useful for user context filtering, where search
    # results are filtered based on the user or their group access to
    # documents.
    #
    # You can update an access control configuration you created without
    # indexing all of your documents again. For example, your index contains
    # top-secret company documents that only certain employees or users
    # should access. You created an 'allow' access control configuration
    # for one user who recently joined the 'top-secret' team, switching
    # from a team with 'deny' access to top-secret documents. However, the
    # user suddenly returns to their previous team and should no longer have
    # access to top secret documents. You can update the access control
    # configuration to re-configure access control for your documents as
    # circumstances change.
    #
    # You call the [BatchPutDocument][1] API to apply the updated access
    # control configuration, with the `AccessControlConfigurationId`
    # included in the [Document][2] object. If you use an S3 bucket as a
    # data source, you synchronize your data source to apply the
    # `AccessControlConfigurationId` in the `.metadata.json` file. Amazon
    # Kendra currently only supports access control configuration for S3
    # data sources and documents indexed using the `BatchPutDocument` API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html
    # [2]: https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for an access control configuration.
    #
    # @option params [required, String] :id
    #   The identifier of the access control configuration you want to update.
    #
    # @option params [String] :name
    #   A new name for the access control configuration.
    #
    # @option params [String] :description
    #   A new description for the access control configuration.
    #
    # @option params [Array<Types::Principal>] :access_control_list
    #   Information you want to update on principals (users and/or groups) and
    #   which documents they should have access to. This is useful for user
    #   context filtering, where search results are filtered based on the user
    #   or their group access to documents.
    #
    # @option params [Array<Types::HierarchicalPrincipal>] :hierarchical_access_control_list
    #   The updated list of [principal][1] lists that define the hierarchy for
    #   which documents users should have access to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_control_configuration({
    #     index_id: "IndexId", # required
    #     id: "AccessControlConfigurationId", # required
    #     name: "AccessControlConfigurationName",
    #     description: "Description",
    #     access_control_list: [
    #       {
    #         name: "PrincipalName", # required
    #         type: "USER", # required, accepts USER, GROUP
    #         access: "ALLOW", # required, accepts ALLOW, DENY
    #         data_source_id: "DataSourceId",
    #       },
    #     ],
    #     hierarchical_access_control_list: [
    #       {
    #         principal_list: [ # required
    #           {
    #             name: "PrincipalName", # required
    #             type: "USER", # required, accepts USER, GROUP
    #             access: "ALLOW", # required, accepts ALLOW, DENY
    #             data_source_id: "DataSourceId",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateAccessControlConfiguration AWS API Documentation
    #
    # @overload update_access_control_configuration(params = {})
    # @param [Hash] params ({})
    def update_access_control_configuration(params = {}, options = {})
      req = build_request(:update_access_control_configuration, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Kendra data source connector.
    #
    # @option params [required, String] :id
    #   The identifier of the data source connector you want to update.
    #
    # @option params [String] :name
    #   A new name for the data source connector.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used with the data source connector.
    #
    # @option params [Types::DataSourceConfiguration] :configuration
    #   Configuration information you want to update for the data source
    #   connector.
    #
    # @option params [Types::DataSourceVpcConfiguration] :vpc_configuration
    #   Configuration information for an Amazon Virtual Private Cloud to
    #   connect to your data source. For more information, see [Configuring a
    #   VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html
    #
    # @option params [String] :description
    #   A new description for the data source connector.
    #
    # @option params [String] :schedule
    #   The sync schedule you want to update for the data source connector.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access the
    #   data source and required resources. For more information, see [IAM
    #   roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [String] :language_code
    #   The code for a language you want to update for the data source
    #   connector. This allows you to support a language for all documents
    #   when updating the data source. English is supported by default. For
    #   more information on supported languages, including their codes, see
    #   [Adding documents in languages other than English][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html
    #
    # @option params [Types::CustomDocumentEnrichmentConfiguration] :custom_document_enrichment_configuration
    #   Configuration information you want to update for altering document
    #   metadata and content during the document ingestion process.
    #
    #   For more information on how to create, modify and delete document
    #   metadata, or make other content alterations when you ingest documents
    #   into Amazon Kendra, see [Customizing document metadata during the
    #   ingestion process][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     id: "DataSourceId", # required
    #     name: "DataSourceName",
    #     index_id: "IndexId", # required
    #     configuration: {
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         inclusion_prefixes: ["DataSourceInclusionsExclusionsStringsMember"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         documents_metadata_configuration: {
    #           s3_prefix: "S3ObjectKey",
    #         },
    #         access_control_list_configuration: {
    #           key_path: "S3ObjectKey",
    #         },
    #       },
    #       share_point_configuration: {
    #         share_point_version: "SHAREPOINT_2013", # required, accepts SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE, SHAREPOINT_2019
    #         urls: ["Url"], # required
    #         secret_arn: "SecretArn", # required
    #         crawl_attachments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         document_title_field_name: "DataSourceFieldName",
    #         disable_local_groups: false,
    #         ssl_certificate_s3_path: {
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #       },
    #       database_configuration: {
    #         database_engine_type: "RDS_AURORA_MYSQL", # required, accepts RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
    #         connection_configuration: { # required
    #           database_host: "DatabaseHost", # required
    #           database_port: 1, # required
    #           database_name: "DatabaseName", # required
    #           table_name: "TableName", # required
    #           secret_arn: "SecretArn", # required
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         column_configuration: { # required
    #           document_id_column_name: "ColumnName", # required
    #           document_data_column_name: "ColumnName", # required
    #           document_title_column_name: "ColumnName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           change_detecting_columns: ["ColumnName"], # required
    #         },
    #         acl_configuration: {
    #           allowed_groups_column_name: "ColumnName", # required
    #         },
    #         sql_configuration: {
    #           query_identifiers_enclosing_option: "DOUBLE_QUOTES", # accepts DOUBLE_QUOTES, NONE
    #         },
    #       },
    #       salesforce_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         standard_object_configurations: [
    #           {
    #             name: "ACCOUNT", # required, accepts ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #         ],
    #         knowledge_article_configuration: {
    #           included_states: ["DRAFT"], # required, accepts DRAFT, PUBLISHED, ARCHIVED
    #           standard_knowledge_article_type_configuration: {
    #             document_data_field_name: "DataSourceFieldName", # required
    #             document_title_field_name: "DataSourceFieldName",
    #             field_mappings: [
    #               {
    #                 data_source_field_name: "DataSourceFieldName", # required
    #                 date_field_format: "DataSourceDateFieldFormat",
    #                 index_field_name: "IndexFieldName", # required
    #               },
    #             ],
    #           },
    #           custom_knowledge_article_type_configurations: [
    #             {
    #               name: "SalesforceCustomKnowledgeArticleTypeName", # required
    #               document_data_field_name: "DataSourceFieldName", # required
    #               document_title_field_name: "DataSourceFieldName",
    #               field_mappings: [
    #                 {
    #                   data_source_field_name: "DataSourceFieldName", # required
    #                   date_field_format: "DataSourceDateFieldFormat",
    #                   index_field_name: "IndexFieldName", # required
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         chatter_feed_configuration: {
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           include_filter_types: ["ACTIVE_USER"], # accepts ACTIVE_USER, STANDARD_USER
    #         },
    #         crawl_attachments: false,
    #         standard_object_attachment_configuration: {
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #       },
    #       one_drive_configuration: {
    #         tenant_domain: "TenantDomain", # required
    #         secret_arn: "SecretArn", # required
    #         one_drive_users: { # required
    #           one_drive_user_list: ["OneDriveUser"],
    #           one_drive_user_s3_path: {
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         disable_local_groups: false,
    #       },
    #       service_now_configuration: {
    #         host_url: "ServiceNowHostUrl", # required
    #         secret_arn: "SecretArn", # required
    #         service_now_build_version: "LONDON", # required, accepts LONDON, OTHERS
    #         knowledge_article_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #           filter_query: "ServiceNowKnowledgeArticleFilterQuery",
    #         },
    #         service_catalog_configuration: {
    #           crawl_attachments: false,
    #           include_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           exclude_attachment_file_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #           document_data_field_name: "DataSourceFieldName", # required
    #           document_title_field_name: "DataSourceFieldName",
    #           field_mappings: [
    #             {
    #               data_source_field_name: "DataSourceFieldName", # required
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName", # required
    #             },
    #           ],
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, OAUTH2
    #       },
    #       confluence_configuration: {
    #         server_url: "Url", # required
    #         secret_arn: "SecretArn", # required
    #         version: "CLOUD", # required, accepts CLOUD, SERVER
    #         space_configuration: {
    #           crawl_personal_spaces: false,
    #           crawl_archived_spaces: false,
    #           include_spaces: ["ConfluenceSpaceIdentifier"],
    #           exclude_spaces: ["ConfluenceSpaceIdentifier"],
    #           space_field_mappings: [
    #             {
    #               data_source_field_name: "DISPLAY_URL", # accepts DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         page_configuration: {
    #           page_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         blog_configuration: {
    #           blog_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         attachment_configuration: {
    #           crawl_attachments: false,
    #           attachment_field_mappings: [
    #             {
    #               data_source_field_name: "AUTHOR", # accepts AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION
    #               date_field_format: "DataSourceDateFieldFormat",
    #               index_field_name: "IndexFieldName",
    #             },
    #           ],
    #         },
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #         authentication_type: "HTTP_BASIC", # accepts HTTP_BASIC, PAT
    #       },
    #       google_drive_configuration: {
    #         secret_arn: "SecretArn", # required
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         exclude_mime_types: ["MimeType"],
    #         exclude_user_accounts: ["UserAccount"],
    #         exclude_shared_drives: ["SharedDriveId"],
    #       },
    #       web_crawler_configuration: {
    #         urls: { # required
    #           seed_url_configuration: {
    #             seed_urls: ["SeedUrl"], # required
    #             web_crawler_mode: "HOST_ONLY", # accepts HOST_ONLY, SUBDOMAINS, EVERYTHING
    #           },
    #           site_maps_configuration: {
    #             site_maps: ["SiteMap"], # required
    #           },
    #         },
    #         crawl_depth: 1,
    #         max_links_per_page: 1,
    #         max_content_size_per_page_in_mega_bytes: 1.0,
    #         max_urls_per_minute_crawl_rate: 1,
    #         url_inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         url_exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         proxy_configuration: {
    #           host: "Host", # required
    #           port: 1, # required
    #           credentials: "SecretArn",
    #         },
    #         authentication_configuration: {
    #           basic_authentication: [
    #             {
    #               host: "Host", # required
    #               port: 1, # required
    #               credentials: "SecretArn", # required
    #             },
    #           ],
    #         },
    #       },
    #       work_docs_configuration: {
    #         organization_id: "OrganizationId", # required
    #         crawl_comments: false,
    #         use_change_log: false,
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       fsx_configuration: {
    #         file_system_id: "FileSystemId", # required
    #         file_system_type: "WINDOWS", # required, accepts WINDOWS
    #         vpc_configuration: { # required
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         secret_arn: "SecretArn",
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       slack_configuration: {
    #         team_id: "TeamId", # required
    #         secret_arn: "SecretArn", # required
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         slack_entity_list: ["PUBLIC_CHANNEL"], # required, accepts PUBLIC_CHANNEL, PRIVATE_CHANNEL, GROUP_MESSAGE, DIRECT_MESSAGE
    #         use_change_log: false,
    #         crawl_bot_message: false,
    #         exclude_archived: false,
    #         since_crawl_date: "SinceCrawlDate", # required
    #         look_back_period: 1,
    #         private_channel_filter: ["String"],
    #         public_channel_filter: ["String"],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       box_configuration: {
    #         enterprise_id: "EnterpriseId", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         crawl_comments: false,
    #         crawl_tasks: false,
    #         crawl_web_links: false,
    #         file_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         task_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         web_link_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       quip_configuration: {
    #         domain: "Domain", # required
    #         secret_arn: "SecretArn", # required
    #         crawl_file_comments: false,
    #         crawl_chat_rooms: false,
    #         crawl_attachments: false,
    #         folder_ids: ["FolderId"],
    #         thread_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         message_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       jira_configuration: {
    #         jira_account_url: "JiraAccountUrl", # required
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         project: ["String"],
    #         issue_type: ["String"],
    #         status: ["String"],
    #         issue_sub_entity_filter: ["COMMENTS"], # accepts COMMENTS, ATTACHMENTS, WORKLOGS
    #         attachment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         comment_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         issue_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         project_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         work_log_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       git_hub_configuration: {
    #         saa_s_configuration: {
    #           organization_name: "OrganizationName", # required
    #           host_url: "Url", # required
    #         },
    #         on_premise_configuration: {
    #           host_url: "Url", # required
    #           organization_name: "OrganizationName", # required
    #           ssl_certificate_s3_path: { # required
    #             bucket: "S3BucketName", # required
    #             key: "S3ObjectKey", # required
    #           },
    #         },
    #         type: "SAAS", # accepts SAAS, ON_PREMISE
    #         secret_arn: "SecretArn", # required
    #         use_change_log: false,
    #         git_hub_document_crawl_properties: {
    #           crawl_repository_documents: false,
    #           crawl_issue: false,
    #           crawl_issue_comment: false,
    #           crawl_issue_comment_attachment: false,
    #           crawl_pull_request: false,
    #           crawl_pull_request_comment: false,
    #           crawl_pull_request_comment_attachment: false,
    #         },
    #         repository_filter: ["RepositoryName"],
    #         inclusion_folder_name_patterns: ["String"],
    #         inclusion_file_type_patterns: ["String"],
    #         inclusion_file_name_patterns: ["String"],
    #         exclusion_folder_name_patterns: ["String"],
    #         exclusion_file_type_patterns: ["String"],
    #         exclusion_file_name_patterns: ["String"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #         git_hub_repository_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_commit_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_issue_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_comment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_document_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         git_hub_pull_request_document_attachment_configuration_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #       },
    #       alfresco_configuration: {
    #         site_url: "SiteUrl", # required
    #         site_id: "SiteId", # required
    #         secret_arn: "SecretArn", # required
    #         ssl_certificate_s3_path: { # required
    #           bucket: "S3BucketName", # required
    #           key: "S3ObjectKey", # required
    #         },
    #         crawl_system_folders: false,
    #         crawl_comments: false,
    #         entity_filter: ["wiki"], # accepts wiki, blog, documentLibrary
    #         document_library_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         blog_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         wiki_field_mappings: [
    #           {
    #             data_source_field_name: "DataSourceFieldName", # required
    #             date_field_format: "DataSourceDateFieldFormat",
    #             index_field_name: "IndexFieldName", # required
    #           },
    #         ],
    #         inclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         exclusion_patterns: ["DataSourceInclusionsExclusionsStringsMember"],
    #         vpc_configuration: {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["VpcSecurityGroupId"], # required
    #         },
    #       },
    #       template_configuration: {
    #         template: {
    #         },
    #       },
    #     },
    #     vpc_configuration: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["VpcSecurityGroupId"], # required
    #     },
    #     description: "Description",
    #     schedule: "ScanSchedule",
    #     role_arn: "RoleArn",
    #     language_code: "LanguageCode",
    #     custom_document_enrichment_configuration: {
    #       inline_configurations: [
    #         {
    #           condition: {
    #             condition_document_attribute_key: "DocumentAttributeKey", # required
    #             operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #             condition_on_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           target: {
    #             target_document_attribute_key: "DocumentAttributeKey",
    #             target_document_attribute_value_deletion: false,
    #             target_document_attribute_value: {
    #               string_value: "DocumentAttributeStringValue",
    #               string_list_value: ["String"],
    #               long_value: 1,
    #               date_value: Time.now,
    #             },
    #           },
    #           document_content_deletion: false,
    #         },
    #       ],
    #       pre_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       post_extraction_hook_configuration: {
    #         invocation_condition: {
    #           condition_document_attribute_key: "DocumentAttributeKey", # required
    #           operator: "GreaterThan", # required, accepts GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
    #           condition_on_value: {
    #             string_value: "DocumentAttributeStringValue",
    #             string_list_value: ["String"],
    #             long_value: 1,
    #             date_value: Time.now,
    #           },
    #         },
    #         lambda_arn: "LambdaArn", # required
    #         s3_bucket: "S3BucketName", # required
    #       },
    #       role_arn: "RoleArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates your Amazon Kendra experience such as a search application.
    # For more information on creating a search application experience, see
    # [Building a search experience with no code][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html
    #
    # @option params [required, String] :id
    #   The identifier of your Amazon Kendra experience you want to update.
    #
    # @option params [String] :name
    #   A new name for your Amazon Kendra experience.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for your Amazon Kendra experience.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to access
    #   `Query` API, `QuerySuggestions` API, `SubmitFeedback` API, and IAM
    #   Identity Center that stores your user and group information. For more
    #   information, see [IAM roles for Amazon Kendra][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html
    #
    # @option params [Types::ExperienceConfiguration] :configuration
    #   Configuration information you want to update for your Amazon Kendra
    #   experience.
    #
    # @option params [String] :description
    #   A new description for your Amazon Kendra experience.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experience({
    #     id: "ExperienceId", # required
    #     name: "ExperienceName",
    #     index_id: "IndexId", # required
    #     role_arn: "RoleArn",
    #     configuration: {
    #       content_source_configuration: {
    #         data_source_ids: ["DataSourceId"],
    #         faq_ids: ["FaqId"],
    #         direct_put_content: false,
    #       },
    #       user_identity_configuration: {
    #         identity_attribute_name: "IdentityAttributeName",
    #       },
    #     },
    #     description: "Description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateExperience AWS API Documentation
    #
    # @overload update_experience(params = {})
    # @param [Hash] params ({})
    def update_experience(params = {}, options = {})
      req = build_request(:update_experience, params)
      req.send_request(options)
    end

    # Updates a set of featured results. Features results are placed above
    # all other results for certain queries. You map specific queries to
    # specific documents for featuring in the results. If a query contains
    # an exact match of a query, then one or more specific documents are
    # featured in the search results.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index used for featuring results.
    #
    # @option params [required, String] :featured_results_set_id
    #   The identifier of the set of featured results that you want to update.
    #
    # @option params [String] :featured_results_set_name
    #   A new name for the set of featured results.
    #
    # @option params [String] :description
    #   A new description for the set of featured results.
    #
    # @option params [String] :status
    #   You can set the status to `ACTIVE` or `INACTIVE`. When the value is
    #   `ACTIVE`, featured results are ready for use. You can still configure
    #   your settings before setting the status to `ACTIVE`. The queries you
    #   specify for featured results must be unique per featured results set
    #   for each index, whether the status is `ACTIVE` or `INACTIVE`.
    #
    # @option params [Array<String>] :query_texts
    #   A list of queries for featuring results. For more information on the
    #   list of queries, see [FeaturedResultsSet][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html
    #
    # @option params [Array<Types::FeaturedDocument>] :featured_documents
    #   A list of document IDs for the documents you want to feature at the
    #   top of the search results page. For more information on the list of
    #   featured documents, see [FeaturedResultsSet][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html
    #
    # @return [Types::UpdateFeaturedResultsSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFeaturedResultsSetResponse#featured_results_set #featured_results_set} => Types::FeaturedResultsSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_featured_results_set({
    #     index_id: "IndexId", # required
    #     featured_results_set_id: "FeaturedResultsSetId", # required
    #     featured_results_set_name: "FeaturedResultsSetName",
    #     description: "FeaturedResultsSetDescription",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     query_texts: ["QueryText"],
    #     featured_documents: [
    #       {
    #         id: "DocumentId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.featured_results_set.featured_results_set_id #=> String
    #   resp.featured_results_set.featured_results_set_name #=> String
    #   resp.featured_results_set.description #=> String
    #   resp.featured_results_set.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.featured_results_set.query_texts #=> Array
    #   resp.featured_results_set.query_texts[0] #=> String
    #   resp.featured_results_set.featured_documents #=> Array
    #   resp.featured_results_set.featured_documents[0].id #=> String
    #   resp.featured_results_set.last_updated_timestamp #=> Integer
    #   resp.featured_results_set.creation_timestamp #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateFeaturedResultsSet AWS API Documentation
    #
    # @overload update_featured_results_set(params = {})
    # @param [Hash] params ({})
    def update_featured_results_set(params = {}, options = {})
      req = build_request(:update_featured_results_set, params)
      req.send_request(options)
    end

    # Updates an existing Amazon Kendra index.
    #
    # @option params [required, String] :id
    #   The identifier of the index you want to update.
    #
    # @option params [String] :name
    #   The name of the index you want to update.
    #
    # @option params [String] :role_arn
    #   An Identity and Access Management (IAM) role that gives Amazon Kendra
    #   permission to access Amazon CloudWatch logs and metrics.
    #
    # @option params [String] :description
    #   A new description for the index.
    #
    # @option params [Array<Types::DocumentMetadataConfiguration>] :document_metadata_configuration_updates
    #   The document metadata configuration you want to update for the index.
    #   Document metadata are fields or attributes associated with your
    #   documents. For example, the company department name associated with
    #   each document.
    #
    # @option params [Types::CapacityUnitsConfiguration] :capacity_units
    #   Sets the number of additional document storage and query capacity
    #   units that should be used by the index. You can change the capacity of
    #   the index up to 5 times per day, or make 5 API calls.
    #
    #   If you are using extra storage units, you can't reduce the storage
    #   capacity below what is required to meet the storage needs for your
    #   index.
    #
    # @option params [Array<Types::UserTokenConfiguration>] :user_token_configurations
    #   The user token configuration.
    #
    # @option params [String] :user_context_policy
    #   The user context policy.
    #
    # @option params [Types::UserGroupResolutionConfiguration] :user_group_resolution_configuration
    #   Enables fetching access levels of groups and users from an IAM
    #   Identity Center (successor to Single Sign-On) identity source. To
    #   configure this, see [UserGroupResolutionConfiguration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index({
    #     id: "IndexId", # required
    #     name: "IndexName",
    #     role_arn: "RoleArn",
    #     description: "Description",
    #     document_metadata_configuration_updates: [
    #       {
    #         name: "DocumentMetadataConfigurationName", # required
    #         type: "STRING_VALUE", # required, accepts STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
    #         relevance: {
    #           freshness: false,
    #           importance: 1,
    #           duration: "Duration",
    #           rank_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #           value_importance_map: {
    #             "ValueImportanceMapKey" => 1,
    #           },
    #         },
    #         search: {
    #           facetable: false,
    #           searchable: false,
    #           displayable: false,
    #           sortable: false,
    #         },
    #       },
    #     ],
    #     capacity_units: {
    #       storage_capacity_units: 1, # required
    #       query_capacity_units: 1, # required
    #     },
    #     user_token_configurations: [
    #       {
    #         jwt_token_type_configuration: {
    #           key_location: "URL", # required, accepts URL, SECRET_MANAGER
    #           url: "Url",
    #           secret_manager_arn: "RoleArn",
    #           user_name_attribute_field: "UserNameAttributeField",
    #           group_attribute_field: "GroupAttributeField",
    #           issuer: "Issuer",
    #           claim_regex: "ClaimRegex",
    #         },
    #         json_token_type_configuration: {
    #           user_name_attribute_field: "String", # required
    #           group_attribute_field: "String", # required
    #         },
    #       },
    #     ],
    #     user_context_policy: "ATTRIBUTE_FILTER", # accepts ATTRIBUTE_FILTER, USER_TOKEN
    #     user_group_resolution_configuration: {
    #       user_group_resolution_mode: "AWS_SSO", # required, accepts AWS_SSO, NONE
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateIndex AWS API Documentation
    #
    # @overload update_index(params = {})
    # @param [Hash] params ({})
    def update_index(params = {}, options = {})
      req = build_request(:update_index, params)
      req.send_request(options)
    end

    # Updates a block list used for query suggestions for an index.
    #
    # Updates to a block list might not take effect right away. Amazon
    # Kendra needs to refresh the entire suggestions list to apply any
    # updates to the block list. Other changes not related to the block list
    # apply immediately.
    #
    # If a block list is updating, then you need to wait for the first
    # update to finish before submitting another update.
    #
    # Amazon Kendra supports partial updates, so you only need to provide
    # the fields you want to update.
    #
    # `UpdateQuerySuggestionsBlockList` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the block list.
    #
    # @option params [required, String] :id
    #   The identifier of the block list you want to update.
    #
    # @option params [String] :name
    #   A new name for the block list.
    #
    # @option params [String] :description
    #   A new description for the block list.
    #
    # @option params [Types::S3Path] :source_s3_path
    #   The S3 path where your block list text file sits in S3.
    #
    #   If you update your block list and provide the same path to the block
    #   list text file in S3, then Amazon Kendra reloads the file to refresh
    #   the block list. Amazon Kendra does not automatically refresh your
    #   block list. You need to call the `UpdateQuerySuggestionsBlockList` API
    #   to refresh you block list.
    #
    #   If you update your block list, then Amazon Kendra asynchronously
    #   refreshes all query suggestions with the latest content in the S3
    #   file. This means changes might not take effect immediately.
    #
    # @option params [String] :role_arn
    #   The IAM (Identity and Access Management) role used to access the block
    #   list text file in S3.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_query_suggestions_block_list({
    #     index_id: "IndexId", # required
    #     id: "QuerySuggestionsBlockListId", # required
    #     name: "QuerySuggestionsBlockListName",
    #     description: "Description",
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #     role_arn: "RoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateQuerySuggestionsBlockList AWS API Documentation
    #
    # @overload update_query_suggestions_block_list(params = {})
    # @param [Hash] params ({})
    def update_query_suggestions_block_list(params = {}, options = {})
      req = build_request(:update_query_suggestions_block_list, params)
      req.send_request(options)
    end

    # Updates the settings of query suggestions for an index.
    #
    # Amazon Kendra supports partial updates, so you only need to provide
    # the fields you want to update.
    #
    # If an update is currently processing, you need to wait for the update
    # to finish before making another update.
    #
    # Updates to query suggestions settings might not take effect right
    # away. The time for your updated settings to take effect depends on the
    # updates made and the number of search queries in your index.
    #
    # You can still enable/disable query suggestions at any time.
    #
    # `UpdateQuerySuggestionsConfig` is currently not supported in the
    # Amazon Web Services GovCloud (US-West) region.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index with query suggestions you want to update.
    #
    # @option params [String] :mode
    #   Set the mode to `ENABLED` or `LEARN_ONLY`.
    #
    #   By default, Amazon Kendra enables query suggestions. `LEARN_ONLY` mode
    #   allows you to turn off query suggestions. You can to update this at
    #   any time.
    #
    #   In `LEARN_ONLY` mode, Amazon Kendra continues to learn from new
    #   queries to keep suggestions up to date for when you are ready to
    #   switch to ENABLED mode again.
    #
    # @option params [Integer] :query_log_look_back_window_in_days
    #   How recent your queries are in your query log time window.
    #
    #   The time window is the number of days from current day to past days.
    #
    #   By default, Amazon Kendra sets this to 180.
    #
    # @option params [Boolean] :include_queries_without_user_information
    #   `TRUE` to include queries without user information (i.e. all queries,
    #   irrespective of the user), otherwise `FALSE` to only include queries
    #   with user information.
    #
    #   If you pass user information to Amazon Kendra along with the queries,
    #   you can set this flag to `FALSE` and instruct Amazon Kendra to only
    #   consider queries with user information.
    #
    #   If you set to `FALSE`, Amazon Kendra only considers queries searched
    #   at least `MinimumQueryCount` times across
    #   `MinimumNumberOfQueryingUsers` unique users for suggestions.
    #
    #   If you set to `TRUE`, Amazon Kendra ignores all user information and
    #   learns from all queries.
    #
    # @option params [Integer] :minimum_number_of_querying_users
    #   The minimum number of unique users who must search a query in order
    #   for the query to be eligible to suggest to your users.
    #
    #   Increasing this number might decrease the number of suggestions.
    #   However, this ensures a query is searched by many users and is truly
    #   popular to suggest to users.
    #
    #   How you tune this setting depends on your specific needs.
    #
    # @option params [Integer] :minimum_query_count
    #   The the minimum number of times a query must be searched in order to
    #   be eligible to suggest to your users.
    #
    #   Decreasing this number increases the number of suggestions. However,
    #   this affects the quality of suggestions as it sets a low bar for a
    #   query to be considered popular to suggest to users.
    #
    #   How you tune this setting depends on your specific needs.
    #
    # @option params [Types::AttributeSuggestionsUpdateConfig] :attribute_suggestions_config
    #   Configuration information for the document fields/attributes that you
    #   want to base query suggestions on.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_query_suggestions_config({
    #     index_id: "IndexId", # required
    #     mode: "ENABLED", # accepts ENABLED, LEARN_ONLY
    #     query_log_look_back_window_in_days: 1,
    #     include_queries_without_user_information: false,
    #     minimum_number_of_querying_users: 1,
    #     minimum_query_count: 1,
    #     attribute_suggestions_config: {
    #       suggestable_config_list: [
    #         {
    #           attribute_name: "DocumentAttributeKey",
    #           suggestable: false,
    #         },
    #       ],
    #       attribute_suggestions_mode: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateQuerySuggestionsConfig AWS API Documentation
    #
    # @overload update_query_suggestions_config(params = {})
    # @param [Hash] params ({})
    def update_query_suggestions_config(params = {}, options = {})
      req = build_request(:update_query_suggestions_config, params)
      req.send_request(options)
    end

    # Updates a thesaurus for an index.
    #
    # @option params [required, String] :id
    #   The identifier of the thesaurus you want to update.
    #
    # @option params [String] :name
    #   A new name for the thesaurus.
    #
    # @option params [required, String] :index_id
    #   The identifier of the index for the thesaurus.
    #
    # @option params [String] :description
    #   A new description for the thesaurus.
    #
    # @option params [String] :role_arn
    #   An IAM role that gives Amazon Kendra permissions to access thesaurus
    #   file specified in `SourceS3Path`.
    #
    # @option params [Types::S3Path] :source_s3_path
    #   Information required to find a specific file in an Amazon S3 bucket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thesaurus({
    #     id: "ThesaurusId", # required
    #     name: "ThesaurusName",
    #     index_id: "IndexId", # required
    #     description: "Description",
    #     role_arn: "RoleArn",
    #     source_s3_path: {
    #       bucket: "S3BucketName", # required
    #       key: "S3ObjectKey", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03/UpdateThesaurus AWS API Documentation
    #
    # @overload update_thesaurus(params = {})
    # @param [Hash] params ({})
    def update_thesaurus(params = {}, options = {})
      req = build_request(:update_thesaurus, params)
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
      context[:gem_name] = 'aws-sdk-kendra'
      context[:gem_version] = '1.71.0'
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
