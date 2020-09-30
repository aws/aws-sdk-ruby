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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotsitewise)

module Aws::IoTSiteWise
  # An API client for IoTSiteWise.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTSiteWise::Client.new(
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

    @identifier = :iotsitewise

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

    # Associates a child asset with the given parent asset through a
    # hierarchy defined in the parent asset's model. For more information,
    # see [Associating assets][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the parent asset.
    #
    # @option params [required, String] :hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. Hierarchies allow
    #   different groupings of assets to be formed that all come from the same
    #   asset model. For more information, see [Asset hierarchies][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [required, String] :child_asset_id
    #   The ID of the child asset to be associated.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_assets({
    #     asset_id: "ID", # required
    #     hierarchy_id: "ID", # required
    #     child_asset_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload associate_assets(params = {})
    # @param [Hash] params ({})
    def associate_assets(params = {}, options = {})
      req = build_request(:associate_assets, params)
      req.send_request(options)
    end

    # Associates a group (batch) of assets with an AWS IoT SiteWise Monitor
    # project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project to which to associate the assets.
    #
    # @option params [required, Array<String>] :asset_ids
    #   The IDs of the assets to be associated to the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchAssociateProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateProjectAssetsResponse#errors #errors} => Array&lt;Types::AssetErrorDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_project_assets({
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].asset_id #=> String
    #   resp.errors[0].code #=> String, one of "INTERNAL_FAILURE"
    #   resp.errors[0].message #=> String
    #
    # @overload batch_associate_project_assets(params = {})
    # @param [Hash] params ({})
    def batch_associate_project_assets(params = {}, options = {})
      req = build_request(:batch_associate_project_assets, params)
      req.send_request(options)
    end

    # Disassociates a group (batch) of assets from an AWS IoT SiteWise
    # Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project from which to disassociate the assets.
    #
    # @option params [required, Array<String>] :asset_ids
    #   The IDs of the assets to be disassociated from the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchDisassociateProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateProjectAssetsResponse#errors #errors} => Array&lt;Types::AssetErrorDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_project_assets({
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].asset_id #=> String
    #   resp.errors[0].code #=> String, one of "INTERNAL_FAILURE"
    #   resp.errors[0].message #=> String
    #
    # @overload batch_disassociate_project_assets(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_project_assets(params = {}, options = {})
      req = build_request(:batch_disassociate_project_assets, params)
      req.send_request(options)
    end

    # Sends a list of asset property values to AWS IoT SiteWise. Each value
    # is a timestamp-quality-value (TQV) data point. For more information,
    # see [Ingesting data using the API][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    # With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs
    # that have a timestamp of no more than 15 minutes in the past and no
    # more than 5 minutes in the future. AWS IoT SiteWise rejects timestamps
    # outside of the inclusive range of \[-15, +5\] minutes and returns a
    # `TimestampOutOfRangeException` error.
    #
    #  For each asset property, AWS IoT SiteWise overwrites TQVs with
    # duplicate timestamps unless the newer TQV has a different quality. For
    # example, if you store a TQV `\{T1, GOOD, V1\}`, then storing `\{T1,
    # GOOD, V2\}` replaces the existing TQV.
    #
    # AWS IoT SiteWise authorizes access to each
    # `BatchPutAssetPropertyValue` entry individually. For more information,
    # see [BatchPutAssetPropertyValue authorization][3] in the *AWS IoT
    # SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    # [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action
    #
    # @option params [required, Array<Types::PutAssetPropertyValueEntry>] :entries
    #   The list of asset property value entries for the batch put request.
    #   You can specify up to 10 entries per request.
    #
    # @return [Types::BatchPutAssetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutAssetPropertyValueResponse#error_entries #error_entries} => Array&lt;Types::BatchPutAssetPropertyErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_asset_property_value({
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         property_values: [ # required
    #           {
    #             value: { # required
    #               string_value: "PropertyValueStringValue",
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false,
    #             },
    #             timestamp: { # required
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1,
    #             },
    #             quality: "GOOD", # accepts GOOD, BAD, UNCERTAIN
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].entry_id #=> String
    #   resp.error_entries[0].errors #=> Array
    #   resp.error_entries[0].errors[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException", "LimitExceededException", "ConflictingOperationException", "TimestampOutOfRangeException", "AccessDeniedException"
    #   resp.error_entries[0].errors[0].error_message #=> String
    #   resp.error_entries[0].errors[0].timestamps #=> Array
    #   resp.error_entries[0].errors[0].timestamps[0].time_in_seconds #=> Integer
    #   resp.error_entries[0].errors[0].timestamps[0].offset_in_nanos #=> Integer
    #
    # @overload batch_put_asset_property_value(params = {})
    # @param [Hash] params ({})
    def batch_put_asset_property_value(params = {}, options = {})
      req = build_request(:batch_put_asset_property_value, params)
      req.send_request(options)
    end

    # Creates an access policy that grants the specified identity (AWS SSO
    # user, AWS SSO group, or IAM user) access to the specified AWS IoT
    # SiteWise Monitor portal or project resource.
    #
    # @option params [required, Types::Identity] :access_policy_identity
    #   The identity for this access policy. Choose an AWS SSO user, an AWS
    #   SSO group, or an IAM user.
    #
    # @option params [required, Types::Resource] :access_policy_resource
    #   The AWS IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #
    # @option params [required, String] :access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the access policy.
    #   For more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPolicyResponse#access_policy_id #access_policy_id} => String
    #   * {Types::CreateAccessPolicyResponse#access_policy_arn #access_policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_policy({
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "ARN", # required
    #       },
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       },
    #     },
    #     access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_id #=> String
    #   resp.access_policy_arn #=> String
    #
    # @overload create_access_policy(params = {})
    # @param [Hash] params ({})
    def create_access_policy(params = {}, options = {})
      req = build_request(:create_access_policy, params)
      req.send_request(options)
    end

    # Creates an asset from an existing asset model. For more information,
    # see [Creating assets][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html
    #
    # @option params [required, String] :asset_name
    #   A unique, friendly name for the asset.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model from which to create the asset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the asset. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetResponse#asset_id #asset_id} => String
    #   * {Types::CreateAssetResponse#asset_arn #asset_arn} => String
    #   * {Types::CreateAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     asset_name: "Name", # required
    #     asset_model_id: "ID", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_arn #=> String
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates an asset model from specified property and hierarchy
    # definitions. You create assets from asset models. With asset models,
    # you can easily create assets of the same type that have standardized
    # definitions. Each asset created from a model inherits the asset
    # model's property and hierarchy definitions. For more information, see
    # [Defining asset models][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html
    #
    # @option params [required, String] :asset_model_name
    #   A unique, friendly name for the asset model.
    #
    # @option params [String] :asset_model_description
    #   A description for the asset model.
    #
    # @option params [Array<Types::AssetModelPropertyDefinition>] :asset_model_properties
    #   The property definitions of the asset model. For more information, see
    #   [Asset properties][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelHierarchyDefinition>] :asset_model_hierarchies
    #   The hierarchy definitions of the asset model. Each hierarchy specifies
    #   an asset model whose assets can be children of any other assets
    #   created from this asset model. For more information, see [Asset
    #   hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the asset model.
    #   For more information, see [Tagging your AWS IoT SiteWise resources][1]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetModelResponse#asset_model_id #asset_model_id} => String
    #   * {Types::CreateAssetModelResponse#asset_model_arn #asset_model_arn} => String
    #   * {Types::CreateAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_model({
    #     asset_model_name: "Name", # required
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         name: "Name", # required
    #         child_asset_model_id: "ID", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_id #=> String
    #   resp.asset_model_arn #=> String
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #
    # @overload create_asset_model(params = {})
    # @param [Hash] params ({})
    def create_asset_model(params = {}, options = {})
      req = build_request(:create_asset_model, params)
      req.send_request(options)
    end

    # Creates a dashboard in an AWS IoT SiteWise Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project in which to create the dashboard.
    #
    # @option params [required, String] :dashboard_name
    #   A friendly name for the dashboard.
    #
    # @option params [String] :dashboard_description
    #   A description for the dashboard.
    #
    # @option params [required, String] :dashboard_definition
    #   The dashboard definition specified in a JSON literal. For detailed
    #   information, see [Creating dashboards (CLI)][1] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the dashboard. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::CreateDashboardResponse#dashboard_arn #dashboard_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard({
    #     project_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a gateway, which is a virtual or edge device that delivers
    # industrial data streams from local servers to AWS IoT SiteWise. For
    # more information, see [Ingesting data using a gateway][1] in the *AWS
    # IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html
    #
    # @option params [required, String] :gateway_name
    #   A unique, friendly name for the gateway.
    #
    # @option params [required, Types::GatewayPlatform] :gateway_platform
    #   The gateway's platform. You can only specify one platform in a
    #   gateway.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the gateway. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateGatewayResponse#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     gateway_name: "Name", # required
    #     gateway_platform: { # required
    #       greengrass: { # required
    #         group_arn: "ARN", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.gateway_arn #=> String
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Creates a portal, which can contain projects and dashboards. AWS IoT
    # SiteWise Monitor uses AWS SSO or IAM to authenticate portal users and
    # manage user permissions.
    #
    # <note markdown="1"> Before you can sign in to a new portal, you must add at least one
    # identity to that portal. For more information, see [Adding or removing
    # portal administrators][1] in the *AWS IoT SiteWise User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins
    #
    # @option params [required, String] :portal_name
    #   A friendly name for the portal.
    #
    # @option params [String] :portal_description
    #   A description for the portal.
    #
    # @option params [required, String] :portal_contact_email
    #   The AWS administrator's contact email address.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ImageFile] :portal_logo_image_file
    #   A logo image to display in the portal. Upload a square,
    #   high-resolution image. The image is displayed on a dark background.
    #
    # @option params [required, String] :role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise Monitor][2]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the portal. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @option params [String] :portal_auth_mode
    #   The service to use to authenticate users to the portal. Choose from
    #   the following options:
    #
    #   * `SSO` – The portal uses AWS Single Sign-On to authenticate users and
    #     manage user permissions. Before you can create a portal that uses
    #     AWS SSO, you must enable AWS SSO. For more information, see
    #     [Enabling AWS SSO][1] in the *AWS IoT SiteWise User Guide*. This
    #     option is only available in AWS Regions other than the China
    #     Regions.
    #
    #   * `IAM` – The portal uses AWS Identity and Access Management (IAM) to
    #     authenticate users and manage user permissions. IAM users must have
    #     the `iotsitewise:CreatePresignedPortalUrl` permission to sign in to
    #     the portal. This option is only available in the China Regions.
    #
    #   You can't change this value after you create a portal.
    #
    #   Default: `SSO`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso
    #
    # @return [Types::CreatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortalResponse#portal_id #portal_id} => String
    #   * {Types::CreatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::CreatePortalResponse#portal_start_url #portal_start_url} => String
    #   * {Types::CreatePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #   * {Types::CreatePortalResponse#sso_application_id #sso_application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal({
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     client_token: "ClientToken",
    #     portal_logo_image_file: {
    #       data: "data", # required
    #       type: "PNG", # required, accepts PNG
    #     },
    #     role_arn: "ARN", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     portal_auth_mode: "IAM", # accepts IAM, SSO
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.portal_start_url #=> String
    #   resp.portal_status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #   resp.sso_application_id #=> String
    #
    # @overload create_portal(params = {})
    # @param [Hash] params ({})
    def create_portal(params = {}, options = {})
      req = build_request(:create_portal, params)
      req.send_request(options)
    end

    # Creates a pre-signed URL to a portal. Use this operation to create
    # URLs to portals that use AWS Identity and Access Management (IAM) to
    # authenticate users. An IAM user with access to a portal can call this
    # API to get a URL to that portal. The URL contains a session token that
    # lets the IAM user access the portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal to access.
    #
    # @option params [Integer] :session_duration_seconds
    #   The duration (in seconds) for which the session at the URL is valid.
    #
    #   Default: 900 seconds (15 minutes)
    #
    # @return [Types::CreatePresignedPortalUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresignedPortalUrlResponse#presigned_portal_url #presigned_portal_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_presigned_portal_url({
    #     portal_id: "ID", # required
    #     session_duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.presigned_portal_url #=> String
    #
    # @overload create_presigned_portal_url(params = {})
    # @param [Hash] params ({})
    def create_presigned_portal_url(params = {}, options = {})
      req = build_request(:create_presigned_portal_url, params)
      req.send_request(options)
    end

    # Creates a project in the specified portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal in which to create the project.
    #
    # @option params [required, String] :project_name
    #   A friendly name for the project.
    #
    # @option params [String] :project_description
    #   A description for the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the project. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#project_id #project_id} => String
    #   * {Types::CreateProjectResponse#project_arn #project_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     portal_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.project_arn #=> String
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Deletes an access policy that grants the specified identity access to
    # the specified AWS IoT SiteWise Monitor resource. You can use this
    # operation to revoke access to an AWS IoT SiteWise Monitor resource.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy to be deleted.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_policy({
    #     access_policy_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_access_policy(params = {}, options = {})
      req = build_request(:delete_access_policy, params)
      req.send_request(options)
    end

    # Deletes an asset. This action can't be undone. For more information,
    # see [Deleting assets and models][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    # <note markdown="1"> You can't delete an asset that's associated to another asset. For
    # more information, see [DisassociateAssets][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     asset_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes an asset model. This action can't be undone. You must delete
    # all assets created from an asset model before you can delete the
    # model. Also, you can't delete an asset model if a parent asset model
    # exists that contains a property formula expression that depends on the
    # asset model that you want to delete. For more information, see
    # [Deleting assets and models][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_model({
    #     asset_model_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #
    # @overload delete_asset_model(params = {})
    # @param [Hash] params ({})
    def delete_asset_model(params = {}, options = {})
      req = build_request(:delete_asset_model, params)
      req.send_request(options)
    end

    # Deletes a dashboard from AWS IoT SiteWise Monitor.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     dashboard_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Deletes a gateway from AWS IoT SiteWise. When you delete a gateway,
    # some of the gateway's files remain in your gateway's file system.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_id: "ID", # required
    #   })
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a portal from AWS IoT SiteWise Monitor.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeletePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal({
    #     portal_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #
    # @overload delete_portal(params = {})
    # @param [Hash] params ({})
    def delete_portal(params = {}, options = {})
      req = build_request(:delete_portal, params)
      req.send_request(options)
    end

    # Deletes a project from AWS IoT SiteWise Monitor.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Describes an access policy, which specifies an identity's access to
    # an AWS IoT SiteWise Monitor portal or project.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy.
    #
    # @return [Types::DescribeAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessPolicyResponse#access_policy_id #access_policy_id} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_arn #access_policy_arn} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_identity #access_policy_identity} => Types::Identity
    #   * {Types::DescribeAccessPolicyResponse#access_policy_resource #access_policy_resource} => Types::Resource
    #   * {Types::DescribeAccessPolicyResponse#access_policy_permission #access_policy_permission} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_creation_date #access_policy_creation_date} => Time
    #   * {Types::DescribeAccessPolicyResponse#access_policy_last_update_date #access_policy_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_policy({
    #     access_policy_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_id #=> String
    #   resp.access_policy_arn #=> String
    #   resp.access_policy_identity.user.id #=> String
    #   resp.access_policy_identity.group.id #=> String
    #   resp.access_policy_identity.iam_user.arn #=> String
    #   resp.access_policy_resource.portal.id #=> String
    #   resp.access_policy_resource.project.id #=> String
    #   resp.access_policy_permission #=> String, one of "ADMINISTRATOR", "VIEWER"
    #   resp.access_policy_creation_date #=> Time
    #   resp.access_policy_last_update_date #=> Time
    #
    # @overload describe_access_policy(params = {})
    # @param [Hash] params ({})
    def describe_access_policy(params = {}, options = {})
      req = build_request(:describe_access_policy, params)
      req.send_request(options)
    end

    # Retrieves information about an asset.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset.
    #
    # @return [Types::DescribeAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetResponse#asset_id #asset_id} => String
    #   * {Types::DescribeAssetResponse#asset_arn #asset_arn} => String
    #   * {Types::DescribeAssetResponse#asset_name #asset_name} => String
    #   * {Types::DescribeAssetResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetResponse#asset_properties #asset_properties} => Array&lt;Types::AssetProperty&gt;
    #   * {Types::DescribeAssetResponse#asset_hierarchies #asset_hierarchies} => Array&lt;Types::AssetHierarchy&gt;
    #   * {Types::DescribeAssetResponse#asset_creation_date #asset_creation_date} => Time
    #   * {Types::DescribeAssetResponse#asset_last_update_date #asset_last_update_date} => Time
    #   * {Types::DescribeAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset({
    #     asset_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_arn #=> String
    #   resp.asset_name #=> String
    #   resp.asset_model_id #=> String
    #   resp.asset_properties #=> Array
    #   resp.asset_properties[0].id #=> String
    #   resp.asset_properties[0].name #=> String
    #   resp.asset_properties[0].alias #=> String
    #   resp.asset_properties[0].notification.topic #=> String
    #   resp.asset_properties[0].notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN"
    #   resp.asset_properties[0].unit #=> String
    #   resp.asset_hierarchies #=> Array
    #   resp.asset_hierarchies[0].id #=> String
    #   resp.asset_hierarchies[0].name #=> String
    #   resp.asset_creation_date #=> Time
    #   resp.asset_last_update_date #=> Time
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * asset_active
    #   * asset_not_exists
    #
    # @overload describe_asset(params = {})
    # @param [Hash] params ({})
    def describe_asset(params = {}, options = {})
      req = build_request(:describe_asset, params)
      req.send_request(options)
    end

    # Retrieves information about an asset model.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model.
    #
    # @return [Types::DescribeAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetModelResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_arn #asset_model_arn} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_name #asset_model_name} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_description #asset_model_description} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_properties #asset_model_properties} => Array&lt;Types::AssetModelProperty&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_hierarchies #asset_model_hierarchies} => Array&lt;Types::AssetModelHierarchy&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_creation_date #asset_model_creation_date} => Time
    #   * {Types::DescribeAssetModelResponse#asset_model_last_update_date #asset_model_last_update_date} => Time
    #   * {Types::DescribeAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_model({
    #     asset_model_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_id #=> String
    #   resp.asset_model_arn #=> String
    #   resp.asset_model_name #=> String
    #   resp.asset_model_description #=> String
    #   resp.asset_model_properties #=> Array
    #   resp.asset_model_properties[0].id #=> String
    #   resp.asset_model_properties[0].name #=> String
    #   resp.asset_model_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN"
    #   resp.asset_model_properties[0].unit #=> String
    #   resp.asset_model_properties[0].type.attribute.default_value #=> String
    #   resp.asset_model_properties[0].type.transform.expression #=> String
    #   resp.asset_model_properties[0].type.transform.variables #=> Array
    #   resp.asset_model_properties[0].type.transform.variables[0].name #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.property_id #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_properties[0].type.metric.expression #=> String
    #   resp.asset_model_properties[0].type.metric.variables #=> Array
    #   resp.asset_model_properties[0].type.metric.variables[0].name #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.property_id #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_properties[0].type.metric.window.tumbling.interval #=> String
    #   resp.asset_model_hierarchies #=> Array
    #   resp.asset_model_hierarchies[0].id #=> String
    #   resp.asset_model_hierarchies[0].name #=> String
    #   resp.asset_model_hierarchies[0].child_asset_model_id #=> String
    #   resp.asset_model_creation_date #=> Time
    #   resp.asset_model_last_update_date #=> Time
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * asset_model_active
    #   * asset_model_not_exists
    #
    # @overload describe_asset_model(params = {})
    # @param [Hash] params ({})
    def describe_asset_model(params = {}, options = {})
      req = build_request(:describe_asset_model, params)
      req.send_request(options)
    end

    # Retrieves information about an asset property.
    #
    # <note markdown="1"> When you call this operation for an attribute property, this response
    # includes the default attribute value that you define in the asset
    # model. If you update the default value in the model, this operation's
    # response includes the new default value.
    #
    #  </note>
    #
    # This operation doesn't return the value of the asset property. To get
    # the value of an asset property, use [GetAssetPropertyValue][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset.
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property.
    #
    # @return [Types::DescribeAssetPropertyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetPropertyResponse#asset_id #asset_id} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_name #asset_name} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_property #asset_property} => Types::Property
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_property({
    #     asset_id: "ID", # required
    #     property_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_name #=> String
    #   resp.asset_model_id #=> String
    #   resp.asset_property.id #=> String
    #   resp.asset_property.name #=> String
    #   resp.asset_property.alias #=> String
    #   resp.asset_property.notification.topic #=> String
    #   resp.asset_property.notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_property.data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN"
    #   resp.asset_property.unit #=> String
    #   resp.asset_property.type.attribute.default_value #=> String
    #   resp.asset_property.type.transform.expression #=> String
    #   resp.asset_property.type.transform.variables #=> Array
    #   resp.asset_property.type.transform.variables[0].name #=> String
    #   resp.asset_property.type.transform.variables[0].value.property_id #=> String
    #   resp.asset_property.type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_property.type.metric.expression #=> String
    #   resp.asset_property.type.metric.variables #=> Array
    #   resp.asset_property.type.metric.variables[0].name #=> String
    #   resp.asset_property.type.metric.variables[0].value.property_id #=> String
    #   resp.asset_property.type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_property.type.metric.window.tumbling.interval #=> String
    #
    # @overload describe_asset_property(params = {})
    # @param [Hash] params ({})
    def describe_asset_property(params = {}, options = {})
      req = build_request(:describe_asset_property, params)
      req.send_request(options)
    end

    # Retrieves information about a dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard.
    #
    # @return [Types::DescribeDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::DescribeDashboardResponse#dashboard_name #dashboard_name} => String
    #   * {Types::DescribeDashboardResponse#project_id #project_id} => String
    #   * {Types::DescribeDashboardResponse#dashboard_description #dashboard_description} => String
    #   * {Types::DescribeDashboardResponse#dashboard_definition #dashboard_definition} => String
    #   * {Types::DescribeDashboardResponse#dashboard_creation_date #dashboard_creation_date} => Time
    #   * {Types::DescribeDashboardResponse#dashboard_last_update_date #dashboard_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard({
    #     dashboard_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_name #=> String
    #   resp.project_id #=> String
    #   resp.dashboard_description #=> String
    #   resp.dashboard_definition #=> String
    #   resp.dashboard_creation_date #=> Time
    #   resp.dashboard_last_update_date #=> Time
    #
    # @overload describe_dashboard(params = {})
    # @param [Hash] params ({})
    def describe_dashboard(params = {}, options = {})
      req = build_request(:describe_dashboard, params)
      req.send_request(options)
    end

    # Retrieves information about a gateway.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway device.
    #
    # @return [Types::DescribeGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayResponse#gateway_name #gateway_name} => String
    #   * {Types::DescribeGatewayResponse#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeGatewayResponse#gateway_platform #gateway_platform} => Types::GatewayPlatform
    #   * {Types::DescribeGatewayResponse#gateway_capability_summaries #gateway_capability_summaries} => Array&lt;Types::GatewayCapabilitySummary&gt;
    #   * {Types::DescribeGatewayResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeGatewayResponse#last_update_date #last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway({
    #     gateway_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.gateway_name #=> String
    #   resp.gateway_arn #=> String
    #   resp.gateway_platform.greengrass.group_arn #=> String
    #   resp.gateway_capability_summaries #=> Array
    #   resp.gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.gateway_capability_summaries[0].capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED"
    #   resp.creation_date #=> Time
    #   resp.last_update_date #=> Time
    #
    # @overload describe_gateway(params = {})
    # @param [Hash] params ({})
    def describe_gateway(params = {}, options = {})
      req = build_request(:describe_gateway, params)
      req.send_request(options)
    end

    # Retrieves information about a gateway capability configuration. Each
    # gateway capability defines data sources for a gateway. A capability
    # configuration can contain multiple data source configurations. If you
    # define OPC-UA sources for a gateway in the AWS IoT SiteWise console,
    # all of your OPC-UA sources are stored in one capability configuration.
    # To list all capability configurations for a gateway, use
    # [DescribeGateway][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway that defines the capability configuration.
    #
    # @option params [required, String] :capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC-UA sources from the AWS IoT SiteWise console, your
    #   OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:version`, where `version` is a number such
    #   as `1`.
    #
    # @return [Types::DescribeGatewayCapabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_namespace #capability_namespace} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_configuration #capability_configuration} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_sync_status #capability_sync_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_capability_configuration({
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.capability_namespace #=> String
    #   resp.capability_configuration #=> String
    #   resp.capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED"
    #
    # @overload describe_gateway_capability_configuration(params = {})
    # @param [Hash] params ({})
    def describe_gateway_capability_configuration(params = {}, options = {})
      req = build_request(:describe_gateway_capability_configuration, params)
      req.send_request(options)
    end

    # Retrieves the current AWS IoT SiteWise logging options.
    #
    # @return [Types::DescribeLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingOptionsResponse#logging_options #logging_options} => Types::LoggingOptions
    #
    # @example Response structure
    #
    #   resp.logging_options.level #=> String, one of "ERROR", "INFO", "OFF"
    #
    # @overload describe_logging_options(params = {})
    # @param [Hash] params ({})
    def describe_logging_options(params = {}, options = {})
      req = build_request(:describe_logging_options, params)
      req.send_request(options)
    end

    # Retrieves information about a portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal.
    #
    # @return [Types::DescribePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortalResponse#portal_id #portal_id} => String
    #   * {Types::DescribePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::DescribePortalResponse#portal_name #portal_name} => String
    #   * {Types::DescribePortalResponse#portal_description #portal_description} => String
    #   * {Types::DescribePortalResponse#portal_client_id #portal_client_id} => String
    #   * {Types::DescribePortalResponse#portal_start_url #portal_start_url} => String
    #   * {Types::DescribePortalResponse#portal_contact_email #portal_contact_email} => String
    #   * {Types::DescribePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #   * {Types::DescribePortalResponse#portal_creation_date #portal_creation_date} => Time
    #   * {Types::DescribePortalResponse#portal_last_update_date #portal_last_update_date} => Time
    #   * {Types::DescribePortalResponse#portal_logo_image_location #portal_logo_image_location} => Types::ImageLocation
    #   * {Types::DescribePortalResponse#role_arn #role_arn} => String
    #   * {Types::DescribePortalResponse#portal_auth_mode #portal_auth_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portal({
    #     portal_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.portal_name #=> String
    #   resp.portal_description #=> String
    #   resp.portal_client_id #=> String
    #   resp.portal_start_url #=> String
    #   resp.portal_contact_email #=> String
    #   resp.portal_status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #   resp.portal_creation_date #=> Time
    #   resp.portal_last_update_date #=> Time
    #   resp.portal_logo_image_location.id #=> String
    #   resp.portal_logo_image_location.url #=> String
    #   resp.role_arn #=> String
    #   resp.portal_auth_mode #=> String, one of "IAM", "SSO"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * portal_active
    #   * portal_not_exists
    #
    # @overload describe_portal(params = {})
    # @param [Hash] params ({})
    def describe_portal(params = {}, options = {})
      req = build_request(:describe_portal, params)
      req.send_request(options)
    end

    # Retrieves information about a project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @return [Types::DescribeProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResponse#project_id #project_id} => String
    #   * {Types::DescribeProjectResponse#project_arn #project_arn} => String
    #   * {Types::DescribeProjectResponse#project_name #project_name} => String
    #   * {Types::DescribeProjectResponse#portal_id #portal_id} => String
    #   * {Types::DescribeProjectResponse#project_description #project_description} => String
    #   * {Types::DescribeProjectResponse#project_creation_date #project_creation_date} => Time
    #   * {Types::DescribeProjectResponse#project_last_update_date #project_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     project_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.project_arn #=> String
    #   resp.project_name #=> String
    #   resp.portal_id #=> String
    #   resp.project_description #=> String
    #   resp.project_creation_date #=> Time
    #   resp.project_last_update_date #=> Time
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Disassociates a child asset from the given parent asset through a
    # hierarchy defined in the parent asset's model.
    #
    # @option params [required, String] :asset_id
    #   The ID of the parent asset from which to disassociate the child asset.
    #
    # @option params [required, String] :hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. Hierarchies allow
    #   different groupings of assets to be formed that all come from the same
    #   asset model. You can use the hierarchy ID to identify the correct
    #   asset to disassociate. For more information, see [Asset
    #   hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [required, String] :child_asset_id
    #   The ID of the child asset to disassociate.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_assets({
    #     asset_id: "ID", # required
    #     hierarchy_id: "ID", # required
    #     child_asset_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload disassociate_assets(params = {})
    # @param [Hash] params ({})
    def disassociate_assets(params = {}, options = {})
      req = build_request(:disassociate_assets, params)
      req.send_request(options)
    end

    # Gets aggregated values for an asset property. For more information,
    # see [Querying aggregates][1] in the *AWS IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset.
    #
    # @option params [String] :property_id
    #   The ID of the asset property.
    #
    # @option params [String] :property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [required, Array<String>] :aggregate_types
    #   The data aggregating function.
    #
    # @option params [required, String] :resolution
    #   The time interval over which to aggregate data.
    #
    # @option params [Array<String>] :qualities
    #   The quality by which to filter asset data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The exclusive start of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [String] :time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 100
    #
    # @return [Types::GetAssetPropertyAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyAggregatesResponse#aggregated_values #aggregated_values} => Array&lt;Types::AggregatedValue&gt;
    #   * {Types::GetAssetPropertyAggregatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_aggregates({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     aggregate_types: ["AVERAGE"], # required, accepts AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
    #     resolution: "Resolution", # required
    #     qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregated_values #=> Array
    #   resp.aggregated_values[0].timestamp #=> Time
    #   resp.aggregated_values[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.aggregated_values[0].value.average #=> Float
    #   resp.aggregated_values[0].value.count #=> Float
    #   resp.aggregated_values[0].value.maximum #=> Float
    #   resp.aggregated_values[0].value.minimum #=> Float
    #   resp.aggregated_values[0].value.sum #=> Float
    #   resp.aggregated_values[0].value.standard_deviation #=> Float
    #   resp.next_token #=> String
    #
    # @overload get_asset_property_aggregates(params = {})
    # @param [Hash] params ({})
    def get_asset_property_aggregates(params = {}, options = {})
      req = build_request(:get_asset_property_aggregates, params)
      req.send_request(options)
    end

    # Gets an asset property's current value. For more information, see
    # [Querying current values][1] in the *AWS IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset.
    #
    # @option params [String] :property_id
    #   The ID of the asset property.
    #
    # @option params [String] :property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @return [Types::GetAssetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyValueResponse#property_value #property_value} => Types::AssetPropertyValue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #   })
    #
    # @example Response structure
    #
    #   resp.property_value.value.string_value #=> String
    #   resp.property_value.value.integer_value #=> Integer
    #   resp.property_value.value.double_value #=> Float
    #   resp.property_value.value.boolean_value #=> Boolean
    #   resp.property_value.timestamp.time_in_seconds #=> Integer
    #   resp.property_value.timestamp.offset_in_nanos #=> Integer
    #   resp.property_value.quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #
    # @overload get_asset_property_value(params = {})
    # @param [Hash] params ({})
    def get_asset_property_value(params = {}, options = {})
      req = build_request(:get_asset_property_value, params)
      req.send_request(options)
    end

    # Gets the history of an asset property's values. For more information,
    # see [Querying historical values][1] in the *AWS IoT SiteWise User
    # Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset.
    #
    # @option params [String] :property_id
    #   The ID of the asset property.
    #
    # @option params [String] :property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   The exclusive start of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Array<String>] :qualities
    #   The quality by which to filter asset data.
    #
    # @option params [String] :time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 100
    #
    # @return [Types::GetAssetPropertyValueHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyValueHistoryResponse#asset_property_value_history #asset_property_value_history} => Array&lt;Types::AssetPropertyValue&gt;
    #   * {Types::GetAssetPropertyValueHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value_history({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #     time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_property_value_history #=> Array
    #   resp.asset_property_value_history[0].value.string_value #=> String
    #   resp.asset_property_value_history[0].value.integer_value #=> Integer
    #   resp.asset_property_value_history[0].value.double_value #=> Float
    #   resp.asset_property_value_history[0].value.boolean_value #=> Boolean
    #   resp.asset_property_value_history[0].timestamp.time_in_seconds #=> Integer
    #   resp.asset_property_value_history[0].timestamp.offset_in_nanos #=> Integer
    #   resp.asset_property_value_history[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.next_token #=> String
    #
    # @overload get_asset_property_value_history(params = {})
    # @param [Hash] params ({})
    def get_asset_property_value_history(params = {}, options = {})
      req = build_request(:get_asset_property_value_history, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of access policies for an identity (an AWS
    # SSO user, an AWS SSO group, or an IAM user) or an AWS IoT SiteWise
    # Monitor resource (a portal or project).
    #
    # @option params [String] :identity_type
    #   The type of identity (AWS SSO user, AWS SSO group, or IAM user). This
    #   parameter is required if you specify `identityId`.
    #
    # @option params [String] :identity_id
    #   The ID of the identity. This parameter is required if you specify
    #   `USER` or `GROUP` for `identityType`.
    #
    # @option params [String] :resource_type
    #   The type of resource (portal or project). This parameter is required
    #   if you specify `resourceId`.
    #
    # @option params [String] :resource_id
    #   The ID of the resource. This parameter is required if you specify
    #   `resourceType`.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user. For more information, see [IAM ARNs][1] in
    #   the *IAM User Guide*. This parameter is required if you specify `IAM`
    #   for `identityType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPoliciesResponse#access_policy_summaries #access_policy_summaries} => Array&lt;Types::AccessPolicySummary&gt;
    #   * {Types::ListAccessPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_policies({
    #     identity_type: "USER", # accepts USER, GROUP, IAM
    #     identity_id: "IdentityId",
    #     resource_type: "PORTAL", # accepts PORTAL, PROJECT
    #     resource_id: "ID",
    #     iam_arn: "ARN",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_summaries #=> Array
    #   resp.access_policy_summaries[0].id #=> String
    #   resp.access_policy_summaries[0].identity.user.id #=> String
    #   resp.access_policy_summaries[0].identity.group.id #=> String
    #   resp.access_policy_summaries[0].identity.iam_user.arn #=> String
    #   resp.access_policy_summaries[0].resource.portal.id #=> String
    #   resp.access_policy_summaries[0].resource.project.id #=> String
    #   resp.access_policy_summaries[0].permission #=> String, one of "ADMINISTRATOR", "VIEWER"
    #   resp.access_policy_summaries[0].creation_date #=> Time
    #   resp.access_policy_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_access_policies(params = {})
    # @param [Hash] params ({})
    def list_access_policies(params = {}, options = {})
      req = build_request(:list_access_policies, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of summaries of all asset models.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListAssetModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetModelsResponse#asset_model_summaries #asset_model_summaries} => Array&lt;Types::AssetModelSummary&gt;
    #   * {Types::ListAssetModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_summaries #=> Array
    #   resp.asset_model_summaries[0].id #=> String
    #   resp.asset_model_summaries[0].arn #=> String
    #   resp.asset_model_summaries[0].name #=> String
    #   resp.asset_model_summaries[0].description #=> String
    #   resp.asset_model_summaries[0].creation_date #=> Time
    #   resp.asset_model_summaries[0].last_update_date #=> Time
    #   resp.asset_model_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_summaries[0].status.error.message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_asset_models(params = {})
    # @param [Hash] params ({})
    def list_asset_models(params = {}, options = {})
      req = build_request(:list_asset_models, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of asset summaries.
    #
    # You can use this operation to do the following:
    #
    # * List assets based on a specific asset model.
    #
    # * List top-level assets.
    #
    # You can't use this operation to list all assets. To retrieve
    # summaries for all of your assets, use [ListAssetModels][1] to get all
    # of your asset model IDs. Then, use ListAssets to get all assets for
    # each asset model.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @option params [String] :asset_model_id
    #   The ID of the asset model by which to filter the list of assets. This
    #   parameter is required if you choose `ALL` for `filter`.
    #
    # @option params [String] :filter
    #   The filter for the requested list of assets. Choose one of the
    #   following options:
    #
    #   * `ALL` – The list includes all assets for a given asset model ID. The
    #     `assetModelId` parameter is required if you filter by `ALL`.
    #
    #   * `TOP_LEVEL` – The list includes only top-level assets in the asset
    #     hierarchy tree.
    #
    #   Default: `ALL`
    #
    # @return [Types::ListAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetsResponse#asset_summaries #asset_summaries} => Array&lt;Types::AssetSummary&gt;
    #   * {Types::ListAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_id: "ID",
    #     filter: "ALL", # accepts ALL, TOP_LEVEL
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_summaries #=> Array
    #   resp.asset_summaries[0].id #=> String
    #   resp.asset_summaries[0].arn #=> String
    #   resp.asset_summaries[0].name #=> String
    #   resp.asset_summaries[0].asset_model_id #=> String
    #   resp.asset_summaries[0].creation_date #=> Time
    #   resp.asset_summaries[0].last_update_date #=> Time
    #   resp.asset_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_summaries[0].status.error.message #=> String
    #   resp.asset_summaries[0].hierarchies #=> Array
    #   resp.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_assets(params = {})
    # @param [Hash] params ({})
    def list_assets(params = {}, options = {})
      req = build_request(:list_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of associated assets.
    #
    # You can use this operation to do the following:
    #
    # * List child assets associated to a parent asset by a hierarchy that
    #   you specify.
    #
    # * List an asset's parent asset.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to query.
    #
    # @option params [String] :hierarchy_id
    #   The ID of the hierarchy by which child assets are associated to the
    #   asset. To find a hierarchy ID, use the [DescribeAsset][1] or
    #   [DescribeAssetModel][2] operations. This parameter is required if you
    #   choose `CHILD` for `traversalDirection`.
    #
    #   For more information, see [Asset hierarchies][3] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html
    #   [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [String] :traversal_direction
    #   The direction to list associated assets. Choose one of the following
    #   options:
    #
    #   * `CHILD` – The list includes all child assets associated to the
    #     asset. The `hierarchyId` parameter is required if you choose
    #     `CHILD`.
    #
    #   * `PARENT` – The list includes the asset's parent asset.
    #
    #   Default: `CHILD`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListAssociatedAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedAssetsResponse#asset_summaries #asset_summaries} => Array&lt;Types::AssociatedAssetsSummary&gt;
    #   * {Types::ListAssociatedAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_assets({
    #     asset_id: "ID", # required
    #     hierarchy_id: "ID",
    #     traversal_direction: "PARENT", # accepts PARENT, CHILD
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_summaries #=> Array
    #   resp.asset_summaries[0].id #=> String
    #   resp.asset_summaries[0].arn #=> String
    #   resp.asset_summaries[0].name #=> String
    #   resp.asset_summaries[0].asset_model_id #=> String
    #   resp.asset_summaries[0].creation_date #=> Time
    #   resp.asset_summaries[0].last_update_date #=> Time
    #   resp.asset_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_summaries[0].status.error.message #=> String
    #   resp.asset_summaries[0].hierarchies #=> Array
    #   resp.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_associated_assets(params = {})
    # @param [Hash] params ({})
    def list_associated_assets(params = {}, options = {})
      req = build_request(:list_associated_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of dashboards for an AWS IoT SiteWise
    # Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboard_summaries #dashboard_summaries} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summaries #=> Array
    #   resp.dashboard_summaries[0].id #=> String
    #   resp.dashboard_summaries[0].name #=> String
    #   resp.dashboard_summaries[0].description #=> String
    #   resp.dashboard_summaries[0].creation_date #=> Time
    #   resp.dashboard_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of gateways.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysResponse#gateway_summaries #gateway_summaries} => Array&lt;Types::GatewaySummary&gt;
    #   * {Types::ListGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_summaries #=> Array
    #   resp.gateway_summaries[0].gateway_id #=> String
    #   resp.gateway_summaries[0].gateway_name #=> String
    #   resp.gateway_summaries[0].gateway_capability_summaries #=> Array
    #   resp.gateway_summaries[0].gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.gateway_summaries[0].gateway_capability_summaries[0].capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED"
    #   resp.gateway_summaries[0].creation_date #=> Time
    #   resp.gateway_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of AWS IoT SiteWise Monitor portals.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListPortalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortalsResponse#portal_summaries #portal_summaries} => Array&lt;Types::PortalSummary&gt;
    #   * {Types::ListPortalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_summaries #=> Array
    #   resp.portal_summaries[0].id #=> String
    #   resp.portal_summaries[0].name #=> String
    #   resp.portal_summaries[0].description #=> String
    #   resp.portal_summaries[0].start_url #=> String
    #   resp.portal_summaries[0].creation_date #=> Time
    #   resp.portal_summaries[0].last_update_date #=> Time
    #   resp.portal_summaries[0].role_arn #=> String
    #   resp.portal_summaries[0].status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_summaries[0].status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_summaries[0].status.error.message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_portals(params = {})
    # @param [Hash] params ({})
    def list_portals(params = {}, options = {})
      req = build_request(:list_portals, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of assets associated with an AWS IoT
    # SiteWise Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectAssetsResponse#asset_ids #asset_ids} => Array&lt;String&gt;
    #   * {Types::ListProjectAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_assets({
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_ids #=> Array
    #   resp.asset_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_project_assets(params = {})
    # @param [Hash] params ({})
    def list_project_assets(params = {}, options = {})
      req = build_request(:list_project_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor
    # portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#project_summaries #project_summaries} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     portal_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project_summaries #=> Array
    #   resp.project_summaries[0].id #=> String
    #   resp.project_summaries[0].name #=> String
    #   resp.project_summaries[0].description #=> String
    #   resp.project_summaries[0].creation_date #=> Time
    #   resp.project_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Retrieves the list of tags for an AWS IoT SiteWise resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets logging options for AWS IoT SiteWise.
    #
    # @option params [required, Types::LoggingOptions] :logging_options
    #   The logging options to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options({
    #     logging_options: { # required
    #       level: "ERROR", # required, accepts ERROR, INFO, OFF
    #     },
    #   })
    #
    # @overload put_logging_options(params = {})
    # @param [Hash] params ({})
    def put_logging_options(params = {}, options = {})
      req = build_request(:put_logging_options, params)
      req.send_request(options)
    end

    # Adds tags to an AWS IoT SiteWise resource. If a tag already exists for
    # the resource, this operation updates the tag's value.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to tag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the resource. For
    #   more information, see [Tagging your AWS IoT SiteWise resources][1] in
    #   the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an AWS IoT SiteWise resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to untag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys for tags to remove from the resource.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing access policy that specifies an identity's access
    # to an AWS IoT SiteWise Monitor portal or project resource.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy.
    #
    # @option params [required, Types::Identity] :access_policy_identity
    #   The identity for this access policy. Choose an AWS SSO user, an AWS
    #   SSO group, or an IAM user.
    #
    # @option params [required, Types::Resource] :access_policy_resource
    #   The AWS IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #
    # @option params [required, String] :access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_policy({
    #     access_policy_id: "ID", # required
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "ARN", # required
    #       },
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       },
    #     },
    #     access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_access_policy(params = {})
    # @param [Hash] params ({})
    def update_access_policy(params = {}, options = {})
      req = build_request(:update_access_policy, params)
      req.send_request(options)
    end

    # Updates an asset's name. For more information, see [Updating assets
    # and models][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to update.
    #
    # @option params [required, String] :asset_name
    #   A unique, friendly name for the asset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset({
    #     asset_id: "ID", # required
    #     asset_name: "Name", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #
    # @overload update_asset(params = {})
    # @param [Hash] params ({})
    def update_asset(params = {}, options = {})
      req = build_request(:update_asset, params)
      req.send_request(options)
    end

    # Updates an asset model and all of the assets that were created from
    # the model. Each asset created from the model inherits the updated
    # asset model's property and hierarchy definitions. For more
    # information, see [Updating assets and models][1] in the *AWS IoT
    # SiteWise User Guide*.
    #
    # This operation overwrites the existing model with the provided model.
    # To avoid deleting your asset model's properties or hierarchies, you
    # must include their IDs and definitions in the updated asset model
    # payload. For more information, see [DescribeAssetModel][2].
    #
    #  If you remove a property from an asset model, AWS IoT SiteWise
    # deletes
    # all previous data for that property. If you remove a hierarchy
    # definition from an asset model, AWS IoT SiteWise disassociates every
    # asset associated with that hierarchy. You can't change the type or
    # data type of an existing property.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model to update.
    #
    # @option params [required, String] :asset_model_name
    #   A unique, friendly name for the asset model.
    #
    # @option params [String] :asset_model_description
    #   A description for the asset model.
    #
    # @option params [Array<Types::AssetModelProperty>] :asset_model_properties
    #   The updated property definitions of the asset model. For more
    #   information, see [Asset properties][1] in the *AWS IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelHierarchy>] :asset_model_hierarchies
    #   The updated hierarchy definitions of the asset model. Each hierarchy
    #   specifies an asset model whose assets can be children of any other
    #   assets created from this asset model. For more information, see [Asset
    #   hierarchies][1] in the *AWS IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_model({
    #     asset_model_id: "ID", # required
    #     asset_model_name: "Name", # required
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         id: "ID",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro", # required
    #                   hierarchy_id: "Macro",
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #               },
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: "ID",
    #         name: "Name", # required
    #         child_asset_model_id: "ID", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #
    # @overload update_asset_model(params = {})
    # @param [Hash] params ({})
    def update_asset_model(params = {}, options = {})
      req = build_request(:update_asset_model, params)
      req.send_request(options)
    end

    # Updates an asset property's alias and notification state.
    #
    # This operation overwrites the property's existing alias and
    # notification state. To keep your existing property's alias or
    # notification state, you must include the existing values in the
    # UpdateAssetProperty request. For more information, see
    # [DescribeAssetProperty][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to be updated.
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property to be updated.
    #
    # @option params [String] :property_alias
    #   The property alias that identifies the property, such as an OPC-UA
    #   server data stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *AWS IoT SiteWise User Guide*.
    #
    #   If you omit this parameter, the alias is removed from the property.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [String] :property_notification_state
    #   The MQTT notification state (enabled or disabled) for this asset
    #   property. When the notification state is enabled, AWS IoT SiteWise
    #   publishes property value updates to a unique MQTT topic. For more
    #   information, see [Interacting with other services][1] in the *AWS IoT
    #   SiteWise User Guide*.
    #
    #   If you omit this parameter, the notification state is set to
    #   `DISABLED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_property({
    #     asset_id: "ID", # required
    #     property_id: "ID", # required
    #     property_alias: "PropertyAlias",
    #     property_notification_state: "ENABLED", # accepts ENABLED, DISABLED
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_asset_property(params = {})
    # @param [Hash] params ({})
    def update_asset_property(params = {}, options = {})
      req = build_request(:update_asset_property, params)
      req.send_request(options)
    end

    # Updates an AWS IoT SiteWise Monitor dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard to update.
    #
    # @option params [required, String] :dashboard_name
    #   A new friendly name for the dashboard.
    #
    # @option params [String] :dashboard_description
    #   A new description for the dashboard.
    #
    # @option params [required, String] :dashboard_definition
    #   The new dashboard definition, as specified in a JSON literal. For
    #   detailed information, see [Creating dashboards (CLI)][1] in the *AWS
    #   IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard({
    #     dashboard_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates a gateway's name.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to update.
    #
    # @option params [required, String] :gateway_name
    #   A unique, friendly name for the gateway.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway({
    #     gateway_id: "ID", # required
    #     gateway_name: "Name", # required
    #   })
    #
    # @overload update_gateway(params = {})
    # @param [Hash] params ({})
    def update_gateway(params = {}, options = {})
      req = build_request(:update_gateway, params)
      req.send_request(options)
    end

    # Updates a gateway capability configuration or defines a new capability
    # configuration. Each gateway capability defines data sources for a
    # gateway. A capability configuration can contain multiple data source
    # configurations. If you define OPC-UA sources for a gateway in the AWS
    # IoT SiteWise console, all of your OPC-UA sources are stored in one
    # capability configuration. To list all capability configurations for a
    # gateway, use [DescribeGateway][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to be updated.
    #
    # @option params [required, String] :capability_namespace
    #   The namespace of the gateway capability configuration to be updated.
    #   For example, if you configure OPC-UA sources from the AWS IoT SiteWise
    #   console, your OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:version`, where `version` is a number such
    #   as `1`.
    #
    # @option params [required, String] :capability_configuration
    #   The JSON document that defines the configuration for the gateway
    #   capability. For more information, see [Configuring data sources
    #   (CLI)][1] in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli
    #
    # @return [Types::UpdateGatewayCapabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayCapabilityConfigurationResponse#capability_namespace #capability_namespace} => String
    #   * {Types::UpdateGatewayCapabilityConfigurationResponse#capability_sync_status #capability_sync_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_capability_configuration({
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #     capability_configuration: "CapabilityConfiguration", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capability_namespace #=> String
    #   resp.capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED"
    #
    # @overload update_gateway_capability_configuration(params = {})
    # @param [Hash] params ({})
    def update_gateway_capability_configuration(params = {}, options = {})
      req = build_request(:update_gateway_capability_configuration, params)
      req.send_request(options)
    end

    # Updates an AWS IoT SiteWise Monitor portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal to update.
    #
    # @option params [required, String] :portal_name
    #   A new friendly name for the portal.
    #
    # @option params [String] :portal_description
    #   A new description for the portal.
    #
    # @option params [required, String] :portal_contact_email
    #   The AWS administrator's contact email address.
    #
    # @option params [Types::Image] :portal_logo_image
    #   Contains an image that is one of the following:
    #
    #   * An image file. Choose this option to upload a new image.
    #
    #   * The ID of an existing image. Choose this option to keep an existing
    #     image.
    #
    # @option params [required, String] :role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your AWS IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for AWS IoT SiteWise Monitor][2]
    #   in the *AWS IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal({
    #     portal_id: "ID", # required
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     portal_logo_image: {
    #       id: "ID",
    #       file: {
    #         data: "data", # required
    #         type: "PNG", # required, accepts PNG
    #       },
    #     },
    #     role_arn: "ARN", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #
    # @overload update_portal(params = {})
    # @param [Hash] params ({})
    def update_portal(params = {}, options = {})
      req = build_request(:update_portal, params)
      req.send_request(options)
    end

    # Updates an AWS IoT SiteWise Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project to update.
    #
    # @option params [required, String] :project_name
    #   A new friendly name for the project.
    #
    # @option params [String] :project_description
    #   A new description for the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     project_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
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
      context[:gem_name] = 'aws-sdk-iotsitewise'
      context[:gem_version] = '1.12.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name            | params                        | :delay   | :max_attempts |
    # | ---------------------- | ----------------------------- | -------- | ------------- |
    # | asset_active           | {Client#describe_asset}       | 3        | 20            |
    # | asset_model_active     | {Client#describe_asset_model} | 3        | 20            |
    # | asset_model_not_exists | {Client#describe_asset_model} | 3        | 20            |
    # | asset_not_exists       | {Client#describe_asset}       | 3        | 20            |
    # | portal_active          | {Client#describe_portal}      | 3        | 20            |
    # | portal_not_exists      | {Client#describe_portal}      | 3        | 20            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
      {
        asset_active: Waiters::AssetActive,
        asset_model_active: Waiters::AssetModelActive,
        asset_model_not_exists: Waiters::AssetModelNotExists,
        asset_not_exists: Waiters::AssetNotExists,
        portal_active: Waiters::PortalActive,
        portal_not_exists: Waiters::PortalNotExists
      }
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
