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
require 'aws-sdk-core/plugins/signature_v2.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:importexport)

module Aws::ImportExport
  # An API client for ImportExport.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ImportExport::Client.new(
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

    @identifier = :importexport

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
    add_plugin(Aws::Plugins::SignatureV2)
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # This operation cancels a specified job. Only the job owner can cancel
    # it. The operation fails if the job has already started or is complete.
    #
    # @option params [required, String] :job_id
    #   A unique identifier which refers to a particular job.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::CancelJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobOutput#success #success} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "JobId", # required
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # This operation initiates the process of scheduling an upload or
    # download of your data. You include in the request a manifest that
    # describes the data transfer specifics. The response to the request
    # includes a job ID, which you can use in other operations, a signature
    # that you use to identify your storage device, and the address where
    # you should ship your storage device.
    #
    # @option params [required, String] :job_type
    #   Specifies whether the job to initiate is an import or export job.
    #
    # @option params [required, String] :manifest
    #   The UTF-8 encoded text of the manifest file.
    #
    # @option params [String] :manifest_addendum
    #   For internal use only.
    #
    # @option params [required, Boolean] :validate_only
    #   Validate the manifest and parameter values in the request but do not
    #   actually create a job.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::CreateJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobOutput#job_id #job_id} => String
    #   * {Types::CreateJobOutput#job_type #job_type} => String
    #   * {Types::CreateJobOutput#signature #signature} => String
    #   * {Types::CreateJobOutput#signature_file_contents #signature_file_contents} => String
    #   * {Types::CreateJobOutput#warning_message #warning_message} => String
    #   * {Types::CreateJobOutput#artifact_list #artifact_list} => Array&lt;Types::Artifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     job_type: "Import", # required, accepts Import, Export
    #     manifest: "Manifest", # required
    #     manifest_addendum: "ManifestAddendum",
    #     validate_only: false, # required
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_type #=> String, one of "Import", "Export"
    #   resp.signature #=> String
    #   resp.signature_file_contents #=> String
    #   resp.warning_message #=> String
    #   resp.artifact_list #=> Array
    #   resp.artifact_list[0].description #=> String
    #   resp.artifact_list[0].url #=> String
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # This operation generates a pre-paid UPS shipping label that you will
    # use to ship your device to AWS for processing.
    #
    # @option params [required, Array<String>] :job_ids
    #
    # @option params [String] :name
    #   Specifies the name of the person responsible for shipping this
    #   package.
    #
    # @option params [String] :company
    #   Specifies the name of the company that will ship this package.
    #
    # @option params [String] :phone_number
    #   Specifies the phone number of the person responsible for shipping this
    #   package.
    #
    # @option params [String] :country
    #   Specifies the name of your country for the return address.
    #
    # @option params [String] :state_or_province
    #   Specifies the name of your state or your province for the return
    #   address.
    #
    # @option params [String] :city
    #   Specifies the name of your city for the return address.
    #
    # @option params [String] :postal_code
    #   Specifies the postal code for the return address.
    #
    # @option params [String] :street1
    #   Specifies the first part of the street address for the return address,
    #   for example 1234 Main Street.
    #
    # @option params [String] :street2
    #   Specifies the optional second part of the street address for the
    #   return address, for example Suite 100.
    #
    # @option params [String] :street3
    #   Specifies the optional third part of the street address for the return
    #   address, for example c/o Jane Doe.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::GetShippingLabelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetShippingLabelOutput#shipping_label_url #shipping_label_url} => String
    #   * {Types::GetShippingLabelOutput#warning #warning} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_shipping_label({
    #     job_ids: ["GenericString"], # required
    #     name: "name",
    #     company: "company",
    #     phone_number: "phoneNumber",
    #     country: "country",
    #     state_or_province: "stateOrProvince",
    #     city: "city",
    #     postal_code: "postalCode",
    #     street1: "street1",
    #     street2: "street2",
    #     street3: "street3",
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.shipping_label_url #=> String
    #   resp.warning #=> String
    #
    # @overload get_shipping_label(params = {})
    # @param [Hash] params ({})
    def get_shipping_label(params = {}, options = {})
      req = build_request(:get_shipping_label, params)
      req.send_request(options)
    end

    # This operation returns information about a job, including where the
    # job is in the processing pipeline, the status of the results, and the
    # signature value associated with the job. You can only return
    # information about jobs you own.
    #
    # @option params [required, String] :job_id
    #   A unique identifier which refers to a particular job.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::GetStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatusOutput#job_id #job_id} => String
    #   * {Types::GetStatusOutput#job_type #job_type} => String
    #   * {Types::GetStatusOutput#location_code #location_code} => String
    #   * {Types::GetStatusOutput#location_message #location_message} => String
    #   * {Types::GetStatusOutput#progress_code #progress_code} => String
    #   * {Types::GetStatusOutput#progress_message #progress_message} => String
    #   * {Types::GetStatusOutput#carrier #carrier} => String
    #   * {Types::GetStatusOutput#tracking_number #tracking_number} => String
    #   * {Types::GetStatusOutput#log_bucket #log_bucket} => String
    #   * {Types::GetStatusOutput#log_key #log_key} => String
    #   * {Types::GetStatusOutput#error_count #error_count} => Integer
    #   * {Types::GetStatusOutput#signature #signature} => String
    #   * {Types::GetStatusOutput#signature_file_contents #signature_file_contents} => String
    #   * {Types::GetStatusOutput#current_manifest #current_manifest} => String
    #   * {Types::GetStatusOutput#creation_date #creation_date} => Time
    #   * {Types::GetStatusOutput#artifact_list #artifact_list} => Array&lt;Types::Artifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_status({
    #     job_id: "JobId", # required
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_type #=> String, one of "Import", "Export"
    #   resp.location_code #=> String
    #   resp.location_message #=> String
    #   resp.progress_code #=> String
    #   resp.progress_message #=> String
    #   resp.carrier #=> String
    #   resp.tracking_number #=> String
    #   resp.log_bucket #=> String
    #   resp.log_key #=> String
    #   resp.error_count #=> Integer
    #   resp.signature #=> String
    #   resp.signature_file_contents #=> String
    #   resp.current_manifest #=> String
    #   resp.creation_date #=> Time
    #   resp.artifact_list #=> Array
    #   resp.artifact_list[0].description #=> String
    #   resp.artifact_list[0].url #=> String
    #
    # @overload get_status(params = {})
    # @param [Hash] params ({})
    def get_status(params = {}, options = {})
      req = build_request(:get_status, params)
      req.send_request(options)
    end

    # This operation returns the jobs associated with the requester. AWS
    # Import/Export lists the jobs in reverse chronological order based on
    # the date of creation. For example if Job Test1 was created 2009Dec30
    # and Test2 was created 2010Feb05, the ListJobs operation would return
    # Test2 followed by Test1.
    #
    # @option params [Integer] :max_jobs
    #   Sets the maximum number of jobs returned in the response. If there are
    #   additional jobs that were not returned because MaxJobs was exceeded,
    #   the response contains &lt;IsTruncated&gt;true&lt;/IsTruncated&gt;. To
    #   return the additional jobs, see Marker.
    #
    # @option params [String] :marker
    #   Specifies the JOBID to start after when listing the jobs created with
    #   your account. AWS Import/Export lists your jobs in reverse
    #   chronological order. See MaxJobs.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::ListJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsOutput#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsOutput#is_truncated #is_truncated} => Boolean
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_jobs: 1,
    #     marker: "Marker",
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].creation_date #=> Time
    #   resp.jobs[0].is_canceled #=> Boolean
    #   resp.jobs[0].job_type #=> String, one of "Import", "Export"
    #   resp.is_truncated #=> Boolean
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # You use this operation to change the parameters specified in the
    # original manifest file by supplying a new manifest file. The manifest
    # file attached to this request replaces the original manifest file. You
    # can only use the operation after a CreateJob request but before the
    # data transfer starts and you can only use it on jobs you own.
    #
    # @option params [required, String] :job_id
    #   A unique identifier which refers to a particular job.
    #
    # @option params [required, String] :manifest
    #   The UTF-8 encoded text of the manifest file.
    #
    # @option params [required, String] :job_type
    #   Specifies whether the job to initiate is an import or export job.
    #
    # @option params [required, Boolean] :validate_only
    #   Validate the manifest and parameter values in the request but do not
    #   actually create a job.
    #
    # @option params [String] :api_version
    #   Specifies the version of the client tool.
    #
    # @return [Types::UpdateJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobOutput#success #success} => Boolean
    #   * {Types::UpdateJobOutput#warning_message #warning_message} => String
    #   * {Types::UpdateJobOutput#artifact_list #artifact_list} => Array&lt;Types::Artifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     job_id: "JobId", # required
    #     manifest: "Manifest", # required
    #     job_type: "Import", # required, accepts Import, Export
    #     validate_only: false, # required
    #     api_version: "APIVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> Boolean
    #   resp.warning_message #=> String
    #   resp.artifact_list #=> Array
    #   resp.artifact_list[0].description #=> String
    #   resp.artifact_list[0].url #=> String
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
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
      context[:gem_name] = 'aws-sdk-importexport'
      context[:gem_version] = '1.24.0'
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
