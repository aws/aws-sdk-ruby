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

Aws::Plugins::GlobalConfiguration.add_identifier(:storagegateway)

module Aws::StorageGateway
  # An API client for StorageGateway.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::StorageGateway::Client.new(
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

    @identifier = :storagegateway

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

    # Activates the gateway you previously deployed on your host. In the
    # activation process, you specify information such as the AWS Region
    # that you want to use for storing snapshots or tapes, the time zone for
    # scheduled snapshots the gateway snapshot schedule window, an
    # activation key, and a name for your gateway. The activation process
    # also associates your gateway with your account. For more information,
    # see UpdateGatewayInformation.
    #
    # <note markdown="1"> You must turn on the gateway VM before you can activate your gateway.
    #
    #  </note>
    #
    # @option params [required, String] :activation_key
    #   Your gateway activation key. You can obtain the activation key by
    #   sending an HTTP GET request with redirects enabled to the gateway IP
    #   address (port 80). The redirect URL returned in the response provides
    #   you the activation key for your gateway in the query string parameter
    #   `activationKey`. It may also include other activation-related
    #   parameters, however, these are merely defaults -- the arguments you
    #   pass to the `ActivateGateway` API call determine the actual
    #   configuration of your gateway.
    #
    #   For more information, see [Getting activation key][1] in the *AWS
    #   Storage Gateway User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html
    #
    # @option params [required, String] :gateway_name
    #   The name you configured for your gateway.
    #
    # @option params [required, String] :gateway_timezone
    #   A value that indicates the time zone you want to set for the gateway.
    #   The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For
    #   example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00
    #   indicates the time is 2 hours ahead of GMT. The time zone is used, for
    #   example, for scheduling snapshots and your gateway's maintenance
    #   schedule.
    #
    # @option params [required, String] :gateway_region
    #   A value that indicates the AWS Region where you want to store your
    #   data. The gateway AWS Region specified must be the same AWS Region as
    #   the AWS Region in your `Host` header in the request. For more
    #   information about available AWS Regions and endpoints for AWS Storage
    #   Gateway, see [AWS Storage Gateway endpoints and quotas][1] in the *AWS
    #   General Reference*.
    #
    #   Valid Values: See [AWS Storage Gateway endpoints and quotas][1] in the
    #   *AWS General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/sg.html
    #
    # @option params [String] :gateway_type
    #   A value that defines the type of gateway to activate. The type
    #   specified is critical to all later functions of the gateway and cannot
    #   be changed after activation. The default value is `CACHED`.
    #
    #   Valid Values: `STORED` \| `CACHED` \| `VTL` \| `FILE_S3`
    #
    # @option params [String] :tape_drive_type
    #   The value that indicates the type of tape drive to use for tape
    #   gateway. This field is optional.
    #
    #   Valid Values: `IBM-ULT3580-TD5`
    #
    # @option params [String] :medium_changer_type
    #   The value that indicates the type of medium changer to use for tape
    #   gateway. This field is optional.
    #
    #   Valid Values: `STK-L700` \| `AWS-Gateway-VTL` \| `IBM-03584L32-0402`
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that you can assign to the gateway. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   that can be represented in UTF-8 format, and the following special
    #   characters: + - = . \_ : / @. The maximum length of a tag's key is
    #   128 characters, and the maximum length for a tag's value is 256
    #   characters.
    #
    #    </note>
    #
    # @return [Types::ActivateGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateGatewayOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To activate the gateway
    #
    #   # Activates the gateway you previously deployed on your host.
    #
    #   resp = client.activate_gateway({
    #     activation_key: "29AV1-3OFV9-VVIUB-NKT0I-LRO6V", 
    #     gateway_name: "My_Gateway", 
    #     gateway_region: "us-east-1", 
    #     gateway_timezone: "GMT-12:00", 
    #     gateway_type: "STORED", 
    #     medium_changer_type: "AWS-Gateway-VTL", 
    #     tape_drive_type: "IBM-ULT3580-TD5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_gateway({
    #     activation_key: "ActivationKey", # required
    #     gateway_name: "GatewayName", # required
    #     gateway_timezone: "GatewayTimezone", # required
    #     gateway_region: "RegionId", # required
    #     gateway_type: "GatewayType",
    #     tape_drive_type: "TapeDriveType",
    #     medium_changer_type: "MediumChangerType",
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
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ActivateGateway AWS API Documentation
    #
    # @overload activate_gateway(params = {})
    # @param [Hash] params ({})
    def activate_gateway(params = {}, options = {})
      req = build_request(:activate_gateway, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as cache for a gateway.
    # This operation is only supported in the cached volume, tape, and file
    # gateway type (see [How AWS Storage Gateway works (architecture)][1].
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add cache, and one or more disk IDs that you want to
    # configure as cache.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, Array<String>] :disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #
    # @return [Types::AddCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddCacheOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To add a cache
    #
    #   # The following example shows a request that activates a gateway-stored volume.
    #
    #   resp = client.add_cache({
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:03:00.0-scsi-0:0:1:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_cache({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddCache AWS API Documentation
    #
    # @overload add_cache(params = {})
    # @param [Hash] params ({})
    def add_cache(params = {}, options = {})
      req = build_request(:add_cache, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource. You use tags to add
    # metadata to resources, which you can use to categorize these
    # resources. For example, you can categorize resources by purpose,
    # owner, environment, or team. Each tag consists of a key and a value,
    # which you define. You can add tags to the following AWS Storage
    # Gateway resources:
    #
    # * Storage gateways of all types
    #
    # * Storage volumes
    #
    # * Virtual tapes
    #
    # * NFS and SMB file shares
    #
    # You can create a maximum of 50 tags for each resource. Virtual tapes
    # and storage volumes that are recovered to a new gateway maintain their
    # tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The key-value pair that represents the tag you want to add to the
    #   resource. The value can be an empty string.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::AddTagsToResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddTagsToResourceOutput#resource_arn #resource_arn} => String
    #
    #
    # @example Example: To add tags to resource
    #
    #   # Adds one or more tags to the specified resource.
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #     tags: [
    #       {
    #         key: "Dev Gatgeway Region", 
    #         value: "East Coast", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as upload buffer for a
    # specified gateway. This operation is supported for the stored volume,
    # cached volume and tape gateway types.
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add upload buffer, and one or more disk IDs that you
    # want to configure as upload buffer.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, Array<String>] :disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #
    # @return [Types::AddUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddUploadBufferOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To add upload buffer on local disk
    #
    #   # Configures one or more gateway local disks as upload buffer for a specified gateway.
    #
    #   resp = client.add_upload_buffer({
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:03:00.0-scsi-0:0:1:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_upload_buffer({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddUploadBuffer AWS API Documentation
    #
    # @overload add_upload_buffer(params = {})
    # @param [Hash] params ({})
    def add_upload_buffer(params = {}, options = {})
      req = build_request(:add_upload_buffer, params)
      req.send_request(options)
    end

    # Configures one or more gateway local disks as working storage for a
    # gateway. This operation is only supported in the stored volume gateway
    # type. This operation is deprecated in cached volume API version
    # 20120630. Use AddUploadBuffer instead.
    #
    # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
    # the AddUploadBuffer operation to add upload buffer to a stored volume
    # gateway.
    #
    #  </note>
    #
    # In the request, you specify the gateway Amazon Resource Name (ARN) to
    # which you want to add working storage, and one or more disk IDs that
    # you want to configure as working storage.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, Array<String>] :disk_ids
    #   An array of strings that identify disks that are to be configured as
    #   working storage. Each string has a minimum length of 1 and maximum
    #   length of 300. You can get the disk IDs from the ListLocalDisks API.
    #
    # @return [Types::AddWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddWorkingStorageOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To add storage on local disk
    #
    #   # Configures one or more gateway local disks as working storage for a gateway. (Working storage is also referred to as
    #   # upload buffer.)
    #
    #   resp = client.add_working_storage({
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:03:00.0-scsi-0:0:1:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_working_storage({
    #     gateway_arn: "GatewayARN", # required
    #     disk_ids: ["DiskId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AddWorkingStorage AWS API Documentation
    #
    # @overload add_working_storage(params = {})
    # @param [Hash] params ({})
    def add_working_storage(params = {}, options = {})
      req = build_request(:add_working_storage, params)
      req.send_request(options)
    end

    # Assigns a tape to a tape pool for archiving. The tape assigned to a
    # pool is archived in the S3 storage class that is associated with the
    # pool. When you use your backup application to eject the tape, the tape
    # is archived directly into the S3 storage class (S3 Glacier or S3
    # Glacier Deep Archive) that corresponds to the pool.
    #
    # Valid Values: `GLACIER` \| `DEEP_ARCHIVE`
    #
    # @option params [required, String] :tape_arn
    #   The unique Amazon Resource Name (ARN) of the virtual tape that you
    #   want to add to the tape pool.
    #
    # @option params [required, String] :pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.
    #
    #   Valid Values: `GLACIER` \| `DEEP_ARCHIVE`
    #
    # @option params [Boolean] :bypass_governance_retention
    #   Set permissions to bypass governance retention. If the lock type of
    #   the archived tape is `Governance`, the tape's archived age is not
    #   older than `RetentionLockInDays`, and the user does not already have
    #   `BypassGovernanceRetention`, setting this to TRUE enables the user to
    #   bypass the retention lock. This parameter is set to true by default
    #   for calls from the console.
    #
    #   Valid values: `TRUE` \| `FALSE`
    #
    # @return [Types::AssignTapePoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssignTapePoolOutput#tape_arn #tape_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.assign_tape_pool({
    #     tape_arn: "TapeARN", # required
    #     pool_id: "PoolId", # required
    #     bypass_governance_retention: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AssignTapePool AWS API Documentation
    #
    # @overload assign_tape_pool(params = {})
    # @param [Hash] params ({})
    def assign_tape_pool(params = {}, options = {})
      req = build_request(:assign_tape_pool, params)
      req.send_request(options)
    end

    # Connects a volume to an iSCSI connection and then attaches the volume
    # to the specified gateway. Detaching and attaching a volume enables you
    # to recover your data from one gateway to a different gateway without
    # creating a snapshot. It also makes it easier to move your volumes from
    # an on-premises gateway to a gateway hosted on an Amazon EC2 instance.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that you want to attach
    #   the volume to.
    #
    # @option params [String] :target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that was
    #   previously used for this volume as the new target name.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume to attach to the
    #   specified gateway.
    #
    # @option params [required, String] :network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Only IPv4 addresses are accepted. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #
    # @option params [String] :disk_id
    #   The unique device ID or other distinguishing data that identifies the
    #   local disk used to create the volume. This value is only required when
    #   you are attaching a stored volume.
    #
    # @return [Types::AttachVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachVolumeOutput#volume_arn #volume_arn} => String
    #   * {Types::AttachVolumeOutput#target_arn #target_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_volume({
    #     gateway_arn: "GatewayARN", # required
    #     target_name: "TargetName",
    #     volume_arn: "VolumeARN", # required
    #     network_interface_id: "NetworkInterfaceId", # required
    #     disk_id: "DiskId",
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/AttachVolume AWS API Documentation
    #
    # @overload attach_volume(params = {})
    # @param [Hash] params ({})
    def attach_volume(params = {}, options = {})
      req = build_request(:attach_volume, params)
      req.send_request(options)
    end

    # Cancels archiving of a virtual tape to the virtual tape shelf (VTS)
    # after the archiving process is initiated. This operation is only
    # supported in the tape gateway type.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
    #   archiving for.
    #
    # @return [Types::CancelArchivalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelArchivalOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To cancel virtual tape archiving
    #
    #   # Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated.
    #
    #   resp = client.cancel_archival({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_archival({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelArchival AWS API Documentation
    #
    # @overload cancel_archival(params = {})
    # @param [Hash] params ({})
    def cancel_archival(params = {}, options = {})
      req = build_request(:cancel_archival, params)
      req.send_request(options)
    end

    # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS)
    # to a gateway after the retrieval process is initiated. The virtual
    # tape is returned to the VTS. This operation is only supported in the
    # tape gateway type.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to cancel
    #   retrieval for.
    #
    # @return [Types::CancelRetrievalOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelRetrievalOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To cancel virtual tape retrieval
    #
    #   # Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is
    #   # initiated.
    #
    #   resp = client.cancel_retrieval({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_retrieval({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CancelRetrieval AWS API Documentation
    #
    # @overload cancel_retrieval(params = {})
    # @param [Hash] params ({})
    def cancel_retrieval(params = {}, options = {})
      req = build_request(:cancel_retrieval, params)
      req.send_request(options)
    end

    # Creates a cached volume on a specified cached volume gateway. This
    # operation is only supported in the cached volume gateway type.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create a
    # cached volume. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # In the request, you must specify the gateway, size of the volume in
    # bytes, the iSCSI target name, an IP address on which to expose the
    # target, and a unique client token. In response, the gateway creates
    # the volume and returns information about it. This information includes
    # the volume Amazon Resource Name (ARN), its size, and the iSCSI target
    # ARN that initiators can use to connect to the volume target.
    #
    # Optionally, you can provide the ARN for an existing volume as the
    # `SourceVolumeARN` for this cached volume, which creates an exact copy
    # of the existing volume’s latest recovery point. The
    # `VolumeSizeInBytes` value must be equal to or larger than the size of
    # the copied volume, in bytes.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, Integer] :volume_size_in_bytes
    #   The size of the volume in bytes.
    #
    # @option params [String] :snapshot_id
    #   The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as
    #   the new cached volume. Specify this field if you want to create the
    #   iSCSI storage volume from a snapshot; otherwise, do not include this
    #   field. To list snapshots for your account use [DescribeSnapshots][1]
    #   in the *Amazon Elastic Compute Cloud API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #
    # @option params [required, String] :target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that was
    #   previously used for this volume as the new target name.
    #
    # @option params [String] :source_volume_arn
    #   The ARN for an existing volume. Specifying this ARN makes the new
    #   volume into an exact copy of the specified existing volume's latest
    #   recovery point. The `VolumeSizeInBytes` value for this new volume must
    #   be equal to or larger than the size of the existing volume, in bytes.
    #
    # @option params [required, String] :network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Only IPv4 addresses are accepted. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #
    # @option params [required, String] :client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that you can assign to a cached volume. Each
    #   tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   that you can represent in UTF-8 format, and the following special
    #   characters: + - = . \_ : / @. The maximum length of a tag's key is
    #   128 characters, and the maximum length for a tag's value is 256
    #   characters.
    #
    #    </note>
    #
    # @return [Types::CreateCachediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCachediSCSIVolumeOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateCachediSCSIVolumeOutput#target_arn #target_arn} => String
    #
    #
    # @example Example: To create a cached iSCSI volume
    #
    #   # Creates a cached volume on a specified cached gateway.
    #
    #   resp = client.create_cached_iscsi_volume({
    #     client_token: "cachedvol112233", 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     network_interface_id: "10.1.1.1", 
    #     snapshot_id: "snap-f47b7b94", 
    #     target_name: "my-volume", 
    #     volume_size_in_bytes: 536870912000, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cached_iscsi_volume({
    #     gateway_arn: "GatewayARN", # required
    #     volume_size_in_bytes: 1, # required
    #     snapshot_id: "SnapshotId",
    #     target_name: "TargetName", # required
    #     source_volume_arn: "VolumeARN",
    #     network_interface_id: "NetworkInterfaceId", # required
    #     client_token: "ClientToken", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
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
    #   resp.volume_arn #=> String
    #   resp.target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateCachediSCSIVolume AWS API Documentation
    #
    # @overload create_cached_iscsi_volume(params = {})
    # @param [Hash] params ({})
    def create_cached_iscsi_volume(params = {}, options = {})
      req = build_request(:create_cached_iscsi_volume, params)
      req.send_request(options)
    end

    # Creates a Network File System (NFS) file share on an existing file
    # gateway. In Storage Gateway, a file share is a file system mount point
    # backed by Amazon S3 cloud storage. Storage Gateway exposes file shares
    # using an NFS interface. This operation is only supported for file
    # gateways.
    #
    # File gateway requires AWS Security Token Service (AWS STS) to be
    # activated to enable you to create a file share. Make sure AWS STS is
    # activated in the AWS Region you are creating your file gateway in. If
    # AWS STS is not activated in the AWS Region, activate it. For
    # information about how to activate AWS STS, see [Activating and
    # deactivating AWS STS in an AWS Region][1] in the *AWS Identity and
    # Access Management User Guide*.
    #
    #  File gateway does not support creating hard or symbolic links on a
    # file share.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #
    # @option params [required, String] :client_token
    #   A unique string value that you supply that is used by file gateway to
    #   ensure idempotent file share creation.
    #
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   File share default values. Optional.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the file gateway on which you want
    #   to create a file share.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [required, String] :role
    #   The ARN of the AWS Identity and Access Management (IAM) role that a
    #   file gateway assumes when it accesses the underlying storage.
    #
    # @option params [required, String] :location_arn
    #   The ARN of the backend storage used for storing file data. A prefix
    #   name can be added to the S3 bucket name. It must end with a "/".
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   the file gateway. The default value is `S3_INTELLIGENT_TIERING`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #
    # @option params [String] :object_acl
    #   A value that sets the access control list (ACL) permission for objects
    #   in the S3 bucket that a file gateway puts objects into. The default
    #   value is `private`.
    #
    # @option params [Array<String>] :client_list
    #   The list of clients that are allowed to access the file gateway. The
    #   list must contain either valid IP addresses or valid CIDR blocks.
    #
    # @option params [String] :squash
    #   A value that maps a user to anonymous user.
    #
    #   Valid values are the following:
    #
    #   * `RootSquash`\: Only root is mapped to anonymous user.
    #
    #   * `NoSquash`\: No one is mapped to anonymous user.
    #
    #   * `AllSquash`\: Everyone is mapped to anonymous user.
    #
    # @option params [Boolean] :read_only
    #   A value that sets the write status of a file share. Set this value to
    #   `true` to set the write status to read-only, otherwise set to `false`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME type
    #   guessing, otherwise set to `false`. The default value is `true`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is set
    #   to `true`, the requester pays the costs; otherwise, the S3 bucket
    #   owner pays. However, the S3 bucket owner always pays the cost of
    #   storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to the NFS file share.
    #   Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @option params [String] :file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`.
    #
    #    </note>
    #
    # @option params [Types::CacheAttributes] :cache_attributes
    #   Refresh cache information.
    #
    # @return [Types::CreateNFSFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNFSFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_nfs_file_share({
    #     client_token: "ClientToken", # required
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1,
    #     },
    #     gateway_arn: "GatewayARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     default_storage_class: "StorageClass",
    #     object_acl: "private", # accepts private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control, aws-exec-read
    #     client_list: ["IPV4AddressCIDR"],
    #     squash: "Squash",
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateNFSFileShare AWS API Documentation
    #
    # @overload create_nfs_file_share(params = {})
    # @param [Hash] params ({})
    def create_nfs_file_share(params = {}, options = {})
      req = build_request(:create_nfs_file_share, params)
      req.send_request(options)
    end

    # Creates a Server Message Block (SMB) file share on an existing file
    # gateway. In Storage Gateway, a file share is a file system mount point
    # backed by Amazon S3 cloud storage. Storage Gateway exposes file shares
    # using an SMB interface. This operation is only supported for file
    # gateways.
    #
    # File gateways require AWS Security Token Service (AWS STS) to be
    # activated to enable you to create a file share. Make sure that AWS STS
    # is activated in the AWS Region you are creating your file gateway in.
    # If AWS STS is not activated in this AWS Region, activate it. For
    # information about how to activate AWS STS, see [Activating and
    # deactivating AWS STS in an AWS Region][1] in the *AWS Identity and
    # Access Management User Guide*.
    #
    #  File gateways don't support creating hard or symbolic links on a
    # file
    # share.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #
    # @option params [required, String] :client_token
    #   A unique string value that you supply that is used by file gateway to
    #   ensure idempotent file share creation.
    #
    # @option params [required, String] :gateway_arn
    #   The ARN of the file gateway on which you want to create a file share.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [required, String] :role
    #   The ARN of the AWS Identity and Access Management (IAM) role that a
    #   file gateway assumes when it accesses the underlying storage.
    #
    # @option params [required, String] :location_arn
    #   The ARN of the backend storage used for storing file data. A prefix
    #   name can be added to the S3 bucket name. It must end with a "/".
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   the file gateway. The default value is `S3_INTELLIGENT_TIERING`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #
    # @option params [String] :object_acl
    #   A value that sets the access control list (ACL) permission for objects
    #   in the S3 bucket that a file gateway puts objects into. The default
    #   value is `private`.
    #
    # @option params [Boolean] :read_only
    #   A value that sets the write status of a file share. Set this value to
    #   `true` to set the write status to read-only, otherwise set to `false`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME type
    #   guessing, otherwise set to `false`. The default value is `true`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is set
    #   to `true`, the requester pays the costs; otherwise, the S3 bucket
    #   owner pays. However, the S3 bucket owner always pays the cost of
    #   storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :smbacl_enabled
    #   Set this value to `true` to enable access control list (ACL) on the
    #   SMB file share. Set it to `false` to map file and directory
    #   permissions to the POSIX permissions.
    #
    #   For more information, see [Using Microsoft Windows ACLs to control
    #   access to an SMB file share][1] in the *AWS Storage Gateway User
    #   Guide*.
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html
    #
    # @option params [Array<String>] :admin_user_list
    #   A list of users or groups in the Active Directory that will be granted
    #   administrator privileges on the file share. These users can do all
    #   file operations as the super-user. Acceptable formats include:
    #   `DOMAIN\User1`, `user1`, `@group1`, and `@DOMAIN\group1`.
    #
    #   Use this option very carefully, because any user in this list can do
    #   anything they like on the file share, regardless of file permissions.
    #
    # @option params [Array<String>] :valid_user_list
    #   A list of users or groups in the Active Directory that are allowed to
    #   access the file []() share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication is
    #   set to `ActiveDirectory`.
    #
    # @option params [Array<String>] :invalid_user_list
    #   A list of users or groups in the Active Directory that are not allowed
    #   to access the file share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication is
    #   set to `ActiveDirectory`.
    #
    # @option params [String] :audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for the audit logs.
    #
    # @option params [String] :authentication
    #   The authentication method that users use to access the file share. The
    #   default is `ActiveDirectory`.
    #
    #   Valid Values: `ActiveDirectory` \| `GuestAccess`
    #
    # @option params [String] :case_sensitivity
    #   The case of an object name in an Amazon S3 bucket. For
    #   `ClientSpecified`, the client determines the case sensitivity. For
    #   `CaseSensitive`, the gateway determines the case sensitivity. The
    #   default value is `ClientSpecified`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to the NFS file share.
    #   Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @option params [String] :file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`.
    #
    #    </note>
    #
    # @option params [Types::CacheAttributes] :cache_attributes
    #   Refresh cache information.
    #
    # @return [Types::CreateSMBFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSMBFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_smb_file_share({
    #     client_token: "ClientToken", # required
    #     gateway_arn: "GatewayARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     role: "Role", # required
    #     location_arn: "LocationARN", # required
    #     default_storage_class: "StorageClass",
    #     object_acl: "private", # accepts private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control, aws-exec-read
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     admin_user_list: ["FileShareUser"],
    #     valid_user_list: ["FileShareUser"],
    #     invalid_user_list: ["FileShareUser"],
    #     audit_destination_arn: "AuditDestinationARN",
    #     authentication: "Authentication",
    #     case_sensitivity: "ClientSpecified", # accepts ClientSpecified, CaseSensitive
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSMBFileShare AWS API Documentation
    #
    # @overload create_smb_file_share(params = {})
    # @param [Hash] params ({})
    def create_smb_file_share(params = {}, options = {})
      req = build_request(:create_smb_file_share, params)
      req.send_request(options)
    end

    # Initiates a snapshot of a volume.
    #
    # AWS Storage Gateway provides the ability to back up point-in-time
    # snapshots of your data to Amazon Simple Storage (Amazon S3) for
    # durable off-site recovery, as well as import the data to an Amazon
    # Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud
    # (EC2). You can take snapshots of your gateway volume on a scheduled or
    # ad hoc basis. This API enables you to take an ad hoc snapshot. For
    # more information, see [Editing a snapshot schedule][1].
    #
    # In the `CreateSnapshot` request, you identify the volume by providing
    # its Amazon Resource Name (ARN). You must also provide description for
    # the snapshot. When AWS Storage Gateway takes the snapshot of specified
    # volume, the snapshot and description appears in the AWS Storage
    # Gateway console. In response, AWS Storage Gateway returns you a
    # snapshot ID. You can use this snapshot ID to check the snapshot
    # progress or later use it when you want to create a volume from a
    # snapshot. This operation is only supported in stored and cached volume
    # gateway type.
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
    # more information, see [DescribeSnapshots][2] or [DeleteSnapshot][3] in
    # the *Amazon Elastic Compute Cloud API Reference*.
    #
    #  </note>
    #
    # Volume and snapshot IDs are changing to a longer length ID format. For
    # more information, see the important note on the [Welcome][4] page.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
    # [3]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html
    # [4]: https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @option params [required, String] :snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the AWS Storage Gateway snapshot **Details** pane,
    #   **Description** field.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateSnapshotOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateSnapshotOutput#snapshot_id #snapshot_id} => String
    #
    #
    # @example Example: To create a snapshot of a gateway volume
    #
    #   # Initiates an ad-hoc snapshot of a gateway volume.
    #
    #   resp = client.create_snapshot({
    #     snapshot_description: "My root volume snapshot as of 10/03/2017", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot_id: "snap-78e22663", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
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
    #   resp.volume_arn #=> String
    #   resp.snapshot_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Initiates a snapshot of a gateway from a volume recovery point. This
    # operation is only supported in the cached volume gateway type.
    #
    # A volume recovery point is a point in time at which all data of the
    # volume is consistent and from which you can create a snapshot. To get
    # a list of volume recovery point for cached volume gateway, use
    # ListVolumeRecoveryPoints.
    #
    # In the `CreateSnapshotFromVolumeRecoveryPoint` request, you identify
    # the volume by providing its Amazon Resource Name (ARN). You must also
    # provide a description for the snapshot. When the gateway takes a
    # snapshot of the specified volume, the snapshot and its description
    # appear in the AWS Storage Gateway console. In response, the gateway
    # returns you a snapshot ID. You can use this snapshot ID to check the
    # snapshot progress or later use it when you want to create a volume
    # from a snapshot.
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
    # more information, see [DescribeSnapshots][1] or [DeleteSnapshot][2] in
    # the *Amazon Elastic Compute Cloud API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #
    # @option params [required, String] :snapshot_description
    #   Textual description of the snapshot that appears in the Amazon EC2
    #   console, Elastic Block Store snapshots panel in the **Description**
    #   field, and in the AWS Storage Gateway snapshot **Details** pane,
    #   **Description** field.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateSnapshotFromVolumeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#snapshot_id #snapshot_id} => String
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateSnapshotFromVolumeRecoveryPointOutput#volume_recovery_point_time #volume_recovery_point_time} => String
    #
    #
    # @example Example: To create a snapshot of a gateway volume
    #
    #   # Initiates a snapshot of a gateway from a volume recovery point.
    #
    #   resp = client.create_snapshot_from_volume_recovery_point({
    #     snapshot_description: "My root volume snapshot as of 2017-06-30T10:10:10.000Z", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot_id: "snap-78e22663", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #     volume_recovery_point_time: "2017-06-30T10:10:10.000Z", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot_from_volume_recovery_point({
    #     volume_arn: "VolumeARN", # required
    #     snapshot_description: "SnapshotDescription", # required
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
    #   resp.snapshot_id #=> String
    #   resp.volume_arn #=> String
    #   resp.volume_recovery_point_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateSnapshotFromVolumeRecoveryPoint AWS API Documentation
    #
    # @overload create_snapshot_from_volume_recovery_point(params = {})
    # @param [Hash] params ({})
    def create_snapshot_from_volume_recovery_point(params = {}, options = {})
      req = build_request(:create_snapshot_from_volume_recovery_point, params)
      req.send_request(options)
    end

    # Creates a volume on a specified gateway. This operation is only
    # supported in the stored volume gateway type.
    #
    # The size of the volume to create is inferred from the disk size. You
    # can choose to preserve existing data on the disk, create volume from
    # an existing snapshot, or create an empty volume. If you choose to
    # create an empty gateway volume, then any existing data on the disk is
    # erased.
    #
    # In the request, you must specify the gateway and the disk information
    # on which you are creating the volume. In response, the gateway creates
    # the volume and returns volume information such as the volume Amazon
    # Resource Name (ARN), its size, and the iSCSI target ARN that
    # initiators can use to connect to the volume target.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :disk_id
    #   The unique identifier for the gateway local disk that is configured as
    #   a stored volume. Use [ListLocalDisks][1] to list disk IDs for a
    #   gateway.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/API_ListLocalDisks.html
    #
    # @option params [String] :snapshot_id
    #   The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore as
    #   the new stored volume. Specify this field if you want to create the
    #   iSCSI storage volume from a snapshot; otherwise, do not include this
    #   field. To list snapshots for your account use [DescribeSnapshots][1]
    #   in the *Amazon Elastic Compute Cloud API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #
    # @option params [required, Boolean] :preserve_existing_data
    #   Set to true `true` if you want to preserve the data on the local disk.
    #   Otherwise, set to `false` to create an empty volume.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [required, String] :target_name
    #   The name of the iSCSI target used by an initiator to connect to a
    #   volume and used as a suffix for the target ARN. For example,
    #   specifying `TargetName` as *myvolume* results in the target ARN of
    #   `arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume`.
    #   The target name must be unique across all volumes on a gateway.
    #
    #   If you don't specify a value, Storage Gateway uses the value that was
    #   previously used for this volume as the new target name.
    #
    # @option params [required, String] :network_interface_id
    #   The network interface of the gateway on which to expose the iSCSI
    #   target. Only IPv4 addresses are accepted. Use
    #   DescribeGatewayInformation to get a list of the network interfaces
    #   available on a gateway.
    #
    #   Valid Values: A valid IP address.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a stored volume. Each
    #   tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateStorediSCSIVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStorediSCSIVolumeOutput#volume_arn #volume_arn} => String
    #   * {Types::CreateStorediSCSIVolumeOutput#volume_size_in_bytes #volume_size_in_bytes} => Integer
    #   * {Types::CreateStorediSCSIVolumeOutput#target_arn #target_arn} => String
    #
    #
    # @example Example: To create a stored iSCSI volume
    #
    #   # Creates a stored volume on a specified stored gateway.
    #
    #   resp = client.create_stored_iscsi_volume({
    #     disk_id: "pci-0000:03:00.0-scsi-0:0:0:0", 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     network_interface_id: "10.1.1.1", 
    #     preserve_existing_data: true, 
    #     snapshot_id: "snap-f47b7b94", 
    #     target_name: "my-volume", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #     volume_size_in_bytes: 1099511627776, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stored_iscsi_volume({
    #     gateway_arn: "GatewayARN", # required
    #     disk_id: "DiskId", # required
    #     snapshot_id: "SnapshotId",
    #     preserve_existing_data: false, # required
    #     target_name: "TargetName", # required
    #     network_interface_id: "NetworkInterfaceId", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
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
    #   resp.volume_arn #=> String
    #   resp.volume_size_in_bytes #=> Integer
    #   resp.target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateStorediSCSIVolume AWS API Documentation
    #
    # @overload create_stored_iscsi_volume(params = {})
    # @param [Hash] params ({})
    def create_stored_iscsi_volume(params = {}, options = {})
      req = build_request(:create_stored_iscsi_volume, params)
      req.send_request(options)
    end

    # Creates a new custom tape pool. You can use custom tape pool to enable
    # tape retention lock on tapes that are archived in the custom pool.
    #
    # @option params [required, String] :pool_name
    #   The name of the new custom tape pool.
    #
    # @option params [required, String] :storage_class
    #   The storage class that is associated with the new custom pool. When
    #   you use your backup application to eject the tape, the tape is
    #   archived directly into the storage class (S3 Glacier or S3 Glacier
    #   Deep Archive) that corresponds to the pool.
    #
    # @option params [String] :retention_lock_type
    #   Tape retention lock can be configured in two modes. When configured in
    #   governance mode, AWS accounts with specific IAM permissions are
    #   authorized to remove the tape retention lock from archived virtual
    #   tapes. When configured in compliance mode, the tape retention lock
    #   cannot be removed by any user, including the root AWS account.
    #
    # @option params [Integer] :retention_lock_time_in_days
    #   Tape retention lock time is set in days. Tape retention lock can be
    #   enabled for up to 100 years (36,500 days).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to tape pool. Each tag is
    #   a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateTapePoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTapePoolOutput#pool_arn #pool_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tape_pool({
    #     pool_name: "PoolName", # required
    #     storage_class: "DEEP_ARCHIVE", # required, accepts DEEP_ARCHIVE, GLACIER
    #     retention_lock_type: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE, NONE
    #     retention_lock_time_in_days: 1,
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
    #   resp.pool_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapePool AWS API Documentation
    #
    # @overload create_tape_pool(params = {})
    # @param [Hash] params ({})
    def create_tape_pool(params = {}, options = {})
      req = build_request(:create_tape_pool, params)
      req.send_request(options)
    end

    # Creates a virtual tape by using your own barcode. You write data to
    # the virtual tape and then archive the tape. A barcode is unique and
    # cannot be reused if it has already been used on a tape. This applies
    # to barcodes used on deleted tapes. This operation is only supported in
    # the tape gateway type.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create a
    # virtual tape. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tape with. Use the ListGateways operation to
    #   return a list of gateways for your account and AWS Region.
    #
    # @option params [required, Integer] :tape_size_in_bytes
    #   The size, in bytes, of the virtual tape that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 bytes).
    #
    #    </note>
    #
    # @option params [required, String] :tape_barcode
    #   The barcode that you want to assign to the tape.
    #
    #   <note markdown="1"> Barcodes cannot be reused. This includes barcodes used for tapes that
    #   have been deleted.
    #
    #    </note>
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [String] :pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Deep Archive) that corresponds to the pool.
    #
    #   Valid Values: `GLACIER` \| `DEEP_ARCHIVE`
    #
    # @option params [Boolean] :worm
    #   Set to `TRUE` if the tape you are creating is to be configured as a
    #   write-once-read-many (WORM) tape.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a virtual tape that
    #   has a barcode. Each tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateTapeWithBarcodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTapeWithBarcodeOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To create a virtual tape using a barcode
    #
    #   # Creates a virtual tape by using your own barcode.
    #
    #   resp = client.create_tape_with_barcode({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     tape_barcode: "TEST12345", 
    #     tape_size_in_bytes: 107374182400, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST12345", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tape_with_barcode({
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     tape_barcode: "TapeBarcode", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     pool_id: "PoolId",
    #     worm: false,
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
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapeWithBarcode AWS API Documentation
    #
    # @overload create_tape_with_barcode(params = {})
    # @param [Hash] params ({})
    def create_tape_with_barcode(params = {}, options = {})
      req = build_request(:create_tape_with_barcode, params)
      req.send_request(options)
    end

    # Creates one or more virtual tapes. You write data to the virtual tapes
    # and then archive the tapes. This operation is only supported in the
    # tape gateway type.
    #
    # <note markdown="1"> Cache storage must be allocated to the gateway before you can create
    # virtual tapes. Use the AddCache operation to add cache storage to a
    # gateway.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) that represents the gateway to
    #   associate the virtual tapes with. Use the ListGateways operation to
    #   return a list of gateways for your account and AWS Region.
    #
    # @option params [required, Integer] :tape_size_in_bytes
    #   The size, in bytes, of the virtual tapes that you want to create.
    #
    #   <note markdown="1"> The size must be aligned by gigabyte (1024*1024*1024 bytes).
    #
    #    </note>
    #
    # @option params [required, String] :client_token
    #   A unique identifier that you use to retry a request. If you retry a
    #   request, use the same `ClientToken` you specified in the initial
    #   request.
    #
    #   <note markdown="1"> Using the same `ClientToken` prevents creating the tape multiple
    #   times.
    #
    #    </note>
    #
    # @option params [required, Integer] :num_tapes_to_create
    #   The number of virtual tapes that you want to create.
    #
    # @option params [required, String] :tape_barcode_prefix
    #   A prefix that you append to the barcode of the virtual tape you are
    #   creating. This prefix makes the barcode unique.
    #
    #   <note markdown="1"> The prefix must be 1 to 4 characters in length and must be one of the
    #   uppercase letters from A to Z.
    #
    #    </note>
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [String] :pool_id
    #   The ID of the pool that you want to add your tape to for archiving.
    #   The tape in this pool is archived in the S3 storage class that is
    #   associated with the pool. When you use your backup application to
    #   eject the tape, the tape is archived directly into the storage class
    #   (S3 Glacier or S3 Glacier Deep Archive) that corresponds to the pool.
    #
    #   Valid Values: `GLACIER` \| `DEEP_ARCHIVE`
    #
    # @option params [Boolean] :worm
    #   Set to `TRUE` if the tape you are creating is to be configured as a
    #   write-once-read-many (WORM) tape.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a virtual tape. Each
    #   tag is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::CreateTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTapesOutput#tape_arns #tape_arns} => Array&lt;String&gt;
    #
    #
    # @example Example: To create a virtual tape
    #
    #   # Creates one or more virtual tapes.
    #
    #   resp = client.create_tapes({
    #     client_token: "77777", 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     num_tapes_to_create: 3, 
    #     tape_barcode_prefix: "TEST", 
    #     tape_size_in_bytes: 107374182400, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arns: [
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST38A29D", 
    #       "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3AA29F", 
    #       "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST3BA29E", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tapes({
    #     gateway_arn: "GatewayARN", # required
    #     tape_size_in_bytes: 1, # required
    #     client_token: "ClientToken", # required
    #     num_tapes_to_create: 1, # required
    #     tape_barcode_prefix: "TapeBarcodePrefix", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     pool_id: "PoolId",
    #     worm: false,
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
    #   resp.tape_arns #=> Array
    #   resp.tape_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/CreateTapes AWS API Documentation
    #
    # @overload create_tapes(params = {})
    # @param [Hash] params ({})
    def create_tapes(params = {}, options = {})
      req = build_request(:create_tapes, params)
      req.send_request(options)
    end

    # Deletes the automatic tape creation policy of a gateway. If you delete
    # this policy, new virtual tapes must be created manually. Use the
    # Amazon Resource Name (ARN) of the gateway in your request to remove
    # the policy.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DeleteAutomaticTapeCreationPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAutomaticTapeCreationPolicyOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_automatic_tape_creation_policy({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteAutomaticTapeCreationPolicy AWS API Documentation
    #
    # @overload delete_automatic_tape_creation_policy(params = {})
    # @param [Hash] params ({})
    def delete_automatic_tape_creation_policy(params = {}, options = {})
      req = build_request(:delete_automatic_tape_creation_policy, params)
      req.send_request(options)
    end

    # Deletes the bandwidth rate limits of a gateway. You can delete either
    # the upload and download bandwidth rate limit, or you can delete both.
    # If you delete only one of the limits, the other limit remains
    # unchanged. To specify which gateway to work with, use the Amazon
    # Resource Name (ARN) of the gateway in your request. This operation is
    # supported for the stored volume, cached volume and tape gateway types.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :bandwidth_type
    #   One of the BandwidthType values that indicates the gateway bandwidth
    #   rate limit to delete.
    #
    #   Valid Values: `UPLOAD` \| `DOWNLOAD` \| `ALL`
    #
    # @return [Types::DeleteBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To delete bandwidth rate limits of gateway
    #
    #   # Deletes the bandwidth rate limits of a gateway; either the upload or download limit, or both.
    #
    #   resp = client.delete_bandwidth_rate_limit({
    #     bandwidth_type: "All", 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #     bandwidth_type: "BandwidthType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteBandwidthRateLimit AWS API Documentation
    #
    # @overload delete_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def delete_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:delete_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials
    # for a specified iSCSI target and initiator pair. This operation is
    # supported in volume and tape gateway types.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #
    # @option params [required, String] :initiator_name
    #   The iSCSI initiator that connects to the target.
    #
    # @return [Types::DeleteChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteChapCredentialsOutput#target_arn #target_arn} => String
    #   * {Types::DeleteChapCredentialsOutput#initiator_name #initiator_name} => String
    #
    #
    # @example Example: To delete CHAP credentials
    #
    #   # Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.
    #
    #   resp = client.delete_chap_credentials({
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com", 
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com", 
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_chap_credentials({
    #     target_arn: "TargetARN", # required
    #     initiator_name: "IqnName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_arn #=> String
    #   resp.initiator_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteChapCredentials AWS API Documentation
    #
    # @overload delete_chap_credentials(params = {})
    # @param [Hash] params ({})
    def delete_chap_credentials(params = {}, options = {})
      req = build_request(:delete_chap_credentials, params)
      req.send_request(options)
    end

    # Deletes a file share from a file gateway. This operation is only
    # supported for file gateways.
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be deleted.
    #
    # @option params [Boolean] :force_delete
    #   If this value is set to `true`, the operation deletes a file share
    #   immediately and aborts all data uploads to AWS. Otherwise, the file
    #   share is not deleted until all data is uploaded to AWS. This process
    #   aborts the data upload process, and the file share enters the
    #   `FORCE_DELETING` status.
    #
    #   Valid Values: `true` \| `false`
    #
    # @return [Types::DeleteFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_share({
    #     file_share_arn: "FileShareARN", # required
    #     force_delete: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteFileShare AWS API Documentation
    #
    # @overload delete_file_share(params = {})
    # @param [Hash] params ({})
    def delete_file_share(params = {}, options = {})
      req = build_request(:delete_file_share, params)
      req.send_request(options)
    end

    # Deletes a gateway. To specify which gateway to delete, use the Amazon
    # Resource Name (ARN) of the gateway in your request. The operation
    # deletes the gateway; however, it does not delete the gateway virtual
    # machine (VM) from your host computer.
    #
    # After you delete a gateway, you cannot reactivate it. Completed
    # snapshots of the gateway volumes are not deleted upon deleting the
    # gateway, however, pending snapshots will not complete. After you
    # delete a gateway, your next step is to remove it from your
    # environment.
    #
    # You no longer pay software charges after the gateway is deleted;
    # however, your existing Amazon EBS snapshots persist and you will
    # continue to be billed for these snapshots. You can choose to remove
    # all remaining Amazon EBS snapshots by canceling your Amazon EC2
    # subscription.  If you prefer not to cancel your Amazon EC2
    # subscription, you can delete your snapshots using the Amazon EC2
    # console. For more information, see the [AWS Storage Gateway detail
    # page][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/storagegateway
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DeleteGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGatewayOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To delete a gatgeway
    #
    #   # This operation deletes the gateway, but not the gateway's VM from the host computer.
    #
    #   resp = client.delete_gateway({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteGateway AWS API Documentation
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a snapshot of a volume.
    #
    # You can take snapshots of your gateway volumes on a scheduled or ad
    # hoc basis. This API action enables you to delete a snapshot schedule
    # for a volume. For more information, see [Backing up your volumes][1].
    # In the `DeleteSnapshotSchedule` request, you identify the volume by
    # providing its Amazon Resource Name (ARN). This operation is only
    # supported in stored and cached volume gateway types.
    #
    # <note markdown="1"> To list or delete a snapshot, you must use the Amazon EC2 API. For
    # more information, go to [DescribeSnapshots][2] in the *Amazon Elastic
    # Compute Cloud API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/backing-up-volumes.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html
    #
    # @option params [required, String] :volume_arn
    #   The volume which snapshot schedule to delete.
    #
    # @return [Types::DeleteSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #
    #
    # @example Example: To delete a snapshot of a volume
    #
    #   # This action enables you to delete a snapshot schedule for a volume.
    #
    #   resp = client.delete_snapshot_schedule({
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteSnapshotSchedule AWS API Documentation
    #
    # @overload delete_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def delete_snapshot_schedule(params = {}, options = {})
      req = build_request(:delete_snapshot_schedule, params)
      req.send_request(options)
    end

    # Deletes the specified virtual tape. This operation is only supported
    # in the tape gateway type.
    #
    # @option params [required, String] :gateway_arn
    #   The unique Amazon Resource Name (ARN) of the gateway that the virtual
    #   tape to delete is associated with. Use the ListGateways operation to
    #   return a list of gateways for your account and AWS Region.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete.
    #
    # @option params [Boolean] :bypass_governance_retention
    #   Set to `TRUE` to delete an archived tape that belongs to a custom pool
    #   with tape retention lock. Only archived tapes with tape retention lock
    #   set to `governance` can be deleted. Archived tapes with tape retention
    #   lock set to `compliance` can't be deleted.
    #
    # @return [Types::DeleteTapeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTapeOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To delete a virtual tape
    #
    #   # This example deletes the specified virtual tape.
    #
    #   resp = client.delete_tape({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:204469490176:gateway/sgw-12A3456B", 
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arn: "TapeARN", # required
    #     bypass_governance_retention: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTape AWS API Documentation
    #
    # @overload delete_tape(params = {})
    # @param [Hash] params ({})
    def delete_tape(params = {}, options = {})
      req = build_request(:delete_tape, params)
      req.send_request(options)
    end

    # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    # This operation is only supported in the tape gateway type.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape to delete from the
    #   virtual tape shelf (VTS).
    #
    # @option params [Boolean] :bypass_governance_retention
    #   Set to `TRUE` to delete an archived tape that belongs to a custom pool
    #   with tape retention lock. Only archived tapes with tape retention lock
    #   set to `governance` can be deleted. Archived tapes with tape retention
    #   lock set to `compliance` can't be deleted.
    #
    # @return [Types::DeleteTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTapeArchiveOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To delete a virtual tape from the shelf (VTS)
    #
    #   # Deletes the specified virtual tape from the virtual tape shelf (VTS).
    #
    #   resp = client.delete_tape_archive({
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:204469490176:tape/TEST05A2A0", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape_archive({
    #     tape_arn: "TapeARN", # required
    #     bypass_governance_retention: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapeArchive AWS API Documentation
    #
    # @overload delete_tape_archive(params = {})
    # @param [Hash] params ({})
    def delete_tape_archive(params = {}, options = {})
      req = build_request(:delete_tape_archive, params)
      req.send_request(options)
    end

    # Delete a custom tape pool. A custom tape pool can only be deleted if
    # there are no tapes in the pool and if there are no automatic tape
    # creation policies that reference the custom tape pool.
    #
    # @option params [required, String] :pool_arn
    #   The Amazon Resource Name (ARN) of the custom tape pool to delete.
    #
    # @return [Types::DeleteTapePoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTapePoolOutput#pool_arn #pool_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tape_pool({
    #     pool_arn: "PoolARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteTapePool AWS API Documentation
    #
    # @overload delete_tape_pool(params = {})
    # @param [Hash] params ({})
    def delete_tape_pool(params = {}, options = {})
      req = build_request(:delete_tape_pool, params)
      req.send_request(options)
    end

    # Deletes the specified storage volume that you previously created using
    # the CreateCachediSCSIVolume or CreateStorediSCSIVolume API. This
    # operation is only supported in the cached volume and stored volume
    # types. For stored volume gateways, the local disk that was configured
    # as the storage volume is not deleted. You can reuse the local disk to
    # create another storage volume.
    #
    # Before you delete a volume, make sure there are no iSCSI connections
    # to the volume you are deleting. You should also make sure there is no
    # snapshot in progress. You can use the Amazon Elastic Compute Cloud
    # (Amazon EC2) API to query snapshots on the volume you are deleting and
    # check the snapshot status. For more information, go to
    # [DescribeSnapshots][1] in the *Amazon Elastic Compute Cloud API
    # Reference*.
    #
    # In the request, you must provide the Amazon Resource Name (ARN) of the
    # storage volume you want to delete.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @return [Types::DeleteVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVolumeOutput#volume_arn #volume_arn} => String
    #
    #
    # @example Example: To delete a gateway volume
    #
    #   # Deletes the specified gateway volume that you previously created using the CreateCachediSCSIVolume or
    #   # CreateStorediSCSIVolume API.
    #
    #   resp = client.delete_volume({
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DeleteVolume AWS API Documentation
    #
    # @overload delete_volume(params = {})
    # @param [Hash] params ({})
    def delete_volume(params = {}, options = {})
      req = build_request(:delete_volume, params)
      req.send_request(options)
    end

    # Returns information about the most recent High Availability monitoring
    # test that was performed on the host in a cluster. If a test isn't
    # performed, the status and start time in the response would be null.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeAvailabilityMonitorTestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAvailabilityMonitorTestOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeAvailabilityMonitorTestOutput#status #status} => String
    #   * {Types::DescribeAvailabilityMonitorTestOutput#start_time #start_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_availability_monitor_test({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.status #=> String, one of "COMPLETE", "FAILED", "PENDING"
    #   resp.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeAvailabilityMonitorTest AWS API Documentation
    #
    # @overload describe_availability_monitor_test(params = {})
    # @param [Hash] params ({})
    def describe_availability_monitor_test(params = {}, options = {})
      req = build_request(:describe_availability_monitor_test, params)
      req.send_request(options)
    end

    # Returns the bandwidth rate limits of a gateway. By default, these
    # limits are not set, which means no bandwidth rate limiting is in
    # effect. This operation is supported for the stored volume, cached
    # volume, and tape gateway types.
    #
    # This operation only returns a value for a bandwidth rate limit only if
    # the limit is set. If no limits are set for the gateway, then this
    # operation returns only the gateway ARN in the response body. To
    # specify which gateway to describe, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeBandwidthRateLimitOutput#average_upload_rate_limit_in_bits_per_sec #average_upload_rate_limit_in_bits_per_sec} => Integer
    #   * {Types::DescribeBandwidthRateLimitOutput#average_download_rate_limit_in_bits_per_sec #average_download_rate_limit_in_bits_per_sec} => Integer
    #
    #
    # @example Example: To describe the bandwidth rate limits of a gateway
    #
    #   # Returns a value for a bandwidth rate limit if set. If not set, then only the gateway ARN is returned.
    #
    #   resp = client.describe_bandwidth_rate_limit({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     average_download_rate_limit_in_bits_per_sec: 204800, 
    #     average_upload_rate_limit_in_bits_per_sec: 102400, 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.average_upload_rate_limit_in_bits_per_sec #=> Integer
    #   resp.average_download_rate_limit_in_bits_per_sec #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeBandwidthRateLimit AWS API Documentation
    #
    # @overload describe_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def describe_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:describe_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Returns information about the cache of a gateway. This operation is
    # only supported in the cached volume, tape, and file gateway types.
    #
    # The response includes disk IDs that are configured as cache, and it
    # includes the amount of cache allocated and used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCacheOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeCacheOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeCacheOutput#cache_allocated_in_bytes #cache_allocated_in_bytes} => Integer
    #   * {Types::DescribeCacheOutput#cache_used_percentage #cache_used_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_dirty_percentage #cache_dirty_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_hit_percentage #cache_hit_percentage} => Float
    #   * {Types::DescribeCacheOutput#cache_miss_percentage #cache_miss_percentage} => Float
    #
    #
    # @example Example: To describe cache information
    #
    #   # Returns information about the cache of a gateway.
    #
    #   resp = client.describe_cache({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_allocated_in_bytes: 2199023255552, 
    #     cache_dirty_percentage: 0.07, 
    #     cache_hit_percentage: 99.68, 
    #     cache_miss_percentage: 0.32, 
    #     cache_used_percentage: 0.07, 
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:04:00.0-scsi-0:1:0:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.cache_allocated_in_bytes #=> Integer
    #   resp.cache_used_percentage #=> Float
    #   resp.cache_dirty_percentage #=> Float
    #   resp.cache_hit_percentage #=> Float
    #   resp.cache_miss_percentage #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCache AWS API Documentation
    #
    # @overload describe_cache(params = {})
    # @param [Hash] params ({})
    def describe_cache(params = {}, options = {})
      req = build_request(:describe_cache, params)
      req.send_request(options)
    end

    # Returns a description of the gateway volumes specified in the request.
    # This operation is only supported in the cached volume gateway types.
    #
    # The list of gateway volumes in the request must be from one gateway.
    # In the response, AWS Storage Gateway returns volume information sorted
    # by volume Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a cached volume. All of the specified cached volumes
    #   must be from the same gateway. Use ListVolumes to get volume ARNs for
    #   a gateway.
    #
    # @return [Types::DescribeCachediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCachediSCSIVolumesOutput#cached_iscsi_volumes #cached_iscsi_volumes} => Array&lt;Types::CachediSCSIVolume&gt;
    #
    #
    # @example Example: To describe gateway cached iSCSI volumes
    #
    #   # Returns a description of the gateway cached iSCSI volumes specified in the request.
    #
    #   resp = client.describe_cached_iscsi_volumes({
    #     volume_arns: [
    #       "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cached_iscsi_volumes: [
    #       {
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #         volume_id: "vol-1122AABB", 
    #         volume_size_in_bytes: 1099511627776, 
    #         volume_status: "AVAILABLE", 
    #         volume_type: "CACHED iSCSI", 
    #         volume_iscsi_attributes: {
    #           chap_enabled: true, 
    #           lun_number: 1, 
    #           network_interface_id: "10.243.43.207", 
    #           network_interface_port: 3260, 
    #           target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cached_iscsi_volumes({
    #     volume_arns: ["VolumeARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cached_iscsi_volumes #=> Array
    #   resp.cached_iscsi_volumes[0].volume_arn #=> String
    #   resp.cached_iscsi_volumes[0].volume_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_type #=> String
    #   resp.cached_iscsi_volumes[0].volume_status #=> String
    #   resp.cached_iscsi_volumes[0].volume_attachment_status #=> String
    #   resp.cached_iscsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_progress #=> Float
    #   resp.cached_iscsi_volumes[0].source_snapshot_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
    #   resp.cached_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.cached_iscsi_volumes[0].created_date #=> Time
    #   resp.cached_iscsi_volumes[0].volume_used_in_bytes #=> Integer
    #   resp.cached_iscsi_volumes[0].kms_key #=> String
    #   resp.cached_iscsi_volumes[0].target_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeCachediSCSIVolumes AWS API Documentation
    #
    # @overload describe_cached_iscsi_volumes(params = {})
    # @param [Hash] params ({})
    def describe_cached_iscsi_volumes(params = {}, options = {})
      req = build_request(:describe_cached_iscsi_volumes, params)
      req.send_request(options)
    end

    # Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
    # credentials information for a specified iSCSI target, one for each
    # target-initiator pair. This operation is supported in the volume and
    # tape gateway types.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return to retrieve the
    #   TargetARN for specified VolumeARN.
    #
    # @return [Types::DescribeChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChapCredentialsOutput#chap_credentials #chap_credentials} => Array&lt;Types::ChapInfo&gt;
    #
    #
    # @example Example: To describe CHAP credetnitals for an iSCSI
    #
    #   # Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI
    #   # target, one for each target-initiator pair.
    #
    #   resp = client.describe_chap_credentials({
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     chap_credentials: [
    #       {
    #         initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com", 
    #         secret_to_authenticate_initiator: "111111111111", 
    #         secret_to_authenticate_target: "222222222222", 
    #         target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_chap_credentials({
    #     target_arn: "TargetARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.chap_credentials #=> Array
    #   resp.chap_credentials[0].target_arn #=> String
    #   resp.chap_credentials[0].secret_to_authenticate_initiator #=> String
    #   resp.chap_credentials[0].initiator_name #=> String
    #   resp.chap_credentials[0].secret_to_authenticate_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeChapCredentials AWS API Documentation
    #
    # @overload describe_chap_credentials(params = {})
    # @param [Hash] params ({})
    def describe_chap_credentials(params = {}, options = {})
      req = build_request(:describe_chap_credentials, params)
      req.send_request(options)
    end

    # Returns metadata about a gateway such as its name, network interfaces,
    # configured time zone, and the state (whether the gateway is running or
    # not). To specify which gateway to describe, use the Amazon Resource
    # Name (ARN) of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayInformationOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_name #gateway_name} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_timezone #gateway_timezone} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_state #gateway_state} => String
    #   * {Types::DescribeGatewayInformationOutput#gateway_network_interfaces #gateway_network_interfaces} => Array&lt;Types::NetworkInterface&gt;
    #   * {Types::DescribeGatewayInformationOutput#gateway_type #gateway_type} => String
    #   * {Types::DescribeGatewayInformationOutput#next_update_availability_date #next_update_availability_date} => String
    #   * {Types::DescribeGatewayInformationOutput#last_software_update #last_software_update} => String
    #   * {Types::DescribeGatewayInformationOutput#ec2_instance_id #ec2_instance_id} => String
    #   * {Types::DescribeGatewayInformationOutput#ec2_instance_region #ec2_instance_region} => String
    #   * {Types::DescribeGatewayInformationOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeGatewayInformationOutput#vpc_endpoint #vpc_endpoint} => String
    #   * {Types::DescribeGatewayInformationOutput#cloud_watch_log_group_arn #cloud_watch_log_group_arn} => String
    #   * {Types::DescribeGatewayInformationOutput#host_environment #host_environment} => String
    #   * {Types::DescribeGatewayInformationOutput#endpoint_type #endpoint_type} => String
    #   * {Types::DescribeGatewayInformationOutput#software_updates_end_date #software_updates_end_date} => String
    #   * {Types::DescribeGatewayInformationOutput#deprecation_date #deprecation_date} => String
    #
    #
    # @example Example: To describe metadata about the gateway
    #
    #   # Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the
    #   # gateway is running or not).
    #
    #   resp = client.describe_gateway_information({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     gateway_id: "sgw-AABB1122", 
    #     gateway_name: "My_Gateway", 
    #     gateway_network_interfaces: [
    #       {
    #         ipv_4_address: "10.35.69.216", 
    #       }, 
    #     ], 
    #     gateway_state: "STATE_RUNNING", 
    #     gateway_timezone: "GMT-8:00", 
    #     gateway_type: "STORED", 
    #     last_software_update: "2016-01-02T16:00:00", 
    #     next_update_availability_date: "2017-01-02T16:00:00", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_information({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_id #=> String
    #   resp.gateway_name #=> String
    #   resp.gateway_timezone #=> String
    #   resp.gateway_state #=> String
    #   resp.gateway_network_interfaces #=> Array
    #   resp.gateway_network_interfaces[0].ipv_4_address #=> String
    #   resp.gateway_network_interfaces[0].mac_address #=> String
    #   resp.gateway_network_interfaces[0].ipv_6_address #=> String
    #   resp.gateway_type #=> String
    #   resp.next_update_availability_date #=> String
    #   resp.last_software_update #=> String
    #   resp.ec2_instance_id #=> String
    #   resp.ec2_instance_region #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.vpc_endpoint #=> String
    #   resp.cloud_watch_log_group_arn #=> String
    #   resp.host_environment #=> String, one of "VMWARE", "HYPER-V", "EC2", "KVM", "OTHER"
    #   resp.endpoint_type #=> String
    #   resp.software_updates_end_date #=> String
    #   resp.deprecation_date #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeGatewayInformation AWS API Documentation
    #
    # @overload describe_gateway_information(params = {})
    # @param [Hash] params ({})
    def describe_gateway_information(params = {}, options = {})
      req = build_request(:describe_gateway_information, params)
      req.send_request(options)
    end

    # Returns your gateway's weekly maintenance start time including the
    # day and time of the week. Note that values are in terms of the
    # gateway's time zone.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMaintenanceStartTimeOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeMaintenanceStartTimeOutput#hour_of_day #hour_of_day} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#minute_of_hour #minute_of_hour} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#day_of_week #day_of_week} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#day_of_month #day_of_month} => Integer
    #   * {Types::DescribeMaintenanceStartTimeOutput#timezone #timezone} => String
    #
    #
    # @example Example: To describe gateway's maintenance start time
    #
    #   # Returns your gateway's weekly maintenance start time including the day and time of the week.
    #
    #   resp = client.describe_maintenance_start_time({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     day_of_week: 2, 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     hour_of_day: 15, 
    #     minute_of_hour: 35, 
    #     timezone: "GMT+7:00", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_maintenance_start_time({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.hour_of_day #=> Integer
    #   resp.minute_of_hour #=> Integer
    #   resp.day_of_week #=> Integer
    #   resp.day_of_month #=> Integer
    #   resp.timezone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeMaintenanceStartTime AWS API Documentation
    #
    # @overload describe_maintenance_start_time(params = {})
    # @param [Hash] params ({})
    def describe_maintenance_start_time(params = {}, options = {})
      req = build_request(:describe_maintenance_start_time, params)
      req.send_request(options)
    end

    # Gets a description for one or more Network File System (NFS) file
    # shares from a file gateway. This operation is only supported for file
    # gateways.
    #
    # @option params [required, Array<String>] :file_share_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file share
    #   to be described.
    #
    # @return [Types::DescribeNFSFileSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNFSFileSharesOutput#nfs_file_share_info_list #nfs_file_share_info_list} => Array&lt;Types::NFSFileShareInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_nfs_file_shares({
    #     file_share_arn_list: ["FileShareARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.nfs_file_share_info_list #=> Array
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.file_mode #=> String
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.directory_mode #=> String
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.group_id #=> Integer
    #   resp.nfs_file_share_info_list[0].nfs_file_share_defaults.owner_id #=> Integer
    #   resp.nfs_file_share_info_list[0].file_share_arn #=> String
    #   resp.nfs_file_share_info_list[0].file_share_id #=> String
    #   resp.nfs_file_share_info_list[0].file_share_status #=> String
    #   resp.nfs_file_share_info_list[0].gateway_arn #=> String
    #   resp.nfs_file_share_info_list[0].kms_encrypted #=> Boolean
    #   resp.nfs_file_share_info_list[0].kms_key #=> String
    #   resp.nfs_file_share_info_list[0].path #=> String
    #   resp.nfs_file_share_info_list[0].role #=> String
    #   resp.nfs_file_share_info_list[0].location_arn #=> String
    #   resp.nfs_file_share_info_list[0].default_storage_class #=> String
    #   resp.nfs_file_share_info_list[0].object_acl #=> String, one of "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"
    #   resp.nfs_file_share_info_list[0].client_list #=> Array
    #   resp.nfs_file_share_info_list[0].client_list[0] #=> String
    #   resp.nfs_file_share_info_list[0].squash #=> String
    #   resp.nfs_file_share_info_list[0].read_only #=> Boolean
    #   resp.nfs_file_share_info_list[0].guess_mime_type_enabled #=> Boolean
    #   resp.nfs_file_share_info_list[0].requester_pays #=> Boolean
    #   resp.nfs_file_share_info_list[0].tags #=> Array
    #   resp.nfs_file_share_info_list[0].tags[0].key #=> String
    #   resp.nfs_file_share_info_list[0].tags[0].value #=> String
    #   resp.nfs_file_share_info_list[0].file_share_name #=> String
    #   resp.nfs_file_share_info_list[0].cache_attributes.cache_stale_timeout_in_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeNFSFileShares AWS API Documentation
    #
    # @overload describe_nfs_file_shares(params = {})
    # @param [Hash] params ({})
    def describe_nfs_file_shares(params = {}, options = {})
      req = build_request(:describe_nfs_file_shares, params)
      req.send_request(options)
    end

    # Gets a description for one or more Server Message Block (SMB) file
    # shares from a file gateway. This operation is only supported for file
    # gateways.
    #
    # @option params [required, Array<String>] :file_share_arn_list
    #   An array containing the Amazon Resource Name (ARN) of each file share
    #   to be described.
    #
    # @return [Types::DescribeSMBFileSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSMBFileSharesOutput#smb_file_share_info_list #smb_file_share_info_list} => Array&lt;Types::SMBFileShareInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_smb_file_shares({
    #     file_share_arn_list: ["FileShareARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.smb_file_share_info_list #=> Array
    #   resp.smb_file_share_info_list[0].file_share_arn #=> String
    #   resp.smb_file_share_info_list[0].file_share_id #=> String
    #   resp.smb_file_share_info_list[0].file_share_status #=> String
    #   resp.smb_file_share_info_list[0].gateway_arn #=> String
    #   resp.smb_file_share_info_list[0].kms_encrypted #=> Boolean
    #   resp.smb_file_share_info_list[0].kms_key #=> String
    #   resp.smb_file_share_info_list[0].path #=> String
    #   resp.smb_file_share_info_list[0].role #=> String
    #   resp.smb_file_share_info_list[0].location_arn #=> String
    #   resp.smb_file_share_info_list[0].default_storage_class #=> String
    #   resp.smb_file_share_info_list[0].object_acl #=> String, one of "private", "public-read", "public-read-write", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "aws-exec-read"
    #   resp.smb_file_share_info_list[0].read_only #=> Boolean
    #   resp.smb_file_share_info_list[0].guess_mime_type_enabled #=> Boolean
    #   resp.smb_file_share_info_list[0].requester_pays #=> Boolean
    #   resp.smb_file_share_info_list[0].smbacl_enabled #=> Boolean
    #   resp.smb_file_share_info_list[0].admin_user_list #=> Array
    #   resp.smb_file_share_info_list[0].admin_user_list[0] #=> String
    #   resp.smb_file_share_info_list[0].valid_user_list #=> Array
    #   resp.smb_file_share_info_list[0].valid_user_list[0] #=> String
    #   resp.smb_file_share_info_list[0].invalid_user_list #=> Array
    #   resp.smb_file_share_info_list[0].invalid_user_list[0] #=> String
    #   resp.smb_file_share_info_list[0].audit_destination_arn #=> String
    #   resp.smb_file_share_info_list[0].authentication #=> String
    #   resp.smb_file_share_info_list[0].case_sensitivity #=> String, one of "ClientSpecified", "CaseSensitive"
    #   resp.smb_file_share_info_list[0].tags #=> Array
    #   resp.smb_file_share_info_list[0].tags[0].key #=> String
    #   resp.smb_file_share_info_list[0].tags[0].value #=> String
    #   resp.smb_file_share_info_list[0].file_share_name #=> String
    #   resp.smb_file_share_info_list[0].cache_attributes.cache_stale_timeout_in_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBFileShares AWS API Documentation
    #
    # @overload describe_smb_file_shares(params = {})
    # @param [Hash] params ({})
    def describe_smb_file_shares(params = {}, options = {})
      req = build_request(:describe_smb_file_shares, params)
      req.send_request(options)
    end

    # Gets a description of a Server Message Block (SMB) file share settings
    # from a file gateway. This operation is only supported for file
    # gateways.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeSMBSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSMBSettingsOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeSMBSettingsOutput#domain_name #domain_name} => String
    #   * {Types::DescribeSMBSettingsOutput#active_directory_status #active_directory_status} => String
    #   * {Types::DescribeSMBSettingsOutput#smb_guest_password_set #smb_guest_password_set} => Boolean
    #   * {Types::DescribeSMBSettingsOutput#smb_security_strategy #smb_security_strategy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_smb_settings({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.domain_name #=> String
    #   resp.active_directory_status #=> String, one of "ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR"
    #   resp.smb_guest_password_set #=> Boolean
    #   resp.smb_security_strategy #=> String, one of "ClientSpecified", "MandatorySigning", "MandatoryEncryption"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSMBSettings AWS API Documentation
    #
    # @overload describe_smb_settings(params = {})
    # @param [Hash] params ({})
    def describe_smb_settings(params = {}, options = {})
      req = build_request(:describe_smb_settings, params)
      req.send_request(options)
    end

    # Describes the snapshot schedule for the specified gateway volume. The
    # snapshot schedule information includes intervals at which snapshots
    # are automatically initiated on the volume. This operation is only
    # supported in the cached volume and stored volume types.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @return [Types::DescribeSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #   * {Types::DescribeSnapshotScheduleOutput#start_at #start_at} => Integer
    #   * {Types::DescribeSnapshotScheduleOutput#recurrence_in_hours #recurrence_in_hours} => Integer
    #   * {Types::DescribeSnapshotScheduleOutput#description #description} => String
    #   * {Types::DescribeSnapshotScheduleOutput#timezone #timezone} => String
    #   * {Types::DescribeSnapshotScheduleOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To describe snapshot schedule for gateway volume
    #
    #   # Describes the snapshot schedule for the specified gateway volume including intervals at which snapshots are
    #   # automatically initiated.
    #
    #   resp = client.describe_snapshot_schedule({
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "sgw-AABB1122:vol-AABB1122:Schedule", 
    #     recurrence_in_hours: 24, 
    #     start_at: 6, 
    #     timezone: "GMT+7:00", 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #   resp.start_at #=> Integer
    #   resp.recurrence_in_hours #=> Integer
    #   resp.description #=> String
    #   resp.timezone #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeSnapshotSchedule AWS API Documentation
    #
    # @overload describe_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def describe_snapshot_schedule(params = {}, options = {})
      req = build_request(:describe_snapshot_schedule, params)
      req.send_request(options)
    end

    # Returns the description of the gateway volumes specified in the
    # request. The list of gateway volumes in the request must be from one
    # gateway. In the response, AWS Storage Gateway returns volume
    # information sorted by volume ARNs. This operation is only supported in
    # stored volume gateway type.
    #
    # @option params [required, Array<String>] :volume_arns
    #   An array of strings where each string represents the Amazon Resource
    #   Name (ARN) of a stored volume. All of the specified stored volumes
    #   must be from the same gateway. Use ListVolumes to get volume ARNs for
    #   a gateway.
    #
    # @return [Types::DescribeStorediSCSIVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorediSCSIVolumesOutput#stored_iscsi_volumes #stored_iscsi_volumes} => Array&lt;Types::StorediSCSIVolume&gt;
    #
    #
    # @example Example: To describe the volumes of a gateway
    #
    #   # Returns the description of the gateway volumes specified in the request belonging to the same gateway.
    #
    #   resp = client.describe_stored_iscsi_volumes({
    #     volume_arns: [
    #       "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     stored_iscsi_volumes: [
    #       {
    #         preserved_existing_data: false, 
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #         volume_disk_id: "pci-0000:03:00.0-scsi-0:0:0:0", 
    #         volume_id: "vol-1122AABB", 
    #         volume_progress: 23.7, 
    #         volume_size_in_bytes: 1099511627776, 
    #         volume_status: "BOOTSTRAPPING", 
    #         volume_iscsi_attributes: {
    #           chap_enabled: true, 
    #           network_interface_id: "10.243.43.207", 
    #           network_interface_port: 3260, 
    #           target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stored_iscsi_volumes({
    #     volume_arns: ["VolumeARN"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stored_iscsi_volumes #=> Array
    #   resp.stored_iscsi_volumes[0].volume_arn #=> String
    #   resp.stored_iscsi_volumes[0].volume_id #=> String
    #   resp.stored_iscsi_volumes[0].volume_type #=> String
    #   resp.stored_iscsi_volumes[0].volume_status #=> String
    #   resp.stored_iscsi_volumes[0].volume_attachment_status #=> String
    #   resp.stored_iscsi_volumes[0].volume_size_in_bytes #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_progress #=> Float
    #   resp.stored_iscsi_volumes[0].volume_disk_id #=> String
    #   resp.stored_iscsi_volumes[0].source_snapshot_id #=> String
    #   resp.stored_iscsi_volumes[0].preserved_existing_data #=> Boolean
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.target_arn #=> String
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_id #=> String
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.network_interface_port #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.lun_number #=> Integer
    #   resp.stored_iscsi_volumes[0].volume_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.stored_iscsi_volumes[0].created_date #=> Time
    #   resp.stored_iscsi_volumes[0].volume_used_in_bytes #=> Integer
    #   resp.stored_iscsi_volumes[0].kms_key #=> String
    #   resp.stored_iscsi_volumes[0].target_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeStorediSCSIVolumes AWS API Documentation
    #
    # @overload describe_stored_iscsi_volumes(params = {})
    # @param [Hash] params ({})
    def describe_stored_iscsi_volumes(params = {}, options = {})
      req = build_request(:describe_stored_iscsi_volumes, params)
      req.send_request(options)
    end

    # Returns a description of specified virtual tapes in the virtual tape
    # shelf (VTS). This operation is only supported in the tape gateway
    # type.
    #
    # If a specific `TapeARN` is not specified, AWS Storage Gateway returns
    # a description of all virtual tapes found in the VTS associated with
    # your account.
    #
    # @option params [Array<String>] :tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing virtual tapes.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tapes described be limited to the
    #   specified number.
    #
    # @return [Types::DescribeTapeArchivesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapeArchivesOutput#tape_archives #tape_archives} => Array&lt;Types::TapeArchive&gt;
    #   * {Types::DescribeTapeArchivesOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe virtual tapes in the VTS
    #
    #   # Returns a description of specified virtual tapes in the virtual tape shelf (VTS).
    #
    #   resp = client.describe_tape_archives({
    #     limit: 123, 
    #     marker: "1", 
    #     tape_arns: [
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/AM08A1AD", 
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/AMZN01A2A4", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "1", 
    #     tape_archives: [
    #       {
    #         completion_time: Time.parse("2016-12-16T13:50Z"), 
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999:tape/AM08A1AD", 
    #         tape_barcode: "AM08A1AD", 
    #         tape_size_in_bytes: 107374182400, 
    #         tape_status: "ARCHIVED", 
    #       }, 
    #       {
    #         completion_time: Time.parse("2016-12-16T13:59Z"), 
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4", 
    #         tape_barcode: "AMZN01A2A4", 
    #         tape_size_in_bytes: 429496729600, 
    #         tape_status: "ARCHIVED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_archives({
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_archives #=> Array
    #   resp.tape_archives[0].tape_arn #=> String
    #   resp.tape_archives[0].tape_barcode #=> String
    #   resp.tape_archives[0].tape_created_date #=> Time
    #   resp.tape_archives[0].tape_size_in_bytes #=> Integer
    #   resp.tape_archives[0].completion_time #=> Time
    #   resp.tape_archives[0].retrieved_to #=> String
    #   resp.tape_archives[0].tape_status #=> String
    #   resp.tape_archives[0].tape_used_in_bytes #=> Integer
    #   resp.tape_archives[0].kms_key #=> String
    #   resp.tape_archives[0].pool_id #=> String
    #   resp.tape_archives[0].worm #=> Boolean
    #   resp.tape_archives[0].retention_start_date #=> Time
    #   resp.tape_archives[0].pool_entry_date #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeArchives AWS API Documentation
    #
    # @overload describe_tape_archives(params = {})
    # @param [Hash] params ({})
    def describe_tape_archives(params = {}, options = {})
      req = build_request(:describe_tape_archives, params)
      req.send_request(options)
    end

    # Returns a list of virtual tape recovery points that are available for
    # the specified tape gateway.
    #
    # A recovery point is a point-in-time view of a virtual tape at which
    # all the data on the virtual tape is consistent. If your gateway
    # crashes, virtual tapes that have recovery points can be recovered to a
    # new gateway. This operation is only supported in the tape gateway
    # type.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing the virtual tape recovery points.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tape recovery points that are
    #   described be limited to the specified number.
    #
    # @return [Types::DescribeTapeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapeRecoveryPointsOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeTapeRecoveryPointsOutput#tape_recovery_point_infos #tape_recovery_point_infos} => Array&lt;Types::TapeRecoveryPointInfo&gt;
    #   * {Types::DescribeTapeRecoveryPointsOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe virtual tape recovery points
    #
    #   # Returns a list of virtual tape recovery points that are available for the specified gateway-VTL.
    #
    #   resp = client.describe_tape_recovery_points({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     limit: 1, 
    #     marker: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     marker: "1", 
    #     tape_recovery_point_infos: [
    #       {
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999:tape/AMZN01A2A4", 
    #         tape_recovery_point_time: Time.parse("2016-12-16T13:50Z"), 
    #         tape_size_in_bytes: 1471550497, 
    #         tape_status: "AVAILABLE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tape_recovery_points({
    #     gateway_arn: "GatewayARN", # required
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.tape_recovery_point_infos #=> Array
    #   resp.tape_recovery_point_infos[0].tape_arn #=> String
    #   resp.tape_recovery_point_infos[0].tape_recovery_point_time #=> Time
    #   resp.tape_recovery_point_infos[0].tape_size_in_bytes #=> Integer
    #   resp.tape_recovery_point_infos[0].tape_status #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapeRecoveryPoints AWS API Documentation
    #
    # @overload describe_tape_recovery_points(params = {})
    # @param [Hash] params ({})
    def describe_tape_recovery_points(params = {}, options = {})
      req = build_request(:describe_tape_recovery_points, params)
      req.send_request(options)
    end

    # Returns a description of the specified Amazon Resource Name (ARN) of
    # virtual tapes. If a `TapeARN` is not specified, returns a description
    # of all virtual tapes associated with the specified gateway. This
    # operation is only supported in the tape gateway type.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [Array<String>] :tape_arns
    #   Specifies one or more unique Amazon Resource Names (ARNs) that
    #   represent the virtual tapes you want to describe. If this parameter is
    #   not specified, Tape gateway returns a description of all virtual tapes
    #   associated with the specified gateway.
    #
    # @option params [String] :marker
    #   A marker value, obtained in a previous call to `DescribeTapes`. This
    #   marker indicates which page of results to retrieve.
    #
    #   If not specified, the first page of results is retrieved.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of virtual tapes described be limited to the
    #   specified number.
    #
    #   <note markdown="1"> Amazon Web Services may impose its own limit, if this field is not
    #   set.
    #
    #    </note>
    #
    # @return [Types::DescribeTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTapesOutput#tapes #tapes} => Array&lt;Types::Tape&gt;
    #   * {Types::DescribeTapesOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe virtual tape(s) associated with gateway
    #
    #   # Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified,
    #   # returns a description of all virtual tapes.
    #
    #   resp = client.describe_tapes({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     limit: 2, 
    #     marker: "1", 
    #     tape_arns: [
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1", 
    #       "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "1", 
    #     tapes: [
    #       {
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST04A2A1", 
    #         tape_barcode: "TEST04A2A1", 
    #         tape_size_in_bytes: 107374182400, 
    #         tape_status: "AVAILABLE", 
    #       }, 
    #       {
    #         tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST05A2A0", 
    #         tape_barcode: "TEST05A2A0", 
    #         tape_size_in_bytes: 107374182400, 
    #         tape_status: "AVAILABLE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tapes({
    #     gateway_arn: "GatewayARN", # required
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tapes #=> Array
    #   resp.tapes[0].tape_arn #=> String
    #   resp.tapes[0].tape_barcode #=> String
    #   resp.tapes[0].tape_created_date #=> Time
    #   resp.tapes[0].tape_size_in_bytes #=> Integer
    #   resp.tapes[0].tape_status #=> String
    #   resp.tapes[0].vtl_device #=> String
    #   resp.tapes[0].progress #=> Float
    #   resp.tapes[0].tape_used_in_bytes #=> Integer
    #   resp.tapes[0].kms_key #=> String
    #   resp.tapes[0].pool_id #=> String
    #   resp.tapes[0].worm #=> Boolean
    #   resp.tapes[0].retention_start_date #=> Time
    #   resp.tapes[0].pool_entry_date #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeTapes AWS API Documentation
    #
    # @overload describe_tapes(params = {})
    # @param [Hash] params ({})
    def describe_tapes(params = {}, options = {})
      req = build_request(:describe_tapes, params)
      req.send_request(options)
    end

    # Returns information about the upload buffer of a gateway. This
    # operation is supported for the stored volume, cached volume, and tape
    # gateway types.
    #
    # The response includes disk IDs that are configured as upload buffer
    # space, and it includes the amount of upload buffer space allocated and
    # used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeUploadBufferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUploadBufferOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeUploadBufferOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeUploadBufferOutput#upload_buffer_used_in_bytes #upload_buffer_used_in_bytes} => Integer
    #   * {Types::DescribeUploadBufferOutput#upload_buffer_allocated_in_bytes #upload_buffer_allocated_in_bytes} => Integer
    #
    #
    # @example Example: To describe upload buffer of gateway
    #
    #   # Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space
    #   # allocated/used.
    #
    #   resp = client.describe_upload_buffer({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:04:00.0-scsi-0:1:0:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     upload_buffer_allocated_in_bytes: 0, 
    #     upload_buffer_used_in_bytes: 161061273600, 
    #   }
    #
    # @example Example: To describe upload buffer of a gateway
    #
    #   # Returns information about the upload buffer of a gateway including disk IDs and the amount of upload buffer space
    #   # allocated and used.
    #
    #   resp = client.describe_upload_buffer({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:04:00.0-scsi-0:1:0:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     upload_buffer_allocated_in_bytes: 161061273600, 
    #     upload_buffer_used_in_bytes: 0, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_upload_buffer({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.upload_buffer_used_in_bytes #=> Integer
    #   resp.upload_buffer_allocated_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeUploadBuffer AWS API Documentation
    #
    # @overload describe_upload_buffer(params = {})
    # @param [Hash] params ({})
    def describe_upload_buffer(params = {}, options = {})
      req = build_request(:describe_upload_buffer, params)
      req.send_request(options)
    end

    # Returns a description of virtual tape library (VTL) devices for the
    # specified tape gateway. In the response, AWS Storage Gateway returns
    # VTL device information.
    #
    # This operation is only supported in the tape gateway type.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [Array<String>] :vtl_device_arns
    #   An array of strings, where each string represents the Amazon Resource
    #   Name (ARN) of a VTL device.
    #
    #   <note markdown="1"> All of the specified VTL devices must be from the same gateway. If no
    #   VTL devices are specified, the result will contain all devices on the
    #   specified gateway.
    #
    #    </note>
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   describing the VTL devices.
    #
    # @option params [Integer] :limit
    #   Specifies that the number of VTL devices described be limited to the
    #   specified number.
    #
    # @return [Types::DescribeVTLDevicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVTLDevicesOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeVTLDevicesOutput#vtl_devices #vtl_devices} => Array&lt;Types::VTLDevice&gt;
    #   * {Types::DescribeVTLDevicesOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe virtual tape library (VTL) devices of a single gateway
    #
    #   # Returns a description of virtual tape library (VTL) devices for the specified gateway.
    #
    #   resp = client.describe_vtl_devices({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     limit: 123, 
    #     marker: "1", 
    #     vtl_device_arns: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     marker: "1", 
    #     vtl_devices: [
    #       {
    #         device_iscsi_attributes: {
    #           chap_enabled: false, 
    #           network_interface_id: "10.243.43.207", 
    #           network_interface_port: 3260, 
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-mediachanger", 
    #         }, 
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001", 
    #         vtl_device_product_identifier: "L700", 
    #         vtl_device_type: "Medium Changer", 
    #         vtl_device_vendor: "STK", 
    #       }, 
    #       {
    #         device_iscsi_attributes: {
    #           chap_enabled: false, 
    #           network_interface_id: "10.243.43.209", 
    #           network_interface_port: 3260, 
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-01", 
    #         }, 
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00001", 
    #         vtl_device_product_identifier: "ULT3580-TD5", 
    #         vtl_device_type: "Tape Drive", 
    #         vtl_device_vendor: "IBM", 
    #       }, 
    #       {
    #         device_iscsi_attributes: {
    #           chap_enabled: false, 
    #           network_interface_id: "10.243.43.209", 
    #           network_interface_port: 3260, 
    #           target_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:sgw-1fad4876-tapedrive-02", 
    #         }, 
    #         vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_TAPEDRIVE_00002", 
    #         vtl_device_product_identifier: "ULT3580-TD5", 
    #         vtl_device_type: "Tape Drive", 
    #         vtl_device_vendor: "IBM", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vtl_devices({
    #     gateway_arn: "GatewayARN", # required
    #     vtl_device_arns: ["VTLDeviceARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.vtl_devices #=> Array
    #   resp.vtl_devices[0].vtl_device_arn #=> String
    #   resp.vtl_devices[0].vtl_device_type #=> String
    #   resp.vtl_devices[0].vtl_device_vendor #=> String
    #   resp.vtl_devices[0].vtl_device_product_identifier #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.target_arn #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_id #=> String
    #   resp.vtl_devices[0].device_iscsi_attributes.network_interface_port #=> Integer
    #   resp.vtl_devices[0].device_iscsi_attributes.chap_enabled #=> Boolean
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeVTLDevices AWS API Documentation
    #
    # @overload describe_vtl_devices(params = {})
    # @param [Hash] params ({})
    def describe_vtl_devices(params = {}, options = {})
      req = build_request(:describe_vtl_devices, params)
      req.send_request(options)
    end

    # Returns information about the working storage of a gateway. This
    # operation is only supported in the stored volumes gateway type. This
    # operation is deprecated in cached volumes API version (20120630). Use
    # DescribeUploadBuffer instead.
    #
    # <note markdown="1"> Working storage is also referred to as upload buffer. You can also use
    # the DescribeUploadBuffer operation to add upload buffer to a stored
    # volume gateway.
    #
    #  </note>
    #
    # The response includes disk IDs that are configured as working storage,
    # and it includes the amount of working storage allocated and used.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DescribeWorkingStorageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkingStorageOutput#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeWorkingStorageOutput#disk_ids #disk_ids} => Array&lt;String&gt;
    #   * {Types::DescribeWorkingStorageOutput#working_storage_used_in_bytes #working_storage_used_in_bytes} => Integer
    #   * {Types::DescribeWorkingStorageOutput#working_storage_allocated_in_bytes #working_storage_allocated_in_bytes} => Integer
    #
    #
    # @example Example: To describe the working storage of a gateway [Depreciated]
    #
    #   # This operation is supported only for the gateway-stored volume architecture. This operation is deprecated in
    #   # cached-volumes API version (20120630). Use DescribeUploadBuffer instead.
    #
    #   resp = client.describe_working_storage({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     disk_ids: [
    #       "pci-0000:03:00.0-scsi-0:0:0:0", 
    #       "pci-0000:03:00.0-scsi-0:0:1:0", 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     working_storage_allocated_in_bytes: 2199023255552, 
    #     working_storage_used_in_bytes: 789207040, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_working_storage({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disk_ids #=> Array
    #   resp.disk_ids[0] #=> String
    #   resp.working_storage_used_in_bytes #=> Integer
    #   resp.working_storage_allocated_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DescribeWorkingStorage AWS API Documentation
    #
    # @overload describe_working_storage(params = {})
    # @param [Hash] params ({})
    def describe_working_storage(params = {}, options = {})
      req = build_request(:describe_working_storage, params)
      req.send_request(options)
    end

    # Disconnects a volume from an iSCSI connection and then detaches the
    # volume from the specified gateway. Detaching and attaching a volume
    # enables you to recover your data from one gateway to a different
    # gateway without creating a snapshot. It also makes it easier to move
    # your volumes from an on-premises gateway to a gateway hosted on an
    # Amazon EC2 instance. This operation is only supported in the volume
    # gateway type.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume to detach from the
    #   gateway.
    #
    # @option params [Boolean] :force_detach
    #   Set to `true` to forcibly remove the iSCSI connection of the target
    #   volume and detach the volume. The default is `false`. If this value is
    #   set to `false`, you must manually disconnect the iSCSI connection from
    #   the target volume.
    #
    #   Valid Values: `true` \| `false`
    #
    # @return [Types::DetachVolumeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachVolumeOutput#volume_arn #volume_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_volume({
    #     volume_arn: "VolumeARN", # required
    #     force_detach: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DetachVolume AWS API Documentation
    #
    # @overload detach_volume(params = {})
    # @param [Hash] params ({})
    def detach_volume(params = {}, options = {})
      req = build_request(:detach_volume, params)
      req.send_request(options)
    end

    # Disables a tape gateway when the gateway is no longer functioning. For
    # example, if your gateway VM is damaged, you can disable the gateway so
    # you can recover virtual tapes.
    #
    # Use this operation for a tape gateway that is not reachable or not
    # functioning. This operation is only supported in the tape gateway
    # type.
    #
    # After a gateway is disabled, it cannot be enabled.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::DisableGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableGatewayOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To disable a gateway when it is no longer functioning
    #
    #   # Disables a gateway when the gateway is no longer functioning. Use this operation for a gateway-VTL that is not reachable
    #   # or not functioning.
    #
    #   resp = client.disable_gateway({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/DisableGateway AWS API Documentation
    #
    # @overload disable_gateway(params = {})
    # @param [Hash] params ({})
    def disable_gateway(params = {}, options = {})
      req = build_request(:disable_gateway, params)
      req.send_request(options)
    end

    # Adds a file gateway to an Active Directory domain. This operation is
    # only supported for file gateways that support the SMB file protocol.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the `ListGateways`
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain that you want the gateway to join.
    #
    # @option params [String] :organizational_unit
    #   The organizational unit (OU) is a container in an Active Directory
    #   that can hold users, groups, computers, and other OUs and this
    #   parameter specifies the OU that the gateway will join within the AD
    #   domain.
    #
    # @option params [Array<String>] :domain_controllers
    #   List of IPv4 addresses, NetBIOS names, or host names of your domain
    #   server. If you need to specify the port number include it after the
    #   colon (“:”). For example, `mydc.mydomain.com:389`.
    #
    # @option params [Integer] :timeout_in_seconds
    #   Specifies the time in seconds, in which the `JoinDomain` operation
    #   must complete. The default is 20 seconds.
    #
    # @option params [required, String] :user_name
    #   Sets the user name of user who has permission to add the gateway to
    #   the Active Directory domain. The domain user account should be enabled
    #   to join computers to the domain. For example, you can use the domain
    #   administrator account or an account with delegated permissions to join
    #   computers to the domain.
    #
    # @option params [required, String] :password
    #   Sets the password of the user who has permission to add the gateway to
    #   the Active Directory domain.
    #
    # @return [Types::JoinDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::JoinDomainOutput#gateway_arn #gateway_arn} => String
    #   * {Types::JoinDomainOutput#active_directory_status #active_directory_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.join_domain({
    #     gateway_arn: "GatewayARN", # required
    #     domain_name: "DomainName", # required
    #     organizational_unit: "OrganizationalUnit",
    #     domain_controllers: ["Host"],
    #     timeout_in_seconds: 1,
    #     user_name: "DomainUserName", # required
    #     password: "DomainUserPassword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.active_directory_status #=> String, one of "ACCESS_DENIED", "DETACHED", "JOINED", "JOINING", "NETWORK_ERROR", "TIMEOUT", "UNKNOWN_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/JoinDomain AWS API Documentation
    #
    # @overload join_domain(params = {})
    # @param [Hash] params ({})
    def join_domain(params = {}, options = {})
      req = build_request(:join_domain, params)
      req.send_request(options)
    end

    # Lists the automatic tape creation policies for a gateway. If there are
    # no automatic tape creation policies for the gateway, it returns an
    # empty list.
    #
    # This operation is only supported for tape gateways.
    #
    # @option params [String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::ListAutomaticTapeCreationPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomaticTapeCreationPoliciesOutput#automatic_tape_creation_policy_infos #automatic_tape_creation_policy_infos} => Array&lt;Types::AutomaticTapeCreationPolicyInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automatic_tape_creation_policies({
    #     gateway_arn: "GatewayARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.automatic_tape_creation_policy_infos #=> Array
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules #=> Array
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].tape_barcode_prefix #=> String
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].pool_id #=> String
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].tape_size_in_bytes #=> Integer
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].minimum_num_tapes #=> Integer
    #   resp.automatic_tape_creation_policy_infos[0].automatic_tape_creation_rules[0].worm #=> Boolean
    #   resp.automatic_tape_creation_policy_infos[0].gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListAutomaticTapeCreationPolicies AWS API Documentation
    #
    # @overload list_automatic_tape_creation_policies(params = {})
    # @param [Hash] params ({})
    def list_automatic_tape_creation_policies(params = {}, options = {})
      req = build_request(:list_automatic_tape_creation_policies, params)
      req.send_request(options)
    end

    # Gets a list of the file shares for a specific file gateway, or the
    # list of file shares that belong to the calling user account. This
    # operation is only supported for file gateways.
    #
    # @option params [String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway whose file shares you
    #   want to list. If this field is not present, all file shares under your
    #   account are listed.
    #
    # @option params [Integer] :limit
    #   The maximum number of file shares to return in the response. The value
    #   must be an integer with a value greater than zero. Optional.
    #
    # @option params [String] :marker
    #   Opaque pagination token returned from a previous ListFileShares
    #   operation. If present, `Marker` specifies where to continue the list
    #   from after a previous call to ListFileShares. Optional.
    #
    # @return [Types::ListFileSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFileSharesOutput#marker #marker} => String
    #   * {Types::ListFileSharesOutput#next_marker #next_marker} => String
    #   * {Types::ListFileSharesOutput#file_share_info_list #file_share_info_list} => Array&lt;Types::FileShareInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_file_shares({
    #     gateway_arn: "GatewayARN",
    #     limit: 1,
    #     marker: "Marker",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.next_marker #=> String
    #   resp.file_share_info_list #=> Array
    #   resp.file_share_info_list[0].file_share_type #=> String, one of "NFS", "SMB"
    #   resp.file_share_info_list[0].file_share_arn #=> String
    #   resp.file_share_info_list[0].file_share_id #=> String
    #   resp.file_share_info_list[0].file_share_status #=> String
    #   resp.file_share_info_list[0].gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListFileShares AWS API Documentation
    #
    # @overload list_file_shares(params = {})
    # @param [Hash] params ({})
    def list_file_shares(params = {}, options = {})
      req = build_request(:list_file_shares, params)
      req.send_request(options)
    end

    # Lists gateways owned by an AWS account in an AWS Region specified in
    # the request. The returned list is ordered by gateway Amazon Resource
    # Name (ARN).
    #
    # By default, the operation returns a maximum of 100 gateways. This
    # operation supports pagination that allows you to optionally reduce the
    # number of gateways returned in a response.
    #
    # If you have more gateways than are returned in a response (that is,
    # the response returns only a truncated list of your gateways), the
    # response contains a marker that you can specify in your next request
    # to fetch the next page of gateways.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin the
    #   returned list of gateways.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of gateways returned be limited to the
    #   specified number of items.
    #
    # @return [Types::ListGatewaysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysOutput#gateways #gateways} => Array&lt;Types::GatewayInfo&gt;
    #   * {Types::ListGatewaysOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To lists region specific gateways per AWS account
    #
    #   # Lists gateways owned by an AWS account in a specified region as requested. Results are sorted by gateway ARN up to a
    #   # maximum of 100 gateways.
    #
    #   resp = client.list_gateways({
    #     limit: 2, 
    #     marker: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateways: [
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #       }, 
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-23A4567C", 
    #       }, 
    #     ], 
    #     marker: "1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateways #=> Array
    #   resp.gateways[0].gateway_id #=> String
    #   resp.gateways[0].gateway_arn #=> String
    #   resp.gateways[0].gateway_type #=> String
    #   resp.gateways[0].gateway_operational_state #=> String
    #   resp.gateways[0].gateway_name #=> String
    #   resp.gateways[0].ec2_instance_id #=> String
    #   resp.gateways[0].ec2_instance_region #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Returns a list of the gateway's local disks. To specify which gateway
    # to describe, you use the Amazon Resource Name (ARN) of the gateway in
    # the body of the request.
    #
    # The request returns a list of all disks, specifying which are
    # configured as working storage, cache storage, or stored volume or not
    # configured at all. The response includes a `DiskStatus` field. This
    # field can have a value of present (the disk is available to use),
    # missing (the disk is no longer connected to the gateway), or mismatch
    # (the disk node is occupied by a disk that has incorrect metadata or
    # the disk content is corrupted).
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::ListLocalDisksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLocalDisksOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListLocalDisksOutput#disks #disks} => Array&lt;Types::Disk&gt;
    #
    #
    # @example Example: To list the gateway's local disks
    #
    #   # The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored
    #   # volume or not configured at all.
    #
    #   resp = client.list_local_disks({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     disks: [
    #       {
    #         disk_allocation_type: "CACHE_STORAGE", 
    #         disk_id: "pci-0000:03:00.0-scsi-0:0:0:0", 
    #         disk_node: "SCSI(0:0)", 
    #         disk_path: "/dev/sda", 
    #         disk_size_in_bytes: 1099511627776, 
    #         disk_status: "missing", 
    #       }, 
    #       {
    #         disk_allocation_resource: "", 
    #         disk_allocation_type: "UPLOAD_BUFFER", 
    #         disk_id: "pci-0000:03:00.0-scsi-0:0:1:0", 
    #         disk_node: "SCSI(0:1)", 
    #         disk_path: "/dev/sdb", 
    #         disk_size_in_bytes: 1099511627776, 
    #         disk_status: "present", 
    #       }, 
    #     ], 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_local_disks({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.disks #=> Array
    #   resp.disks[0].disk_id #=> String
    #   resp.disks[0].disk_path #=> String
    #   resp.disks[0].disk_node #=> String
    #   resp.disks[0].disk_status #=> String
    #   resp.disks[0].disk_size_in_bytes #=> Integer
    #   resp.disks[0].disk_allocation_type #=> String
    #   resp.disks[0].disk_allocation_resource #=> String
    #   resp.disks[0].disk_attribute_list #=> Array
    #   resp.disks[0].disk_attribute_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListLocalDisks AWS API Documentation
    #
    # @overload list_local_disks(params = {})
    # @param [Hash] params ({})
    def list_local_disks(params = {}, options = {})
      req = build_request(:list_local_disks, params)
      req.send_request(options)
    end

    # Lists the tags that have been added to the specified resource. This
    # operation is supported in storage gateways of all types.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #
    # @option params [String] :marker
    #   An opaque string that indicates the position at which to begin
    #   returning the list of tags.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of tags returned be limited to the specified
    #   number of items.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceOutput#marker #marker} => String
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list tags that have been added to a resource
    #
    #   # Lists the tags that have been added to the specified resource.
    #
    #   resp = client.list_tags_for_resource({
    #     limit: 1, 
    #     marker: "1", 
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "1", 
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #     tags: [
    #       {
    #         key: "Dev Gatgeway Region", 
    #         value: "East Coast", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.marker #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists custom tape pools. You specify custom tape pools to list by
    # specifying one or more custom tape pool Amazon Resource Names (ARNs).
    # If you don't specify a custom tape pool ARN, the operation lists all
    # custom tape pools.
    #
    # This operation supports pagination. You can optionally specify the
    # `Limit` parameter in the body to limit the number of tape pools in the
    # response. If the number of tape pools returned in the response is
    # truncated, the response includes a `Marker` element that you can use
    # in your subsequent request to retrieve the next set of tape pools.
    #
    # @option params [Array<String>] :pool_arns
    #   The Amazon Resource Name (ARN) of each of the custom tape pools you
    #   want to list. If you don't specify a custom tape pool ARN, the
    #   response lists all custom tape pools.
    #
    # @option params [String] :marker
    #   A string that indicates the position at which to begin the returned
    #   list of tape pools.
    #
    # @option params [Integer] :limit
    #   An optional number limit for the tape pools in the list returned by
    #   this call.
    #
    # @return [Types::ListTapePoolsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTapePoolsOutput#pool_infos #pool_infos} => Array&lt;Types::PoolInfo&gt;
    #   * {Types::ListTapePoolsOutput#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tape_pools({
    #     pool_arns: ["PoolARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_infos #=> Array
    #   resp.pool_infos[0].pool_arn #=> String
    #   resp.pool_infos[0].pool_name #=> String
    #   resp.pool_infos[0].storage_class #=> String, one of "DEEP_ARCHIVE", "GLACIER"
    #   resp.pool_infos[0].retention_lock_type #=> String, one of "COMPLIANCE", "GOVERNANCE", "NONE"
    #   resp.pool_infos[0].retention_lock_time_in_days #=> Integer
    #   resp.pool_infos[0].pool_status #=> String, one of "ACTIVE", "DELETED"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapePools AWS API Documentation
    #
    # @overload list_tape_pools(params = {})
    # @param [Hash] params ({})
    def list_tape_pools(params = {}, options = {})
      req = build_request(:list_tape_pools, params)
      req.send_request(options)
    end

    # Lists virtual tapes in your virtual tape library (VTL) and your
    # virtual tape shelf (VTS). You specify the tapes to list by specifying
    # one or more tape Amazon Resource Names (ARNs). If you don't specify a
    # tape ARN, the operation lists all virtual tapes in both your VTL and
    # VTS.
    #
    # This operation supports pagination. By default, the operation returns
    # a maximum of up to 100 tapes. You can optionally specify the `Limit`
    # parameter in the body to limit the number of tapes in the response. If
    # the number of tapes returned in the response is truncated, the
    # response includes a `Marker` element that you can use in your
    # subsequent request to retrieve the next set of tapes. This operation
    # is only supported in the tape gateway type.
    #
    # @option params [Array<String>] :tape_arns
    #   The Amazon Resource Name (ARN) of each of the tapes you want to list.
    #   If you don't specify a tape ARN, the response lists all tapes in both
    #   your VTL and VTS.
    #
    # @option params [String] :marker
    #   A string that indicates the position at which to begin the returned
    #   list of tapes.
    #
    # @option params [Integer] :limit
    #   An optional number limit for the tapes in the list returned by this
    #   call.
    #
    # @return [Types::ListTapesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTapesOutput#tape_infos #tape_infos} => Array&lt;Types::TapeInfo&gt;
    #   * {Types::ListTapesOutput#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tapes({
    #     tape_arns: ["TapeARN"],
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_infos #=> Array
    #   resp.tape_infos[0].tape_arn #=> String
    #   resp.tape_infos[0].tape_barcode #=> String
    #   resp.tape_infos[0].tape_size_in_bytes #=> Integer
    #   resp.tape_infos[0].tape_status #=> String
    #   resp.tape_infos[0].gateway_arn #=> String
    #   resp.tape_infos[0].pool_id #=> String
    #   resp.tape_infos[0].retention_start_date #=> Time
    #   resp.tape_infos[0].pool_entry_date #=> Time
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListTapes AWS API Documentation
    #
    # @overload list_tapes(params = {})
    # @param [Hash] params ({})
    def list_tapes(params = {}, options = {})
      req = build_request(:list_tapes, params)
      req.send_request(options)
    end

    # Lists iSCSI initiators that are connected to a volume. You can use
    # this operation to determine whether a volume is being used or not.
    # This operation is only supported in the cached volume and stored
    # volume gateway types.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes for the gateway.
    #
    # @return [Types::ListVolumeInitiatorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumeInitiatorsOutput#initiators #initiators} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_initiators({
    #     volume_arn: "VolumeARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.initiators #=> Array
    #   resp.initiators[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeInitiators AWS API Documentation
    #
    # @overload list_volume_initiators(params = {})
    # @param [Hash] params ({})
    def list_volume_initiators(params = {}, options = {})
      req = build_request(:list_volume_initiators, params)
      req.send_request(options)
    end

    # Lists the recovery points for a specified gateway. This operation is
    # only supported in the cached volume gateway type.
    #
    # Each cache volume has one recovery point. A volume recovery point is a
    # point in time at which all data of the volume is consistent and from
    # which you can create a snapshot or clone a new cached volume from a
    # source volume. To create a snapshot from a volume recovery point use
    # the CreateSnapshotFromVolumeRecoveryPoint operation.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::ListVolumeRecoveryPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumeRecoveryPointsOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListVolumeRecoveryPointsOutput#volume_recovery_point_infos #volume_recovery_point_infos} => Array&lt;Types::VolumeRecoveryPointInfo&gt;
    #
    #
    # @example Example: To list recovery points for a gateway
    #
    #   # Lists the recovery points for a specified gateway in which all data of the volume is consistent and can be used to
    #   # create a snapshot.
    #
    #   resp = client.list_volume_recovery_points({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     volume_recovery_point_infos: [
    #       {
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #         volume_recovery_point_time: "2012-09-04T21:08:44.627Z", 
    #         volume_size_in_bytes: 536870912000, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volume_recovery_points({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.volume_recovery_point_infos #=> Array
    #   resp.volume_recovery_point_infos[0].volume_arn #=> String
    #   resp.volume_recovery_point_infos[0].volume_size_in_bytes #=> Integer
    #   resp.volume_recovery_point_infos[0].volume_usage_in_bytes #=> Integer
    #   resp.volume_recovery_point_infos[0].volume_recovery_point_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumeRecoveryPoints AWS API Documentation
    #
    # @overload list_volume_recovery_points(params = {})
    # @param [Hash] params ({})
    def list_volume_recovery_points(params = {}, options = {})
      req = build_request(:list_volume_recovery_points, params)
      req.send_request(options)
    end

    # Lists the iSCSI stored volumes of a gateway. Results are sorted by
    # volume ARN. The response includes only the volume ARNs. If you want
    # additional volume information, use the DescribeStorediSCSIVolumes or
    # the DescribeCachediSCSIVolumes API.
    #
    # The operation supports pagination. By default, the operation returns a
    # maximum of up to 100 volumes. You can optionally specify the `Limit`
    # field in the body to limit the number of volumes in the response. If
    # the number of volumes returned in the response is truncated, the
    # response includes a Marker field. You can use this Marker value in
    # your subsequent request to retrieve the next set of volumes. This
    # operation is only supported in the cached volume and stored volume
    # gateway types.
    #
    # @option params [String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [String] :marker
    #   A string that indicates the position at which to begin the returned
    #   list of volumes. Obtain the marker from the response of a previous
    #   List iSCSI Volumes request.
    #
    # @option params [Integer] :limit
    #   Specifies that the list of volumes returned be limited to the
    #   specified number of items.
    #
    # @return [Types::ListVolumesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVolumesOutput#gateway_arn #gateway_arn} => String
    #   * {Types::ListVolumesOutput#marker #marker} => String
    #   * {Types::ListVolumesOutput#volume_infos #volume_infos} => Array&lt;Types::VolumeInfo&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the iSCSI stored volumes of a gateway
    #
    #   # Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN up to a maximum of 100 volumes.
    #
    #   resp = client.list_volumes({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     limit: 2, 
    #     marker: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     marker: "1", 
    #     volume_infos: [
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #         gateway_id: "sgw-12A3456B", 
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #         volume_id: "vol-1122AABB", 
    #         volume_size_in_bytes: 107374182400, 
    #         volume_type: "STORED", 
    #       }, 
    #       {
    #         gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C", 
    #         gateway_id: "sgw-gw-13B4567C", 
    #         volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C/volume/vol-3344CCDD", 
    #         volume_id: "vol-1122AABB", 
    #         volume_size_in_bytes: 107374182400, 
    #         volume_type: "STORED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_volumes({
    #     gateway_arn: "GatewayARN",
    #     marker: "Marker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.marker #=> String
    #   resp.volume_infos #=> Array
    #   resp.volume_infos[0].volume_arn #=> String
    #   resp.volume_infos[0].volume_id #=> String
    #   resp.volume_infos[0].gateway_arn #=> String
    #   resp.volume_infos[0].gateway_id #=> String
    #   resp.volume_infos[0].volume_type #=> String
    #   resp.volume_infos[0].volume_size_in_bytes #=> Integer
    #   resp.volume_infos[0].volume_attachment_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ListVolumes AWS API Documentation
    #
    # @overload list_volumes(params = {})
    # @param [Hash] params ({})
    def list_volumes(params = {}, options = {})
      req = build_request(:list_volumes, params)
      req.send_request(options)
    end

    # Sends you notification through CloudWatch Events when all files
    # written to your file share have been uploaded to Amazon S3.
    #
    # AWS Storage Gateway can send a notification through Amazon CloudWatch
    # Events when all files written to your file share up to that point in
    # time have been uploaded to Amazon S3. These files include files
    # written to the file share up to the time that you make a request for
    # notification. When the upload is done, Storage Gateway sends you
    # notification through an Amazon CloudWatch Event. You can configure
    # CloudWatch Events to send the notification through event targets such
    # as Amazon SNS or AWS Lambda function. This operation is only supported
    # for file gateways.
    #
    # For more information, see [Getting file upload notification][1] in the
    # *AWS Storage Gateway User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share.
    #
    # @return [Types::NotifyWhenUploadedOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::NotifyWhenUploadedOutput#file_share_arn #file_share_arn} => String
    #   * {Types::NotifyWhenUploadedOutput#notification_id #notification_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_when_uploaded({
    #     file_share_arn: "FileShareARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #   resp.notification_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/NotifyWhenUploaded AWS API Documentation
    #
    # @overload notify_when_uploaded(params = {})
    # @param [Hash] params ({})
    def notify_when_uploaded(params = {}, options = {})
      req = build_request(:notify_when_uploaded, params)
      req.send_request(options)
    end

    # Refreshes the cache for the specified file share. This operation finds
    # objects in the Amazon S3 bucket that were added, removed, or replaced
    # since the gateway last listed the bucket's contents and cached the
    # results. This operation is only supported in the file gateway type.
    # You can subscribe to be notified through an Amazon CloudWatch event
    # when your RefreshCache operation completes. For more information, see
    # [Getting notified about file operations][1] in the *AWS Storage
    # Gateway User Guide*.
    #
    # When this API is called, it only initiates the refresh operation. When
    # the API call completes and returns a success code, it doesn't
    # necessarily mean that the file refresh has completed. You should use
    # the refresh-complete notification to determine that the operation has
    # completed before you check for new files on the gateway file share.
    # You can subscribe to be notified through an CloudWatch event when your
    # `RefreshCache` operation completes.
    #
    # Throttle limit: This API is asynchronous so the gateway will accept no
    # more than two refreshes at any time. We recommend using the
    # refresh-complete CloudWatch event notification before issuing
    # additional requests. For more information, see [Getting notified about
    # file operations][1] in the *AWS Storage Gateway User Guide*.
    #
    # If you invoke the RefreshCache API when two requests are already being
    # processed, any new request will cause an
    # `InvalidGatewayRequestException` error because too many requests were
    # sent to the server.
    #
    # For more information, see [Getting notified about file operations][1]
    # in the *AWS Storage Gateway User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share you want to refresh.
    #
    # @option params [Array<String>] :folder_list
    #   A comma-separated list of the paths of folders to refresh in the
    #   cache. The default is \[`"/"`\]. The default refreshes objects and
    #   folders at the root of the Amazon S3 bucket. If `Recursive` is set to
    #   `true`, the entire S3 bucket that the file share has access to is
    #   refreshed.
    #
    # @option params [Boolean] :recursive
    #   A value that specifies whether to recursively refresh folders in the
    #   cache. The refresh includes folders that were in the cache the last
    #   time the gateway listed the folder's contents. If this value set to
    #   `true`, each folder that is listed in `FolderList` is recursively
    #   updated. Otherwise, subfolders listed in `FolderList` are not
    #   refreshed. Only objects that are in folders listed directly under
    #   `FolderList` are found and used for the update. The default is `true`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @return [Types::RefreshCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RefreshCacheOutput#file_share_arn #file_share_arn} => String
    #   * {Types::RefreshCacheOutput#notification_id #notification_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_cache({
    #     file_share_arn: "FileShareARN", # required
    #     folder_list: ["Folder"],
    #     recursive: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #   resp.notification_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RefreshCache AWS API Documentation
    #
    # @overload refresh_cache(params = {})
    # @param [Hash] params ({})
    def refresh_cache(params = {}, options = {})
      req = build_request(:refresh_cache, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource. This operation
    # is supported in storage gateways of all types.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to remove the
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags you want to remove from the specified resource. A
    #   tag is composed of a key-value pair.
    #
    # @return [Types::RemoveTagsFromResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveTagsFromResourceOutput#resource_arn #resource_arn} => String
    #
    #
    # @example Example: To remove tags from a resource
    #
    #   # Lists the iSCSI stored volumes of a gateway. Removes one or more tags from the specified resource.
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #     tag_keys: [
    #       "Dev Gatgeway Region", 
    #       "East Coast", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Resets all cache disks that have encountered an error and makes the
    # disks available for reconfiguration as cache storage. If your cache
    # disk encounters an error, the gateway prevents read and write
    # operations on virtual tapes in the gateway. For example, an error can
    # occur when a disk is corrupted or removed from the gateway. When a
    # cache is reset, the gateway loses its cache storage. At this point,
    # you can reconfigure the disks as cache disks. This operation is only
    # supported in the cached volume and tape types.
    #
    # If the cache disk you are resetting contains data that has not been
    # uploaded to Amazon S3 yet, that data can be lost. After you reset
    # cache disks, there will be no configured cache disks left in the
    # gateway, so you must configure at least one new cache disk for your
    # gateway to function properly.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::ResetCacheOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetCacheOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To reset cache disks in error status
    #
    #   # Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage.
    #
    #   resp = client.reset_cache({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-13B4567C", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cache({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ResetCache AWS API Documentation
    #
    # @overload reset_cache(params = {})
    # @param [Hash] params ({})
    def reset_cache(params = {}, options = {})
      req = build_request(:reset_cache, params)
      req.send_request(options)
    end

    # Retrieves an archived virtual tape from the virtual tape shelf (VTS)
    # to a tape gateway. Virtual tapes archived in the VTS are not
    # associated with any gateway. However after a tape is retrieved, it is
    # associated with a gateway, even though it is also listed in the VTS,
    # that is, archive. This operation is only supported in the tape gateway
    # type.
    #
    # Once a tape is successfully retrieved to a gateway, it cannot be
    # retrieved again to another gateway. You must archive the tape again
    # before you can retrieve it to another gateway. This operation is only
    # supported in the tape gateway type.
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape you want to
    #   retrieve from the virtual tape shelf (VTS).
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you want to retrieve the
    #   virtual tape to. Use the ListGateways operation to return a list of
    #   gateways for your account and AWS Region.
    #
    #   You retrieve archived virtual tapes to only one gateway and the
    #   gateway must be a tape gateway.
    #
    # @return [Types::RetrieveTapeArchiveOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveTapeArchiveOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To retrieve an archived tape from the VTS
    #
    #   # Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a gateway-VTL. Virtual tapes archived in the VTS
    #   # are not associated with any gateway.
    #
    #   resp = client.retrieve_tape_archive({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_archive({
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeArchive AWS API Documentation
    #
    # @overload retrieve_tape_archive(params = {})
    # @param [Hash] params ({})
    def retrieve_tape_archive(params = {}, options = {})
      req = build_request(:retrieve_tape_archive, params)
      req.send_request(options)
    end

    # Retrieves the recovery point for the specified virtual tape. This
    # operation is only supported in the tape gateway type.
    #
    # A recovery point is a point in time view of a virtual tape at which
    # all the data on the tape is consistent. If your gateway crashes,
    # virtual tapes that have recovery points can be recovered to a new
    # gateway.
    #
    # <note markdown="1"> The virtual tape can be retrieved to only one gateway. The retrieved
    # tape is read-only. The virtual tape can be retrieved to only a tape
    # gateway. There is no charge for retrieving recovery points.
    #
    #  </note>
    #
    # @option params [required, String] :tape_arn
    #   The Amazon Resource Name (ARN) of the virtual tape for which you want
    #   to retrieve the recovery point.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::RetrieveTapeRecoveryPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveTapeRecoveryPointOutput#tape_arn #tape_arn} => String
    #
    #
    # @example Example: To retrieve the recovery point of a virtual tape
    #
    #   # Retrieves the recovery point for the specified virtual tape.
    #
    #   resp = client.retrieve_tape_recovery_point({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tape_arn: "arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_tape_recovery_point({
    #     tape_arn: "TapeARN", # required
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tape_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/RetrieveTapeRecoveryPoint AWS API Documentation
    #
    # @overload retrieve_tape_recovery_point(params = {})
    # @param [Hash] params ({})
    def retrieve_tape_recovery_point(params = {}, options = {})
      req = build_request(:retrieve_tape_recovery_point, params)
      req.send_request(options)
    end

    # Sets the password for your VM local console. When you log in to the
    # local console for the first time, you log in to the VM with the
    # default credentials. We recommend that you set a new password. You
    # don't need to know the default password to set a new password.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :local_console_password
    #   The password you want to set for your VM local console.
    #
    # @return [Types::SetLocalConsolePasswordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetLocalConsolePasswordOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To set a password for your VM
    #
    #   # Sets the password for your VM local console.
    #
    #   resp = client.set_local_console_password({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #     local_console_password: "PassWordMustBeAtLeast6Chars.", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_local_console_password({
    #     gateway_arn: "GatewayARN", # required
    #     local_console_password: "LocalConsolePassword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetLocalConsolePassword AWS API Documentation
    #
    # @overload set_local_console_password(params = {})
    # @param [Hash] params ({})
    def set_local_console_password(params = {}, options = {})
      req = build_request(:set_local_console_password, params)
      req.send_request(options)
    end

    # Sets the password for the guest user `smbguest`. The `smbguest` user
    # is the user when the authentication method for the file share is set
    # to `GuestAccess`.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the file gateway the SMB file share
    #   is associated with.
    #
    # @option params [required, String] :password
    #   The password that you want to set for your SMB server.
    #
    # @return [Types::SetSMBGuestPasswordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetSMBGuestPasswordOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_smb_guest_password({
    #     gateway_arn: "GatewayARN", # required
    #     password: "SMBGuestPassword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/SetSMBGuestPassword AWS API Documentation
    #
    # @overload set_smb_guest_password(params = {})
    # @param [Hash] params ({})
    def set_smb_guest_password(params = {}, options = {})
      req = build_request(:set_smb_guest_password, params)
      req.send_request(options)
    end

    # Shuts down a gateway. To specify which gateway to shut down, use the
    # Amazon Resource Name (ARN) of the gateway in the body of your request.
    #
    # The operation shuts down the gateway service component running in the
    # gateway's virtual machine (VM) and not the host VM.
    #
    # <note markdown="1"> If you want to shut down the VM, it is recommended that you first shut
    # down the gateway component in the VM to avoid unpredictable
    # conditions.
    #
    #  </note>
    #
    # After the gateway is shutdown, you cannot call any other API except
    # StartGateway, DescribeGatewayInformation, and ListGateways. For more
    # information, see ActivateGateway. Your applications cannot read from
    # or write to the gateway's storage volumes, and there are no snapshots
    # taken.
    #
    # <note markdown="1"> When you make a shutdown request, you will get a `200 OK` success
    # response immediately. However, it might take some time for the gateway
    # to shut down. You can call the DescribeGatewayInformation API to check
    # the status. For more information, see ActivateGateway.
    #
    #  </note>
    #
    # If do not intend to use the gateway again, you must delete the gateway
    # (using DeleteGateway) to no longer pay software charges associated
    # with the gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::ShutdownGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ShutdownGatewayOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To shut down a gateway service
    #
    #   # This operation shuts down the gateway service component running in the storage gateway's virtual machine (VM) and not
    #   # the VM.
    #
    #   resp = client.shutdown_gateway({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.shutdown_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/ShutdownGateway AWS API Documentation
    #
    # @overload shutdown_gateway(params = {})
    # @param [Hash] params ({})
    def shutdown_gateway(params = {}, options = {})
      req = build_request(:shutdown_gateway, params)
      req.send_request(options)
    end

    # Start a test that verifies that the specified gateway is configured
    # for High Availability monitoring in your host environment. This
    # request only initiates the test and that a successful response only
    # indicates that the test was started. It doesn't indicate that the
    # test passed. For the status of the test, invoke the
    # `DescribeAvailabilityMonitorTest` API.
    #
    # <note markdown="1"> Starting this test will cause your gateway to go offline for a brief
    # period.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::StartAvailabilityMonitorTestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAvailabilityMonitorTestOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_availability_monitor_test({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartAvailabilityMonitorTest AWS API Documentation
    #
    # @overload start_availability_monitor_test(params = {})
    # @param [Hash] params ({})
    def start_availability_monitor_test(params = {}, options = {})
      req = build_request(:start_availability_monitor_test, params)
      req.send_request(options)
    end

    # Starts a gateway that you previously shut down (see ShutdownGateway).
    # After the gateway starts, you can then make other API calls, your
    # applications can read from or write to the gateway's storage volumes
    # and you will be able to take snapshot backups.
    #
    # <note markdown="1"> When you make a request, you will get a 200 OK success response
    # immediately. However, it might take some time for the gateway to be
    # ready. You should call DescribeGatewayInformation and check the status
    # before making any additional API calls. For more information, see
    # ActivateGateway.
    #
    #  </note>
    #
    # To specify which gateway to start, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::StartGatewayOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartGatewayOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To start a gateway service
    #
    #   # Starts a gateway service that was previously shut down.
    #
    #   resp = client.start_gateway({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_gateway({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/StartGateway AWS API Documentation
    #
    # @overload start_gateway(params = {})
    # @param [Hash] params ({})
    def start_gateway(params = {}, options = {})
      req = build_request(:start_gateway, params)
      req.send_request(options)
    end

    # Updates the automatic tape creation policy of a gateway. Use this to
    # update the policy with a new set of automatic tape creation rules.
    # This is only supported for tape gateways.
    #
    # By default, there is no automatic tape creation policy.
    #
    # <note markdown="1"> A gateway can have only one automatic tape creation policy.
    #
    #  </note>
    #
    # @option params [required, Array<Types::AutomaticTapeCreationRule>] :automatic_tape_creation_rules
    #   An automatic tape creation policy consists of a list of automatic tape
    #   creation rules. The rules determine when and how to automatically
    #   create new tapes.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::UpdateAutomaticTapeCreationPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAutomaticTapeCreationPolicyOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_automatic_tape_creation_policy({
    #     automatic_tape_creation_rules: [ # required
    #       {
    #         tape_barcode_prefix: "TapeBarcodePrefix", # required
    #         pool_id: "PoolId", # required
    #         tape_size_in_bytes: 1, # required
    #         minimum_num_tapes: 1, # required
    #         worm: false,
    #       },
    #     ],
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateAutomaticTapeCreationPolicy AWS API Documentation
    #
    # @overload update_automatic_tape_creation_policy(params = {})
    # @param [Hash] params ({})
    def update_automatic_tape_creation_policy(params = {}, options = {})
      req = build_request(:update_automatic_tape_creation_policy, params)
      req.send_request(options)
    end

    # Updates the bandwidth rate limits of a gateway. You can update both
    # the upload and download bandwidth rate limit or specify only one of
    # the two. If you don't set a bandwidth rate limit, the existing rate
    # limit remains. This operation is supported for the stored volume,
    # cached volume, and tape gateway types.
    #
    # By default, a gateway's bandwidth rate limits are not set. If you
    # don't set any limit, the gateway does not have any limitations on its
    # bandwidth usage and could potentially use the maximum available
    # bandwidth.
    #
    # To specify which gateway to update, use the Amazon Resource Name (ARN)
    # of the gateway in your request.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [Integer] :average_upload_rate_limit_in_bits_per_sec
    #   The average upload bandwidth rate limit in bits per second.
    #
    # @option params [Integer] :average_download_rate_limit_in_bits_per_sec
    #   The average download bandwidth rate limit in bits per second.
    #
    # @return [Types::UpdateBandwidthRateLimitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBandwidthRateLimitOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To update the bandwidth rate limits of a gateway
    #
    #   # Updates the bandwidth rate limits of a gateway. Both the upload and download bandwidth rate limit can be set, or either
    #   # one of the two. If a new limit is not set, the existing rate limit remains.
    #
    #   resp = client.update_bandwidth_rate_limit({
    #     average_download_rate_limit_in_bits_per_sec: 102400, 
    #     average_upload_rate_limit_in_bits_per_sec: 51200, 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bandwidth_rate_limit({
    #     gateway_arn: "GatewayARN", # required
    #     average_upload_rate_limit_in_bits_per_sec: 1,
    #     average_download_rate_limit_in_bits_per_sec: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateBandwidthRateLimit AWS API Documentation
    #
    # @overload update_bandwidth_rate_limit(params = {})
    # @param [Hash] params ({})
    def update_bandwidth_rate_limit(params = {}, options = {})
      req = build_request(:update_bandwidth_rate_limit, params)
      req.send_request(options)
    end

    # Updates the Challenge-Handshake Authentication Protocol (CHAP)
    # credentials for a specified iSCSI target. By default, a gateway does
    # not have CHAP enabled; however, for added security, you might use it.
    # This operation is supported in the volume and tape gateway types.
    #
    # When you update CHAP credentials, all existing connections on the
    # target are closed and initiators must reconnect with the new
    # credentials.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    #   DescribeStorediSCSIVolumes operation to return the TargetARN for
    #   specified VolumeARN.
    #
    # @option params [required, String] :secret_to_authenticate_initiator
    #   The secret key that the initiator (for example, the Windows client)
    #   must provide to participate in mutual CHAP with the target.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in UTF-8.
    #
    #    </note>
    #
    # @option params [required, String] :initiator_name
    #   The iSCSI initiator that connects to the target.
    #
    # @option params [String] :secret_to_authenticate_target
    #   The secret key that the target must provide to participate in mutual
    #   CHAP with the initiator (e.g. Windows client).
    #
    #   Byte constraints: Minimum bytes of 12. Maximum bytes of 16.
    #
    #   <note markdown="1"> The secret key must be between 12 and 16 bytes when encoded in UTF-8.
    #
    #    </note>
    #
    # @return [Types::UpdateChapCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChapCredentialsOutput#target_arn #target_arn} => String
    #   * {Types::UpdateChapCredentialsOutput#initiator_name #initiator_name} => String
    #
    #
    # @example Example: To update CHAP credentials for an iSCSI target
    #
    #   # Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target.
    #
    #   resp = client.update_chap_credentials({
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com", 
    #     secret_to_authenticate_initiator: "111111111111", 
    #     secret_to_authenticate_target: "222222222222", 
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     initiator_name: "iqn.1991-05.com.microsoft:computername.domain.example.com", 
    #     target_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_chap_credentials({
    #     target_arn: "TargetARN", # required
    #     secret_to_authenticate_initiator: "ChapSecret", # required
    #     initiator_name: "IqnName", # required
    #     secret_to_authenticate_target: "ChapSecret",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_arn #=> String
    #   resp.initiator_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateChapCredentials AWS API Documentation
    #
    # @overload update_chap_credentials(params = {})
    # @param [Hash] params ({})
    def update_chap_credentials(params = {}, options = {})
      req = build_request(:update_chap_credentials, params)
      req.send_request(options)
    end

    # Updates a gateway's metadata, which includes the gateway's name and
    # time zone. To specify which gateway to update, use the Amazon Resource
    # Name (ARN) of the gateway in your request.
    #
    # <note markdown="1"> For gateways activated after September 2, 2015, the gateway's ARN
    # contains the gateway ID rather than the gateway name. However,
    # changing the name of the gateway has no effect on the gateway's ARN.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [String] :gateway_name
    #   The name you configured for your gateway.
    #
    # @option params [String] :gateway_timezone
    #   A value that indicates the time zone of the gateway.
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
    #   you want to use to monitor and log events in the gateway.
    #
    #   For more information, see [What is Amazon CloudWatch Logs?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html
    #
    # @return [Types::UpdateGatewayInformationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayInformationOutput#gateway_arn #gateway_arn} => String
    #   * {Types::UpdateGatewayInformationOutput#gateway_name #gateway_name} => String
    #
    #
    # @example Example: To update a gateway's metadata
    #
    #   # Updates a gateway's metadata, which includes the gateway's name and time zone.
    #
    #   resp = client.update_gateway_information({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     gateway_name: "MyGateway2", 
    #     gateway_timezone: "GMT-12:00", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     gateway_name: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_information({
    #     gateway_arn: "GatewayARN", # required
    #     gateway_name: "GatewayName",
    #     gateway_timezone: "GatewayTimezone",
    #     cloud_watch_log_group_arn: "CloudWatchLogGroupARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #   resp.gateway_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewayInformation AWS API Documentation
    #
    # @overload update_gateway_information(params = {})
    # @param [Hash] params ({})
    def update_gateway_information(params = {}, options = {})
      req = build_request(:update_gateway_information, params)
      req.send_request(options)
    end

    # Updates the gateway virtual machine (VM) software. The request
    # immediately triggers the software update.
    #
    # <note markdown="1"> When you make this request, you get a `200 OK` success response
    # immediately. However, it might take some time for the update to
    # complete. You can call DescribeGatewayInformation to verify the
    # gateway is in the `STATE_RUNNING` state.
    #
    #  </note>
    #
    # A software update forces a system restart of your gateway. You can
    # minimize the chance of any disruption to your applications by
    # increasing your iSCSI Initiators' timeouts. For more information
    # about increasing iSCSI Initiator timeouts for Windows and Linux, see
    # [Customizing your Windows iSCSI settings][1] and [Customizing your
    # Linux iSCSI settings][2], respectively.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings
    # [2]: https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @return [Types::UpdateGatewaySoftwareNowOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewaySoftwareNowOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To update a gateway's VM software
    #
    #   # Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.
    #
    #   resp = client.update_gateway_software_now({
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_software_now({
    #     gateway_arn: "GatewayARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateGatewaySoftwareNow AWS API Documentation
    #
    # @overload update_gateway_software_now(params = {})
    # @param [Hash] params ({})
    def update_gateway_software_now(params = {}, options = {})
      req = build_request(:update_gateway_software_now, params)
      req.send_request(options)
    end

    # Updates a gateway's weekly maintenance start time information,
    # including day and time of the week. The maintenance time is the time
    # in your gateway's time zone.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, Integer] :hour_of_day
    #   The hour component of the maintenance start time represented as *hh*,
    #   where *hh* is the hour (00 to 23). The hour of the day is in the time
    #   zone of the gateway.
    #
    # @option params [required, Integer] :minute_of_hour
    #   The minute component of the maintenance start time represented as
    #   *mm*, where *mm* is the minute (00 to 59). The minute of the hour is
    #   in the time zone of the gateway.
    #
    # @option params [Integer] :day_of_week
    #   The day of the week component of the maintenance start time week
    #   represented as an ordinal number from 0 to 6, where 0 represents
    #   Sunday and 6 Saturday.
    #
    # @option params [Integer] :day_of_month
    #   The day of the month component of the maintenance start time
    #   represented as an ordinal number from 1 to 28, where 1 represents the
    #   first day of the month and 28 represents the last day of the month.
    #
    # @return [Types::UpdateMaintenanceStartTimeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMaintenanceStartTimeOutput#gateway_arn #gateway_arn} => String
    #
    #
    # @example Example: To update a gateway's maintenance start time
    #
    #   # Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time
    #   # is in your gateway's time zone.
    #
    #   resp = client.update_maintenance_start_time({
    #     day_of_week: 2, 
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #     hour_of_day: 0, 
    #     minute_of_hour: 30, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     gateway_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_maintenance_start_time({
    #     gateway_arn: "GatewayARN", # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #     day_of_week: 1,
    #     day_of_month: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateMaintenanceStartTime AWS API Documentation
    #
    # @overload update_maintenance_start_time(params = {})
    # @param [Hash] params ({})
    def update_maintenance_start_time(params = {}, options = {})
      req = build_request(:update_maintenance_start_time, params)
      req.send_request(options)
    end

    # Updates a Network File System (NFS) file share. This operation is only
    # supported in the file gateway type.
    #
    # <note markdown="1"> To leave a file share field unchanged, set the corresponding input
    # field to null.
    #
    #  </note>
    #
    # Updates the following file share setting:
    #
    # * Default storage class for your S3 bucket
    #
    # * Metadata defaults for your S3 bucket
    #
    # * Allowed NFS clients for your file share
    #
    # * Squash settings
    #
    # * Write status of your file share
    #
    # <note markdown="1"> To leave a file share field unchanged, set the corresponding input
    # field to null. This operation is only supported in file gateways.
    #
    #  </note>
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the file share to be updated.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [Types::NFSFileShareDefaults] :nfs_file_share_defaults
    #   The default values for the file share. Optional.
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   the file gateway. The default value is `S3_INTELLIGENT_TIERING`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #
    # @option params [String] :object_acl
    #   A value that sets the access control list (ACL) permission for objects
    #   in the S3 bucket that a file gateway puts objects into. The default
    #   value is `private`.
    #
    # @option params [Array<String>] :client_list
    #   The list of clients that are allowed to access the file gateway. The
    #   list must contain either valid IP addresses or valid CIDR blocks.
    #
    # @option params [String] :squash
    #   The user mapped to anonymous user.
    #
    #   Valid values are the following:
    #
    #   * `RootSquash`\: Only root is mapped to anonymous user.
    #
    #   * `NoSquash`\: No one is mapped to anonymous user.
    #
    #   * `AllSquash`\: Everyone is mapped to anonymous user.
    #
    # @option params [Boolean] :read_only
    #   A value that sets the write status of a file share. Set this value to
    #   `true` to set the write status to read-only, otherwise set to `false`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME type
    #   guessing, otherwise set to `false`. The default value is `true`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is set
    #   to `true`, the requester pays the costs; otherwise, the S3 bucket
    #   owner pays. However, the S3 bucket owner always pays the cost of
    #   storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`.
    #
    #    </note>
    #
    # @option params [Types::CacheAttributes] :cache_attributes
    #   Refresh cache information.
    #
    # @return [Types::UpdateNFSFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNFSFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_nfs_file_share({
    #     file_share_arn: "FileShareARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     nfs_file_share_defaults: {
    #       file_mode: "PermissionMode",
    #       directory_mode: "PermissionMode",
    #       group_id: 1,
    #       owner_id: 1,
    #     },
    #     default_storage_class: "StorageClass",
    #     object_acl: "private", # accepts private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control, aws-exec-read
    #     client_list: ["IPV4AddressCIDR"],
    #     squash: "Squash",
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateNFSFileShare AWS API Documentation
    #
    # @overload update_nfs_file_share(params = {})
    # @param [Hash] params ({})
    def update_nfs_file_share(params = {}, options = {})
      req = build_request(:update_nfs_file_share, params)
      req.send_request(options)
    end

    # Updates a Server Message Block (SMB) file share.
    #
    # <note markdown="1"> To leave a file share field unchanged, set the corresponding input
    # field to null. This operation is only supported for file gateways.
    #
    #  </note>
    #
    # File gateways require AWS Security Token Service (AWS STS) to be
    # activated to enable you to create a file share. Make sure that AWS STS
    # is activated in the AWS Region you are creating your file gateway in.
    # If AWS STS is not activated in this AWS Region, activate it. For
    # information about how to activate AWS STS, see [Activating and
    # deactivating AWS STS in an AWS Region][1] in the *AWS Identity and
    # Access Management User Guide*.
    #
    #  File gateways don't support creating hard or symbolic links on a
    # file
    # share.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
    #
    # @option params [required, String] :file_share_arn
    #   The Amazon Resource Name (ARN) of the SMB file share that you want to
    #   update.
    #
    # @option params [Boolean] :kms_encrypted
    #   Set to `true` to use Amazon S3 server-side encryption with your own
    #   AWS KMS key, or `false` to use a key managed by Amazon S3. Optional.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [String] :kms_key
    #   The Amazon Resource Name (ARN) of a symmetric customer master key
    #   (CMK) used for Amazon S3 server-side encryption. Storage Gateway does
    #   not support asymmetric CMKs. This value can only be set when
    #   `KMSEncrypted` is `true`. Optional.
    #
    # @option params [String] :default_storage_class
    #   The default storage class for objects put into an Amazon S3 bucket by
    #   the file gateway. The default value is `S3_INTELLIGENT_TIERING`.
    #   Optional.
    #
    #   Valid Values: `S3_STANDARD` \| `S3_INTELLIGENT_TIERING` \|
    #   `S3_STANDARD_IA` \| `S3_ONEZONE_IA`
    #
    # @option params [String] :object_acl
    #   A value that sets the access control list (ACL) permission for objects
    #   in the S3 bucket that a file gateway puts objects into. The default
    #   value is `private`.
    #
    # @option params [Boolean] :read_only
    #   A value that sets the write status of a file share. Set this value to
    #   `true` to set write status to read-only, otherwise set to `false`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :guess_mime_type_enabled
    #   A value that enables guessing of the MIME type for uploaded objects
    #   based on file extensions. Set this value to `true` to enable MIME type
    #   guessing, otherwise set to `false`. The default value is `true`.
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :requester_pays
    #   A value that sets who pays the cost of the request and the cost
    #   associated with data download from the S3 bucket. If this value is set
    #   to `true`, the requester pays the costs; otherwise, the S3 bucket
    #   owner pays. However, the S3 bucket owner always pays the cost of
    #   storing data.
    #
    #   <note markdown="1"> `RequesterPays` is a configuration for the S3 bucket that backs the
    #   file share, so make sure that the configuration on the file share is
    #   the same as the S3 bucket configuration.
    #
    #    </note>
    #
    #   Valid Values: `true` \| `false`
    #
    # @option params [Boolean] :smbacl_enabled
    #   Set this value to `true` to enable access control list (ACL) on the
    #   SMB file share. Set it to `false` to map file and directory
    #   permissions to the POSIX permissions.
    #
    #   For more information, see [Using Microsoft Windows ACLs to control
    #   access to an SMB file share][1] in the *AWS Storage Gateway User
    #   Guide*.
    #
    #   Valid Values: `true` \| `false`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html
    #
    # @option params [Array<String>] :admin_user_list
    #   A list of users or groups in the Active Directory that have
    #   administrator rights to the file share. A group must be prefixed with
    #   the @ character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication is
    #   set to `ActiveDirectory`.
    #
    # @option params [Array<String>] :valid_user_list
    #   A list of users or groups in the Active Directory that are allowed to
    #   access the file share. A group must be prefixed with the @ character.
    #   Acceptable formats include: `DOMAIN\User1`, `user1`, `@group1`, and
    #   `@DOMAIN\group1`. Can only be set if Authentication is set to
    #   `ActiveDirectory`.
    #
    # @option params [Array<String>] :invalid_user_list
    #   A list of users or groups in the Active Directory that are not allowed
    #   to access the file share. A group must be prefixed with the @
    #   character. Acceptable formats include: `DOMAIN\User1`, `user1`,
    #   `@group1`, and `@DOMAIN\group1`. Can only be set if Authentication is
    #   set to `ActiveDirectory`.
    #
    # @option params [String] :audit_destination_arn
    #   The Amazon Resource Name (ARN) of the storage used for the audit logs.
    #
    # @option params [String] :case_sensitivity
    #   The case of an object name in an Amazon S3 bucket. For
    #   `ClientSpecified`, the client determines the case sensitivity. For
    #   `CaseSensitive`, the gateway determines the case sensitivity. The
    #   default value is `ClientSpecified`.
    #
    # @option params [String] :file_share_name
    #   The name of the file share. Optional.
    #
    #   <note markdown="1"> `FileShareName` must be set if an S3 prefix name is set in
    #   `LocationARN`.
    #
    #    </note>
    #
    # @option params [Types::CacheAttributes] :cache_attributes
    #   Refresh cache information.
    #
    # @return [Types::UpdateSMBFileShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSMBFileShareOutput#file_share_arn #file_share_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_file_share({
    #     file_share_arn: "FileShareARN", # required
    #     kms_encrypted: false,
    #     kms_key: "KMSKey",
    #     default_storage_class: "StorageClass",
    #     object_acl: "private", # accepts private, public-read, public-read-write, authenticated-read, bucket-owner-read, bucket-owner-full-control, aws-exec-read
    #     read_only: false,
    #     guess_mime_type_enabled: false,
    #     requester_pays: false,
    #     smbacl_enabled: false,
    #     admin_user_list: ["FileShareUser"],
    #     valid_user_list: ["FileShareUser"],
    #     invalid_user_list: ["FileShareUser"],
    #     audit_destination_arn: "AuditDestinationARN",
    #     case_sensitivity: "ClientSpecified", # accepts ClientSpecified, CaseSensitive
    #     file_share_name: "FileShareName",
    #     cache_attributes: {
    #       cache_stale_timeout_in_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.file_share_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBFileShare AWS API Documentation
    #
    # @overload update_smb_file_share(params = {})
    # @param [Hash] params ({})
    def update_smb_file_share(params = {}, options = {})
      req = build_request(:update_smb_file_share, params)
      req.send_request(options)
    end

    # Updates the SMB security strategy on a file gateway. This action is
    # only supported in file gateways.
    #
    # <note markdown="1"> This API is called Security level in the User Guide.
    #
    #  A higher security level can affect performance of the gateway.
    #
    #  </note>
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
    #   operation to return a list of gateways for your account and AWS
    #   Region.
    #
    # @option params [required, String] :smb_security_strategy
    #   Specifies the type of security strategy.
    #
    #   ClientSpecified: if you use this option, requests are established
    #   based on what is negotiated by the client. This option is recommended
    #   when you want to maximize compatibility across different clients in
    #   your environment.
    #
    #   MandatorySigning: if you use this option, file gateway only allows
    #   connections from SMBv2 or SMBv3 clients that have signing enabled.
    #   This option works with SMB clients on Microsoft Windows Vista, Windows
    #   Server 2008 or newer.
    #
    #   MandatoryEncryption: if you use this option, file gateway only allows
    #   connections from SMBv3 clients that have encryption enabled. This
    #   option is highly recommended for environments that handle sensitive
    #   data. This option works with SMB clients on Microsoft Windows 8,
    #   Windows Server 2012 or newer.
    #
    # @return [Types::UpdateSMBSecurityStrategyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSMBSecurityStrategyOutput#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_smb_security_strategy({
    #     gateway_arn: "GatewayARN", # required
    #     smb_security_strategy: "ClientSpecified", # required, accepts ClientSpecified, MandatorySigning, MandatoryEncryption
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSMBSecurityStrategy AWS API Documentation
    #
    # @overload update_smb_security_strategy(params = {})
    # @param [Hash] params ({})
    def update_smb_security_strategy(params = {}, options = {})
      req = build_request(:update_smb_security_strategy, params)
      req.send_request(options)
    end

    # Updates a snapshot schedule configured for a gateway volume. This
    # operation is only supported in the cached volume and stored volume
    # gateway types.
    #
    # The default snapshot schedule for volume is once every 24 hours,
    # starting at the creation time of the volume. You can use this API to
    # change the snapshot schedule configured for the volume.
    #
    # In the request you must identify the gateway volume whose snapshot
    # schedule you want to update, and the schedule information, including
    # when you want the snapshot to begin on a day and the frequency (in
    # hours) of snapshots.
    #
    # @option params [required, String] :volume_arn
    #   The Amazon Resource Name (ARN) of the volume. Use the ListVolumes
    #   operation to return a list of gateway volumes.
    #
    # @option params [required, Integer] :start_at
    #   The hour of the day at which the snapshot schedule begins represented
    #   as *hh*, where *hh* is the hour (0 to 23). The hour of the day is in
    #   the time zone of the gateway.
    #
    # @option params [required, Integer] :recurrence_in_hours
    #   Frequency of snapshots. Specify the number of hours between snapshots.
    #
    # @option params [String] :description
    #   Optional description of the snapshot that overwrites the existing
    #   description.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of up to 50 tags that can be assigned to a snapshot. Each tag
    #   is a key-value pair.
    #
    #   <note markdown="1"> Valid characters for key and value are letters, spaces, and numbers
    #   representable in UTF-8 format, and the following special characters: +
    #   - = . \_ : / @. The maximum length of a tag's key is 128 characters,
    #   and the maximum length for a tag's value is 256.
    #
    #    </note>
    #
    # @return [Types::UpdateSnapshotScheduleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSnapshotScheduleOutput#volume_arn #volume_arn} => String
    #
    #
    # @example Example: To update a volume snapshot schedule
    #
    #   # Updates a snapshot schedule configured for a gateway volume.
    #
    #   resp = client.update_snapshot_schedule({
    #     description: "Hourly snapshot", 
    #     recurrence_in_hours: 1, 
    #     start_at: 0, 
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     volume_arn: "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot_schedule({
    #     volume_arn: "VolumeARN", # required
    #     start_at: 1, # required
    #     recurrence_in_hours: 1, # required
    #     description: "Description",
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
    #   resp.volume_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateSnapshotSchedule AWS API Documentation
    #
    # @overload update_snapshot_schedule(params = {})
    # @param [Hash] params ({})
    def update_snapshot_schedule(params = {}, options = {})
      req = build_request(:update_snapshot_schedule, params)
      req.send_request(options)
    end

    # Updates the type of medium changer in a tape gateway. When you
    # activate a tape gateway, you select a medium changer type for the tape
    # gateway. This operation enables you to select a different type of
    # medium changer after a tape gateway is activated. This operation is
    # only supported in the tape gateway type.
    #
    # @option params [required, String] :vtl_device_arn
    #   The Amazon Resource Name (ARN) of the medium changer you want to
    #   select.
    #
    # @option params [required, String] :device_type
    #   The type of medium changer you want to select.
    #
    #   Valid Values: `STK-L700` \| `AWS-Gateway-VTL` \| `IBM-03584L32-0402`
    #
    # @return [Types::UpdateVTLDeviceTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVTLDeviceTypeOutput#vtl_device_arn #vtl_device_arn} => String
    #
    #
    # @example Example: To update a VTL device type
    #
    #   # Updates the type of medium changer in a gateway-VTL after a gateway-VTL is activated.
    #
    #   resp = client.update_vtl_device_type({
    #     device_type: "Medium Changer", 
    #     vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     vtl_device_arn: "arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B/device/AMZN_SGW-1FAD4876_MEDIACHANGER_00001", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vtl_device_type({
    #     vtl_device_arn: "VTLDeviceARN", # required
    #     device_type: "DeviceType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vtl_device_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/storagegateway-2013-06-30/UpdateVTLDeviceType AWS API Documentation
    #
    # @overload update_vtl_device_type(params = {})
    # @param [Hash] params ({})
    def update_vtl_device_type(params = {}, options = {})
      req = build_request(:update_vtl_device_type, params)
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
      context[:gem_name] = 'aws-sdk-storagegateway'
      context[:gem_version] = '1.50.0'
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
