# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:healthlake)

module Aws::HealthLake
  # An API client for HealthLake.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::HealthLake::Client.new(
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

    @identifier = :healthlake

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Creates a datastore that can ingest and export FHIR data.
    #
    # @option params [String] :datastore_name
    #   The user generated name for the datastore.
    #
    # @option params [required, String] :datastore_type_version
    #   The FHIR version of the datastore. The only supported version is R4.
    #
    # @option params [Types::PreloadDataConfig] :preload_data_config
    #   Optional parameter to preload data upon creation of the datastore.
    #   Currently, the only supported preloaded data is synthetic data
    #   generated from Synthea.
    #
    # @option params [String] :client_token
    #   Optional user provided token used for ensuring idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFHIRDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_arn #datastore_arn} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_status #datastore_status} => String
    #   * {Types::CreateFHIRDatastoreResponse#datastore_endpoint #datastore_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fhir_datastore({
    #     datastore_name: "DatastoreName",
    #     datastore_type_version: "R4", # required, accepts R4
    #     preload_data_config: {
    #       preload_data_type: "SYNTHEA", # required, accepts SYNTHEA
    #     },
    #     client_token: "ClientTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_arn #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastore AWS API Documentation
    #
    # @overload create_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def create_fhir_datastore(params = {}, options = {})
      req = build_request(:create_fhir_datastore, params)
      req.send_request(options)
    end

    # Deletes a datastore.
    #
    # @option params [String] :datastore_id
    #   The AWS-generated ID for the datastore to be deleted.
    #
    # @return [Types::DeleteFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_id #datastore_id} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_arn #datastore_arn} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_status #datastore_status} => String
    #   * {Types::DeleteFHIRDatastoreResponse#datastore_endpoint #datastore_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fhir_datastore({
    #     datastore_id: "DatastoreId",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_id #=> String
    #   resp.datastore_arn #=> String
    #   resp.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteFHIRDatastore AWS API Documentation
    #
    # @overload delete_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def delete_fhir_datastore(params = {}, options = {})
      req = build_request(:delete_fhir_datastore, params)
      req.send_request(options)
    end

    # Gets the properties associated with the FHIR datastore, including the
    # datastore ID, datastore ARN, datastore name, datastore status, created
    # at, datastore type version, and datastore endpoint.
    #
    # @option params [String] :datastore_id
    #   The AWS-generated datastore id. This is part of the
    #   ‘CreateFHIRDatastore’ output.
    #
    # @return [Types::DescribeFHIRDatastoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFHIRDatastoreResponse#datastore_properties #datastore_properties} => Types::DatastoreProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_datastore({
    #     datastore_id: "DatastoreId",
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties.datastore_id #=> String
    #   resp.datastore_properties.datastore_arn #=> String
    #   resp.datastore_properties.datastore_name #=> String
    #   resp.datastore_properties.datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_properties.created_at #=> Time
    #   resp.datastore_properties.datastore_type_version #=> String, one of "R4"
    #   resp.datastore_properties.datastore_endpoint #=> String
    #   resp.datastore_properties.preload_data_config.preload_data_type #=> String, one of "SYNTHEA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRDatastore AWS API Documentation
    #
    # @overload describe_fhir_datastore(params = {})
    # @param [Hash] params ({})
    def describe_fhir_datastore(params = {}, options = {})
      req = build_request(:describe_fhir_datastore, params)
      req.send_request(options)
    end

    # Displays the properties of a FHIR import job, including the ID, ARN,
    # name, and the status of the datastore.
    #
    # @option params [required, String] :datastore_id
    #   The AWS-generated ID of the datastore.
    #
    # @option params [required, String] :job_id
    #   The AWS-generated job ID.
    #
    # @return [Types::DescribeFHIRImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFHIRImportJobResponse#import_job_properties #import_job_properties} => Types::ImportJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_import_job({
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.import_job_properties.job_id #=> String
    #   resp.import_job_properties.job_name #=> String
    #   resp.import_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.import_job_properties.submit_time #=> Time
    #   resp.import_job_properties.end_time #=> Time
    #   resp.import_job_properties.datastore_id #=> String
    #   resp.import_job_properties.input_data_config.s3_uri #=> String
    #   resp.import_job_properties.data_access_role_arn #=> String
    #   resp.import_job_properties.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRImportJob AWS API Documentation
    #
    # @overload describe_fhir_import_job(params = {})
    # @param [Hash] params ({})
    def describe_fhir_import_job(params = {}, options = {})
      req = build_request(:describe_fhir_import_job, params)
      req.send_request(options)
    end

    # Lists all FHIR datastores that are in the user’s account, regardless
    # of datastore status.
    #
    # @option params [Types::DatastoreFilter] :filter
    #   Lists all filters associated with a FHIR datastore request.
    #
    # @option params [String] :next_token
    #   Fetches the next page of datastores when results are paginated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of datastores returned in a single page of a
    #   ListFHIRDatastoresRequest call.
    #
    # @return [Types::ListFHIRDatastoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFHIRDatastoresResponse#datastore_properties_list #datastore_properties_list} => Array&lt;Types::DatastoreProperties&gt;
    #   * {Types::ListFHIRDatastoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_datastores({
    #     filter: {
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING", # accepts CREATING, ACTIVE, DELETING, DELETED
    #       created_before: Time.now,
    #       created_after: Time.now,
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.datastore_properties_list #=> Array
    #   resp.datastore_properties_list[0].datastore_id #=> String
    #   resp.datastore_properties_list[0].datastore_arn #=> String
    #   resp.datastore_properties_list[0].datastore_name #=> String
    #   resp.datastore_properties_list[0].datastore_status #=> String, one of "CREATING", "ACTIVE", "DELETING", "DELETED"
    #   resp.datastore_properties_list[0].created_at #=> Time
    #   resp.datastore_properties_list[0].datastore_type_version #=> String, one of "R4"
    #   resp.datastore_properties_list[0].datastore_endpoint #=> String
    #   resp.datastore_properties_list[0].preload_data_config.preload_data_type #=> String, one of "SYNTHEA"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRDatastores AWS API Documentation
    #
    # @overload list_fhir_datastores(params = {})
    # @param [Hash] params ({})
    def list_fhir_datastores(params = {}, options = {})
      req = build_request(:list_fhir_datastores, params)
      req.send_request(options)
    end

    # Begins a FHIR Import job.
    #
    # @option params [String] :job_name
    #   The name of the FHIR Import job in the StartFHIRImport job request.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input properties of the FHIR Import job in the StartFHIRImport job
    #   request.
    #
    # @option params [required, String] :datastore_id
    #   The AWS-generated datastore ID.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon HealthLake access
    #   permission.
    #
    # @option params [required, String] :client_token
    #   Optional user provided token used for ensuring idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartFHIRImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFHIRImportJobResponse#job_id #job_id} => String
    #   * {Types::StartFHIRImportJobResponse#job_status #job_status} => String
    #   * {Types::StartFHIRImportJobResponse#datastore_id #datastore_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fhir_import_job({
    #     job_name: "JobName",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri",
    #     },
    #     datastore_id: "DatastoreId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.datastore_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRImportJob AWS API Documentation
    #
    # @overload start_fhir_import_job(params = {})
    # @param [Hash] params ({})
    def start_fhir_import_job(params = {}, options = {})
      req = build_request(:start_fhir_import_job, params)
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
      context[:gem_name] = 'aws-sdk-healthlake'
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
