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

Aws::Plugins::GlobalConfiguration.add_identifier(:alexaforbusiness)

module Aws::AlexaForBusiness
  # An API client for AlexaForBusiness.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AlexaForBusiness::Client.new(
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

    @identifier = :alexaforbusiness

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

    # Associates a skill with the organization under the customer's AWS
    # account. If a skill is private, the user implicitly accepts access to
    # this skill during enablement.
    #
    # @option params [required, String] :skill_id
    #   The unique identifier of the skill.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.approve_skill({
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ApproveSkill AWS API Documentation
    #
    # @overload approve_skill(params = {})
    # @param [Hash] params ({})
    def approve_skill(params = {}, options = {})
      req = build_request(:approve_skill, params)
      req.send_request(options)
    end

    # Associates a contact with a given address book.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to associate with an address book.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book with which to associate the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_contact_with_address_book({
    #     contact_arn: "Arn", # required
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateContactWithAddressBook AWS API Documentation
    #
    # @overload associate_contact_with_address_book(params = {})
    # @param [Hash] params ({})
    def associate_contact_with_address_book(params = {}, options = {})
      req = build_request(:associate_contact_with_address_book, params)
      req.send_request(options)
    end

    # Associates a device with the specified network profile.
    #
    # @option params [required, String] :device_arn
    #   The device ARN.
    #
    # @option params [required, String] :network_profile_arn
    #   The ARN of the network profile to associate with a device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_network_profile({
    #     device_arn: "Arn", # required
    #     network_profile_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithNetworkProfile AWS API Documentation
    #
    # @overload associate_device_with_network_profile(params = {})
    # @param [Hash] params ({})
    def associate_device_with_network_profile(params = {}, options = {})
      req = build_request(:associate_device_with_network_profile, params)
      req.send_request(options)
    end

    # Associates a device with a given room. This applies all the settings
    # from the room profile to the device, and all the skills in any skill
    # groups added to that room. This operation requires the device to be
    # online, or else a manual sync is required.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to associate to a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which to associate the device. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_room({
    #     device_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateDeviceWithRoom AWS API Documentation
    #
    # @overload associate_device_with_room(params = {})
    # @param [Hash] params ({})
    def associate_device_with_room(params = {}, options = {})
      req = build_request(:associate_device_with_room, params)
      req.send_request(options)
    end

    # Associates a skill group with a given room. This enables all skills in
    # the associated skill group on all devices in the room.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to associate with a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which to associate the skill group. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_group_with_room({
    #     skill_group_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillGroupWithRoom AWS API Documentation
    #
    # @overload associate_skill_group_with_room(params = {})
    # @param [Hash] params ({})
    def associate_skill_group_with_room(params = {}, options = {})
      req = build_request(:associate_skill_group_with_room, params)
      req.send_request(options)
    end

    # Associates a skill with a skill group.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to associate the skill to. Required.
    #
    # @option params [required, String] :skill_id
    #   The unique identifier of the skill.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_with_skill_group({
    #     skill_group_arn: "Arn",
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithSkillGroup AWS API Documentation
    #
    # @overload associate_skill_with_skill_group(params = {})
    # @param [Hash] params ({})
    def associate_skill_with_skill_group(params = {}, options = {})
      req = build_request(:associate_skill_with_skill_group, params)
      req.send_request(options)
    end

    # Makes a private skill available for enrolled users to enable on their
    # devices.
    #
    # @option params [required, String] :skill_id
    #   The private skill ID you want to make available to enrolled users.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_skill_with_users({
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/AssociateSkillWithUsers AWS API Documentation
    #
    # @overload associate_skill_with_users(params = {})
    # @param [Hash] params ({})
    def associate_skill_with_users(params = {}, options = {})
      req = build_request(:associate_skill_with_users, params)
      req.send_request(options)
    end

    # Creates an address book with the specified details.
    #
    # @option params [required, String] :name
    #   The name of the address book.
    #
    # @option params [String] :description
    #   The description of the address book.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAddressBookResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressBookResponse#address_book_arn #address_book_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address_book({
    #     name: "AddressBookName", # required
    #     description: "AddressBookDescription",
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.address_book_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateAddressBook AWS API Documentation
    #
    # @overload create_address_book(params = {})
    # @param [Hash] params ({})
    def create_address_book(params = {}, options = {})
      req = build_request(:create_address_book, params)
      req.send_request(options)
    end

    # Creates a recurring schedule for usage reports to deliver to the
    # specified S3 location with a specified daily or weekly interval.
    #
    # @option params [String] :schedule_name
    #   The name identifier of the schedule.
    #
    # @option params [String] :s3_bucket_name
    #   The S3 bucket name of the output reports. If this isn't specified,
    #   the report can be retrieved from a download link by calling
    #   ListBusinessReportSchedule.
    #
    # @option params [String] :s3_key_prefix
    #   The S3 key where the report is delivered.
    #
    # @option params [required, String] :format
    #   The format of the generated report (individual CSV files or zipped
    #   files of individual files).
    #
    # @option params [required, Types::BusinessReportContentRange] :content_range
    #   The content range of the reports.
    #
    # @option params [Types::BusinessReportRecurrence] :recurrence
    #   The recurrence of the reports. If this isn't specified, the report
    #   will only be delivered one time when the API is called.
    #
    # @option params [String] :client_request_token
    #   The client request token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the business report schedule.
    #
    # @return [Types::CreateBusinessReportScheduleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBusinessReportScheduleResponse#schedule_arn #schedule_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_business_report_schedule({
    #     schedule_name: "BusinessReportScheduleName",
    #     s3_bucket_name: "CustomerS3BucketName",
    #     s3_key_prefix: "S3KeyPrefix",
    #     format: "CSV", # required, accepts CSV, CSV_ZIP
    #     content_range: { # required
    #       interval: "ONE_DAY", # required, accepts ONE_DAY, ONE_WEEK, THIRTY_DAYS
    #     },
    #     recurrence: {
    #       start_date: "Date",
    #     },
    #     client_request_token: "ClientRequestToken",
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
    #   resp.schedule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateBusinessReportSchedule AWS API Documentation
    #
    # @overload create_business_report_schedule(params = {})
    # @param [Hash] params ({})
    def create_business_report_schedule(params = {}, options = {})
      req = build_request(:create_business_report_schedule, params)
      req.send_request(options)
    end

    # Adds a new conference provider under the user's AWS account.
    #
    # @option params [required, String] :conference_provider_name
    #   The name of the conference provider.
    #
    # @option params [required, String] :conference_provider_type
    #   Represents a type within a list of predefined types.
    #
    # @option params [Types::IPDialIn] :ip_dial_in
    #   The IP endpoint and protocol for calling.
    #
    # @option params [Types::PSTNDialIn] :pstn_dial_in
    #   The information for PSTN conferencing.
    #
    # @option params [required, Types::MeetingSetting] :meeting_setting
    #   The meeting settings for the conference provider.
    #
    # @option params [String] :client_request_token
    #   The request token of the client.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConferenceProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConferenceProviderResponse#conference_provider_arn #conference_provider_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_conference_provider({
    #     conference_provider_name: "ConferenceProviderName", # required
    #     conference_provider_type: "CHIME", # required, accepts CHIME, BLUEJEANS, FUZE, GOOGLE_HANGOUTS, POLYCOM, RINGCENTRAL, SKYPE_FOR_BUSINESS, WEBEX, ZOOM, CUSTOM
    #     ip_dial_in: {
    #       endpoint: "Endpoint", # required
    #       comms_protocol: "SIP", # required, accepts SIP, SIPS, H323
    #     },
    #     pstn_dial_in: {
    #       country_code: "CountryCode", # required
    #       phone_number: "OutboundPhoneNumber", # required
    #       one_click_id_delay: "OneClickIdDelay", # required
    #       one_click_pin_delay: "OneClickPinDelay", # required
    #     },
    #     meeting_setting: { # required
    #       require_pin: "YES", # required, accepts YES, NO, OPTIONAL
    #     },
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.conference_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateConferenceProvider AWS API Documentation
    #
    # @overload create_conference_provider(params = {})
    # @param [Hash] params ({})
    def create_conference_provider(params = {}, options = {})
      req = build_request(:create_conference_provider, params)
      req.send_request(options)
    end

    # Creates a contact with the specified details.
    #
    # @option params [String] :display_name
    #   The name of the contact to display on the console.
    #
    # @option params [required, String] :first_name
    #   The first name of the contact that is used to call the contact on the
    #   device.
    #
    # @option params [String] :last_name
    #   The last name of the contact that is used to call the contact on the
    #   device.
    #
    # @option params [String] :phone_number
    #   The phone number of the contact in E.164 format. The phone number type
    #   defaults to WORK. You can specify PhoneNumber or PhoneNumbers. We
    #   recommend that you use PhoneNumbers, which lets you specify the phone
    #   number type and multiple numbers.
    #
    # @option params [Array<Types::PhoneNumber>] :phone_numbers
    #   The list of phone numbers for the contact.
    #
    # @option params [Array<Types::SipAddress>] :sip_addresses
    #   The list of SIP addresses for the contact.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact({
    #     display_name: "ContactName",
    #     first_name: "ContactName", # required
    #     last_name: "ContactName",
    #     phone_number: "RawPhoneNumber",
    #     phone_numbers: [
    #       {
    #         number: "RawPhoneNumber", # required
    #         type: "MOBILE", # required, accepts MOBILE, WORK, HOME
    #       },
    #     ],
    #     sip_addresses: [
    #       {
    #         uri: "SipUri", # required
    #         type: "WORK", # required, accepts WORK
    #       },
    #     ],
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateContact AWS API Documentation
    #
    # @overload create_contact(params = {})
    # @param [Hash] params ({})
    def create_contact(params = {}, options = {})
      req = build_request(:create_contact, params)
      req.send_request(options)
    end

    # Creates a gateway group with the specified details.
    #
    # @option params [required, String] :name
    #   The name of the gateway group.
    #
    # @option params [String] :description
    #   The description of the gateway group.
    #
    # @option params [required, String] :client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateGatewayGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayGroupResponse#gateway_group_arn #gateway_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway_group({
    #     name: "GatewayGroupName", # required
    #     description: "GatewayGroupDescription",
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateGatewayGroup AWS API Documentation
    #
    # @overload create_gateway_group(params = {})
    # @param [Hash] params ({})
    def create_gateway_group(params = {}, options = {})
      req = build_request(:create_gateway_group, params)
      req.send_request(options)
    end

    # Creates a network profile with the specified details.
    #
    # @option params [required, String] :network_profile_name
    #   The name of the network profile associated with a device.
    #
    # @option params [String] :description
    #   Detailed information about a device's network profile.
    #
    # @option params [required, String] :ssid
    #   The SSID of the Wi-Fi network.
    #
    # @option params [required, String] :security_type
    #   The security type of the Wi-Fi network. This can be WPA2\_ENTERPRISE,
    #   WPA2\_PSK, WPA\_PSK, WEP, or OPEN.
    #
    # @option params [String] :eap_method
    #   The authentication standard that is used in the EAP framework.
    #   Currently, EAP\_TLS is supported.
    #
    # @option params [String] :current_password
    #   The current password of the Wi-Fi network.
    #
    # @option params [String] :next_password
    #   The next, or subsequent, password of the Wi-Fi network. This password
    #   is asynchronously transmitted to the device and is used when the
    #   password of the network changes to NextPassword.
    #
    # @option params [String] :certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #
    # @option params [Array<String>] :trust_anchors
    #   The root certificates of your authentication server that is installed
    #   on your devices and used to trust your authentication server during
    #   EAP negotiation.
    #
    # @option params [required, String] :client_request_token
    #   A unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateNetworkProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkProfileResponse#network_profile_arn #network_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_profile({
    #     network_profile_name: "NetworkProfileName", # required
    #     description: "NetworkProfileDescription",
    #     ssid: "NetworkSsid", # required
    #     security_type: "OPEN", # required, accepts OPEN, WEP, WPA_PSK, WPA2_PSK, WPA2_ENTERPRISE
    #     eap_method: "EAP_TLS", # accepts EAP_TLS
    #     current_password: "CurrentWiFiPassword",
    #     next_password: "NextWiFiPassword",
    #     certificate_authority_arn: "Arn",
    #     trust_anchors: ["TrustAnchor"],
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateNetworkProfile AWS API Documentation
    #
    # @overload create_network_profile(params = {})
    # @param [Hash] params ({})
    def create_network_profile(params = {}, options = {})
      req = build_request(:create_network_profile, params)
      req.send_request(options)
    end

    # Creates a new room profile with the specified details.
    #
    # @option params [required, String] :profile_name
    #   The name of a room profile.
    #
    # @option params [required, String] :timezone
    #   The time zone used by a room profile.
    #
    # @option params [required, String] :address
    #   The valid address for the room.
    #
    # @option params [required, String] :distance_unit
    #   The distance unit to be used by devices in the profile.
    #
    # @option params [required, String] :temperature_unit
    #   The temperature unit to be used by devices in the profile.
    #
    # @option params [required, String] :wake_word
    #   A wake word for Alexa, Echo, Amazon, or a computer.
    #
    # @option params [String] :locale
    #   The locale of the room profile. (This is currently only available to a
    #   limited preview audience.)
    #
    # @option params [String] :client_request_token
    #   The user-specified token that is used during the creation of a
    #   profile.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :setup_mode_disabled
    #   Whether room profile setup is enabled.
    #
    # @option params [Integer] :max_volume_limit
    #   The maximum volume limit for a room profile.
    #
    # @option params [Boolean] :pstn_enabled
    #   Whether PSTN calling is enabled.
    #
    # @option params [Types::CreateMeetingRoomConfiguration] :meeting_room_configuration
    #   The meeting room settings of a room profile.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the profile.
    #
    # @return [Types::CreateProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProfileResponse#profile_arn #profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_profile({
    #     profile_name: "ProfileName", # required
    #     timezone: "Timezone", # required
    #     address: "Address", # required
    #     distance_unit: "METRIC", # required, accepts METRIC, IMPERIAL
    #     temperature_unit: "FAHRENHEIT", # required, accepts FAHRENHEIT, CELSIUS
    #     wake_word: "ALEXA", # required, accepts ALEXA, AMAZON, ECHO, COMPUTER
    #     locale: "DeviceLocale",
    #     client_request_token: "ClientRequestToken",
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #     meeting_room_configuration: {
    #       room_utilization_metrics_enabled: false,
    #       end_of_meeting_reminder: {
    #         reminder_at_minutes: [1], # required
    #         reminder_type: "ANNOUNCEMENT_TIME_CHECK", # required, accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #         enabled: false, # required
    #       },
    #       instant_booking: {
    #         duration_in_minutes: 1, # required
    #         enabled: false, # required
    #       },
    #       require_check_in: {
    #         release_after_minutes: 1, # required
    #         enabled: false, # required
    #       },
    #     },
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
    #   resp.profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateProfile AWS API Documentation
    #
    # @overload create_profile(params = {})
    # @param [Hash] params ({})
    def create_profile(params = {}, options = {})
      req = build_request(:create_profile, params)
      req.send_request(options)
    end

    # Creates a room with the specified details.
    #
    # @option params [required, String] :room_name
    #   The name for the room.
    #
    # @option params [String] :description
    #   The description for the room.
    #
    # @option params [String] :profile_arn
    #   The profile ARN for the room. This is required.
    #
    # @option params [String] :provider_calendar_id
    #   The calendar ARN for the room.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the room.
    #
    # @return [Types::CreateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomResponse#room_arn #room_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room({
    #     room_name: "RoomName", # required
    #     description: "RoomDescription",
    #     profile_arn: "Arn",
    #     provider_calendar_id: "ProviderCalendarId",
    #     client_request_token: "ClientRequestToken",
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
    #   resp.room_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateRoom AWS API Documentation
    #
    # @overload create_room(params = {})
    # @param [Hash] params ({})
    def create_room(params = {}, options = {})
      req = build_request(:create_room, params)
      req.send_request(options)
    end

    # Creates a skill group with a specified name and description.
    #
    # @option params [required, String] :skill_group_name
    #   The name for the skill group.
    #
    # @option params [String] :description
    #   The description for the skill group.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the skill group.
    #
    # @return [Types::CreateSkillGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSkillGroupResponse#skill_group_arn #skill_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_skill_group({
    #     skill_group_name: "SkillGroupName", # required
    #     description: "SkillGroupDescription",
    #     client_request_token: "ClientRequestToken",
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
    #   resp.skill_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateSkillGroup AWS API Documentation
    #
    # @overload create_skill_group(params = {})
    # @param [Hash] params ({})
    def create_skill_group(params = {}, options = {})
      req = build_request(:create_skill_group, params)
      req.send_request(options)
    end

    # Creates a user.
    #
    # @option params [required, String] :user_id
    #   The ARN for the user.
    #
    # @option params [String] :first_name
    #   The first name for the user.
    #
    # @option params [String] :last_name
    #   The last name for the user.
    #
    # @option params [String] :email
    #   The email address for the user.
    #
    # @option params [String] :client_request_token
    #   A unique, user-specified identifier for this request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the user.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     user_id: "user_UserId", # required
    #     first_name: "user_FirstName",
    #     last_name: "user_LastName",
    #     email: "Email",
    #     client_request_token: "ClientRequestToken",
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
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes an address book by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_address_book({
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteAddressBook AWS API Documentation
    #
    # @overload delete_address_book(params = {})
    # @param [Hash] params ({})
    def delete_address_book(params = {}, options = {})
      req = build_request(:delete_address_book, params)
      req.send_request(options)
    end

    # Deletes the recurring report delivery schedule with the specified
    # schedule ARN.
    #
    # @option params [required, String] :schedule_arn
    #   The ARN of the business report schedule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_business_report_schedule({
    #     schedule_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteBusinessReportSchedule AWS API Documentation
    #
    # @overload delete_business_report_schedule(params = {})
    # @param [Hash] params ({})
    def delete_business_report_schedule(params = {}, options = {})
      req = build_request(:delete_business_report_schedule, params)
      req.send_request(options)
    end

    # Deletes a conference provider.
    #
    # @option params [required, String] :conference_provider_arn
    #   The ARN of the conference provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conference_provider({
    #     conference_provider_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteConferenceProvider AWS API Documentation
    #
    # @overload delete_conference_provider(params = {})
    # @param [Hash] params ({})
    def delete_conference_provider(params = {}, options = {})
      req = build_request(:delete_conference_provider, params)
      req.send_request(options)
    end

    # Deletes a contact by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact({
    #     contact_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteContact AWS API Documentation
    #
    # @overload delete_contact(params = {})
    # @param [Hash] params ({})
    def delete_contact(params = {}, options = {})
      req = build_request(:delete_contact, params)
      req.send_request(options)
    end

    # Removes a device from Alexa For Business.
    #
    # @option params [required, String] :device_arn
    #   The ARN of the device for which to request details.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device({
    #     device_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDevice AWS API Documentation
    #
    # @overload delete_device(params = {})
    # @param [Hash] params ({})
    def delete_device(params = {}, options = {})
      req = build_request(:delete_device, params)
      req.send_request(options)
    end

    # When this action is called for a specified shared device, it allows
    # authorized users to delete the device's entire previous history of
    # voice input data and associated response data. This action can be
    # called once every 24 hours for a specific shared device.
    #
    # @option params [required, String] :device_arn
    #   The ARN of the device.
    #
    # @option params [required, String] :device_usage_type
    #   The type of usage data to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_usage_data({
    #     device_arn: "Arn", # required
    #     device_usage_type: "VOICE", # required, accepts VOICE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteDeviceUsageData AWS API Documentation
    #
    # @overload delete_device_usage_data(params = {})
    # @param [Hash] params ({})
    def delete_device_usage_data(params = {}, options = {})
      req = build_request(:delete_device_usage_data, params)
      req.send_request(options)
    end

    # Deletes a gateway group.
    #
    # @option params [required, String] :gateway_group_arn
    #   The ARN of the gateway group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_group({
    #     gateway_group_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteGatewayGroup AWS API Documentation
    #
    # @overload delete_gateway_group(params = {})
    # @param [Hash] params ({})
    def delete_gateway_group(params = {}, options = {})
      req = build_request(:delete_gateway_group, params)
      req.send_request(options)
    end

    # Deletes a network profile by the network profile ARN.
    #
    # @option params [required, String] :network_profile_arn
    #   The ARN of the network profile associated with a device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_profile({
    #     network_profile_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteNetworkProfile AWS API Documentation
    #
    # @overload delete_network_profile(params = {})
    # @param [Hash] params ({})
    def delete_network_profile(params = {}, options = {})
      req = build_request(:delete_network_profile, params)
      req.send_request(options)
    end

    # Deletes a room profile by the profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_profile({
    #     profile_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteProfile AWS API Documentation
    #
    # @overload delete_profile(params = {})
    # @param [Hash] params ({})
    def delete_profile(params = {}, options = {})
      req = build_request(:delete_profile, params)
      req.send_request(options)
    end

    # Deletes a room by the room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room({
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoom AWS API Documentation
    #
    # @overload delete_room(params = {})
    # @param [Hash] params ({})
    def delete_room(params = {}, options = {})
      req = build_request(:delete_room, params)
      req.send_request(options)
    end

    # Deletes room skill parameter details by room, skill, and parameter key
    # ID.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which to remove the room skill parameter
    #   details.
    #
    # @option params [required, String] :skill_id
    #   The ID of the skill from which to remove the room skill parameter
    #   details.
    #
    # @option params [required, String] :parameter_key
    #   The room skill parameter key for which to remove details.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     parameter_key: "RoomSkillParameterKey", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteRoomSkillParameter AWS API Documentation
    #
    # @overload delete_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def delete_room_skill_parameter(params = {}, options = {})
      req = build_request(:delete_room_skill_parameter, params)
      req.send_request(options)
    end

    # Unlinks a third-party account from a skill.
    #
    # @option params [required, String] :skill_id
    #   The unique identifier of a skill.
    #
    # @option params [String] :room_arn
    #   The room that the skill is authorized for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_skill_authorization({
    #     skill_id: "SkillId", # required
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillAuthorization AWS API Documentation
    #
    # @overload delete_skill_authorization(params = {})
    # @param [Hash] params ({})
    def delete_skill_authorization(params = {}, options = {})
      req = build_request(:delete_skill_authorization, params)
      req.send_request(options)
    end

    # Deletes a skill group by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to delete. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_skill_group({
    #     skill_group_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteSkillGroup AWS API Documentation
    #
    # @overload delete_skill_group(params = {})
    # @param [Hash] params ({})
    def delete_skill_group(params = {}, options = {})
      req = build_request(:delete_skill_group, params)
      req.send_request(options)
    end

    # Deletes a specified user by user ARN and enrollment ARN.
    #
    # @option params [String] :user_arn
    #   The ARN of the user to delete in the organization. Required.
    #
    # @option params [required, String] :enrollment_id
    #   The ARN of the user's enrollment in the organization. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     user_arn: "Arn",
    #     enrollment_id: "EnrollmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Disassociates a contact from a given address book.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to disassociate from an address book.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address from which to disassociate the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_contact_from_address_book({
    #     contact_arn: "Arn", # required
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateContactFromAddressBook AWS API Documentation
    #
    # @overload disassociate_contact_from_address_book(params = {})
    # @param [Hash] params ({})
    def disassociate_contact_from_address_book(params = {}, options = {})
      req = build_request(:disassociate_contact_from_address_book, params)
      req.send_request(options)
    end

    # Disassociates a device from its current room. The device continues to
    # be connected to the Wi-Fi network and is still registered to the
    # account. The device settings and skills are removed from the room.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to disassociate from a room. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_device_from_room({
    #     device_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateDeviceFromRoom AWS API Documentation
    #
    # @overload disassociate_device_from_room(params = {})
    # @param [Hash] params ({})
    def disassociate_device_from_room(params = {}, options = {})
      req = build_request(:disassociate_device_from_room, params)
      req.send_request(options)
    end

    # Disassociates a skill from a skill group.
    #
    # @option params [String] :skill_group_arn
    #   The unique identifier of a skill. Required.
    #
    # @option params [required, String] :skill_id
    #   The ARN of a skill group to associate to a skill.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_from_skill_group({
    #     skill_group_arn: "Arn",
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromSkillGroup AWS API Documentation
    #
    # @overload disassociate_skill_from_skill_group(params = {})
    # @param [Hash] params ({})
    def disassociate_skill_from_skill_group(params = {}, options = {})
      req = build_request(:disassociate_skill_from_skill_group, params)
      req.send_request(options)
    end

    # Makes a private skill unavailable for enrolled users and prevents them
    # from enabling it on their devices.
    #
    # @option params [required, String] :skill_id
    #   The private skill ID you want to make unavailable for enrolled users.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_from_users({
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillFromUsers AWS API Documentation
    #
    # @overload disassociate_skill_from_users(params = {})
    # @param [Hash] params ({})
    def disassociate_skill_from_users(params = {}, options = {})
      req = build_request(:disassociate_skill_from_users, params)
      req.send_request(options)
    end

    # Disassociates a skill group from a specified room. This disables all
    # skills in the skill group on all devices in the room.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to disassociate from a room. Required.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which the skill group is to be disassociated.
    #   Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_skill_group_from_room({
    #     skill_group_arn: "Arn",
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/DisassociateSkillGroupFromRoom AWS API Documentation
    #
    # @overload disassociate_skill_group_from_room(params = {})
    # @param [Hash] params ({})
    def disassociate_skill_group_from_room(params = {}, options = {})
      req = build_request(:disassociate_skill_group_from_room, params)
      req.send_request(options)
    end

    # Forgets smart home appliances associated to a room.
    #
    # @option params [required, String] :room_arn
    #   The room that the appliances are associated with.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.forget_smart_home_appliances({
    #     room_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ForgetSmartHomeAppliances AWS API Documentation
    #
    # @overload forget_smart_home_appliances(params = {})
    # @param [Hash] params ({})
    def forget_smart_home_appliances(params = {}, options = {})
      req = build_request(:forget_smart_home_appliances, params)
      req.send_request(options)
    end

    # Gets address the book details by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the address book for which to request details.
    #
    # @return [Types::GetAddressBookResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAddressBookResponse#address_book #address_book} => Types::AddressBook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_address_book({
    #     address_book_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address_book.address_book_arn #=> String
    #   resp.address_book.name #=> String
    #   resp.address_book.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetAddressBook AWS API Documentation
    #
    # @overload get_address_book(params = {})
    # @param [Hash] params ({})
    def get_address_book(params = {}, options = {})
      req = build_request(:get_address_book, params)
      req.send_request(options)
    end

    # Retrieves the existing conference preferences.
    #
    # @return [Types::GetConferencePreferenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConferencePreferenceResponse#preference #preference} => Types::ConferencePreference
    #
    # @example Response structure
    #
    #   resp.preference.default_conference_provider_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferencePreference AWS API Documentation
    #
    # @overload get_conference_preference(params = {})
    # @param [Hash] params ({})
    def get_conference_preference(params = {}, options = {})
      req = build_request(:get_conference_preference, params)
      req.send_request(options)
    end

    # Gets details about a specific conference provider.
    #
    # @option params [required, String] :conference_provider_arn
    #   The ARN of the newly created conference provider.
    #
    # @return [Types::GetConferenceProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConferenceProviderResponse#conference_provider #conference_provider} => Types::ConferenceProvider
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_conference_provider({
    #     conference_provider_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.conference_provider.arn #=> String
    #   resp.conference_provider.name #=> String
    #   resp.conference_provider.type #=> String, one of "CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"
    #   resp.conference_provider.ip_dial_in.endpoint #=> String
    #   resp.conference_provider.ip_dial_in.comms_protocol #=> String, one of "SIP", "SIPS", "H323"
    #   resp.conference_provider.pstn_dial_in.country_code #=> String
    #   resp.conference_provider.pstn_dial_in.phone_number #=> String
    #   resp.conference_provider.pstn_dial_in.one_click_id_delay #=> String
    #   resp.conference_provider.pstn_dial_in.one_click_pin_delay #=> String
    #   resp.conference_provider.meeting_setting.require_pin #=> String, one of "YES", "NO", "OPTIONAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetConferenceProvider AWS API Documentation
    #
    # @overload get_conference_provider(params = {})
    # @param [Hash] params ({})
    def get_conference_provider(params = {}, options = {})
      req = build_request(:get_conference_provider, params)
      req.send_request(options)
    end

    # Gets the contact details by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact for which to request details.
    #
    # @return [Types::GetContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactResponse#contact #contact} => Types::Contact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact({
    #     contact_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact.contact_arn #=> String
    #   resp.contact.display_name #=> String
    #   resp.contact.first_name #=> String
    #   resp.contact.last_name #=> String
    #   resp.contact.phone_number #=> String
    #   resp.contact.phone_numbers #=> Array
    #   resp.contact.phone_numbers[0].number #=> String
    #   resp.contact.phone_numbers[0].type #=> String, one of "MOBILE", "WORK", "HOME"
    #   resp.contact.sip_addresses #=> Array
    #   resp.contact.sip_addresses[0].uri #=> String
    #   resp.contact.sip_addresses[0].type #=> String, one of "WORK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetContact AWS API Documentation
    #
    # @overload get_contact(params = {})
    # @param [Hash] params ({})
    def get_contact(params = {}, options = {})
      req = build_request(:get_contact, params)
      req.send_request(options)
    end

    # Gets the details of a device by device ARN.
    #
    # @option params [String] :device_arn
    #   The ARN of the device for which to request details. Required.
    #
    # @return [Types::GetDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResponse#device #device} => Types::Device
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     device_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.device.device_arn #=> String
    #   resp.device.device_serial_number #=> String
    #   resp.device.device_type #=> String
    #   resp.device.device_name #=> String
    #   resp.device.software_version #=> String
    #   resp.device.mac_address #=> String
    #   resp.device.room_arn #=> String
    #   resp.device.device_status #=> String, one of "READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"
    #   resp.device.device_status_info.device_status_details #=> Array
    #   resp.device.device_status_info.device_status_details[0].feature #=> String, one of "BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"
    #   resp.device.device_status_info.device_status_details[0].code #=> String, one of "DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE", "CREDENTIALS_ACCESS_FAILURE", "TLS_VERSION_MISMATCH", "ASSOCIATION_REJECTION", "AUTHENTICATION_FAILURE", "DHCP_FAILURE", "INTERNET_UNAVAILABLE", "DNS_FAILURE", "UNKNOWN_FAILURE", "CERTIFICATE_ISSUING_LIMIT_EXCEEDED", "INVALID_CERTIFICATE_AUTHORITY", "NETWORK_PROFILE_NOT_FOUND", "INVALID_PASSWORD_STATE", "PASSWORD_NOT_FOUND", "PASSWORD_MANAGER_ACCESS_DENIED", "CERTIFICATE_AUTHORITY_ACCESS_DENIED"
    #   resp.device.device_status_info.connection_status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.device.device_status_info.connection_status_updated_time #=> Time
    #   resp.device.network_profile_info.network_profile_arn #=> String
    #   resp.device.network_profile_info.certificate_arn #=> String
    #   resp.device.network_profile_info.certificate_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Retrieves the details of a gateway.
    #
    # @option params [required, String] :gateway_arn
    #   The ARN of the gateway to get.
    #
    # @return [Types::GetGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayResponse#gateway #gateway} => Types::Gateway
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway({
    #     gateway_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway.arn #=> String
    #   resp.gateway.name #=> String
    #   resp.gateway.description #=> String
    #   resp.gateway.gateway_group_arn #=> String
    #   resp.gateway.software_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGateway AWS API Documentation
    #
    # @overload get_gateway(params = {})
    # @param [Hash] params ({})
    def get_gateway(params = {}, options = {})
      req = build_request(:get_gateway, params)
      req.send_request(options)
    end

    # Retrieves the details of a gateway group.
    #
    # @option params [required, String] :gateway_group_arn
    #   The ARN of the gateway group to get.
    #
    # @return [Types::GetGatewayGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGatewayGroupResponse#gateway_group #gateway_group} => Types::GatewayGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_group({
    #     gateway_group_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_group.arn #=> String
    #   resp.gateway_group.name #=> String
    #   resp.gateway_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetGatewayGroup AWS API Documentation
    #
    # @overload get_gateway_group(params = {})
    # @param [Hash] params ({})
    def get_gateway_group(params = {}, options = {})
      req = build_request(:get_gateway_group, params)
      req.send_request(options)
    end

    # Retrieves the configured values for the user enrollment invitation
    # email template.
    #
    # @return [Types::GetInvitationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationConfigurationResponse#organization_name #organization_name} => String
    #   * {Types::GetInvitationConfigurationResponse#contact_email #contact_email} => String
    #   * {Types::GetInvitationConfigurationResponse#private_skill_ids #private_skill_ids} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.organization_name #=> String
    #   resp.contact_email #=> String
    #   resp.private_skill_ids #=> Array
    #   resp.private_skill_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetInvitationConfiguration AWS API Documentation
    #
    # @overload get_invitation_configuration(params = {})
    # @param [Hash] params ({})
    def get_invitation_configuration(params = {}, options = {})
      req = build_request(:get_invitation_configuration, params)
      req.send_request(options)
    end

    # Gets the network profile details by the network profile ARN.
    #
    # @option params [required, String] :network_profile_arn
    #   The ARN of the network profile associated with a device.
    #
    # @return [Types::GetNetworkProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkProfileResponse#network_profile #network_profile} => Types::NetworkProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_profile({
    #     network_profile_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profile.network_profile_arn #=> String
    #   resp.network_profile.network_profile_name #=> String
    #   resp.network_profile.description #=> String
    #   resp.network_profile.ssid #=> String
    #   resp.network_profile.security_type #=> String, one of "OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"
    #   resp.network_profile.eap_method #=> String, one of "EAP_TLS"
    #   resp.network_profile.current_password #=> String
    #   resp.network_profile.next_password #=> String
    #   resp.network_profile.certificate_authority_arn #=> String
    #   resp.network_profile.trust_anchors #=> Array
    #   resp.network_profile.trust_anchors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetNetworkProfile AWS API Documentation
    #
    # @overload get_network_profile(params = {})
    # @param [Hash] params ({})
    def get_network_profile(params = {}, options = {})
      req = build_request(:get_network_profile, params)
      req.send_request(options)
    end

    # Gets the details of a room profile by profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile for which to request details. Required.
    #
    # @return [Types::GetProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProfileResponse#profile #profile} => Types::Profile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_profile({
    #     profile_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile.profile_arn #=> String
    #   resp.profile.profile_name #=> String
    #   resp.profile.is_default #=> Boolean
    #   resp.profile.address #=> String
    #   resp.profile.timezone #=> String
    #   resp.profile.distance_unit #=> String, one of "METRIC", "IMPERIAL"
    #   resp.profile.temperature_unit #=> String, one of "FAHRENHEIT", "CELSIUS"
    #   resp.profile.wake_word #=> String, one of "ALEXA", "AMAZON", "ECHO", "COMPUTER"
    #   resp.profile.locale #=> String
    #   resp.profile.setup_mode_disabled #=> Boolean
    #   resp.profile.max_volume_limit #=> Integer
    #   resp.profile.pstn_enabled #=> Boolean
    #   resp.profile.address_book_arn #=> String
    #   resp.profile.meeting_room_configuration.room_utilization_metrics_enabled #=> Boolean
    #   resp.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_at_minutes #=> Array
    #   resp.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_at_minutes[0] #=> Integer
    #   resp.profile.meeting_room_configuration.end_of_meeting_reminder.reminder_type #=> String, one of "ANNOUNCEMENT_TIME_CHECK", "ANNOUNCEMENT_VARIABLE_TIME_LEFT", "CHIME", "KNOCK"
    #   resp.profile.meeting_room_configuration.end_of_meeting_reminder.enabled #=> Boolean
    #   resp.profile.meeting_room_configuration.instant_booking.duration_in_minutes #=> Integer
    #   resp.profile.meeting_room_configuration.instant_booking.enabled #=> Boolean
    #   resp.profile.meeting_room_configuration.require_check_in.release_after_minutes #=> Integer
    #   resp.profile.meeting_room_configuration.require_check_in.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetProfile AWS API Documentation
    #
    # @overload get_profile(params = {})
    # @param [Hash] params ({})
    def get_profile(params = {}, options = {})
      req = build_request(:get_profile, params)
      req.send_request(options)
    end

    # Gets room details by room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room for which to request details. Required.
    #
    # @return [Types::GetRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room({
    #     room_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_arn #=> String
    #   resp.room.room_name #=> String
    #   resp.room.description #=> String
    #   resp.room.provider_calendar_id #=> String
    #   resp.room.profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoom AWS API Documentation
    #
    # @overload get_room(params = {})
    # @param [Hash] params ({})
    def get_room(params = {}, options = {})
      req = build_request(:get_room, params)
      req.send_request(options)
    end

    # Gets room skill parameter details by room, skill, and parameter key
    # ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room from which to get the room skill parameter
    #   details.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill from which to get the room skill parameter
    #   details. Required.
    #
    # @option params [required, String] :parameter_key
    #   The room skill parameter key for which to get details. Required.
    #
    # @return [Types::GetRoomSkillParameterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomSkillParameterResponse#room_skill_parameter #room_skill_parameter} => Types::RoomSkillParameter
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     parameter_key: "RoomSkillParameterKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room_skill_parameter.parameter_key #=> String
    #   resp.room_skill_parameter.parameter_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetRoomSkillParameter AWS API Documentation
    #
    # @overload get_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def get_room_skill_parameter(params = {}, options = {})
      req = build_request(:get_room_skill_parameter, params)
      req.send_request(options)
    end

    # Gets skill group details by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group for which to get details. Required.
    #
    # @return [Types::GetSkillGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSkillGroupResponse#skill_group #skill_group} => Types::SkillGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_skill_group({
    #     skill_group_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_group.skill_group_arn #=> String
    #   resp.skill_group.skill_group_name #=> String
    #   resp.skill_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/GetSkillGroup AWS API Documentation
    #
    # @overload get_skill_group(params = {})
    # @param [Hash] params ({})
    def get_skill_group(params = {}, options = {})
      req = build_request(:get_skill_group, params)
      req.send_request(options)
    end

    # Lists the details of the schedules that a user configured. A download
    # URL of the report associated with each schedule is returned every time
    # this action is called. A new download URL is returned each time, and
    # is valid for 24 hours.
    #
    # @option params [String] :next_token
    #   The token used to list the remaining schedules from the previous API
    #   call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of schedules listed in the call.
    #
    # @return [Types::ListBusinessReportSchedulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBusinessReportSchedulesResponse#business_report_schedules #business_report_schedules} => Array&lt;Types::BusinessReportSchedule&gt;
    #   * {Types::ListBusinessReportSchedulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_business_report_schedules({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.business_report_schedules #=> Array
    #   resp.business_report_schedules[0].schedule_arn #=> String
    #   resp.business_report_schedules[0].schedule_name #=> String
    #   resp.business_report_schedules[0].s3_bucket_name #=> String
    #   resp.business_report_schedules[0].s3_key_prefix #=> String
    #   resp.business_report_schedules[0].format #=> String, one of "CSV", "CSV_ZIP"
    #   resp.business_report_schedules[0].content_range.interval #=> String, one of "ONE_DAY", "ONE_WEEK", "THIRTY_DAYS"
    #   resp.business_report_schedules[0].recurrence.start_date #=> String
    #   resp.business_report_schedules[0].last_business_report.status #=> String, one of "RUNNING", "SUCCEEDED", "FAILED"
    #   resp.business_report_schedules[0].last_business_report.failure_code #=> String, one of "ACCESS_DENIED", "NO_SUCH_BUCKET", "INTERNAL_FAILURE"
    #   resp.business_report_schedules[0].last_business_report.s3_location.path #=> String
    #   resp.business_report_schedules[0].last_business_report.s3_location.bucket_name #=> String
    #   resp.business_report_schedules[0].last_business_report.delivery_time #=> Time
    #   resp.business_report_schedules[0].last_business_report.download_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListBusinessReportSchedules AWS API Documentation
    #
    # @overload list_business_report_schedules(params = {})
    # @param [Hash] params ({})
    def list_business_report_schedules(params = {}, options = {})
      req = build_request(:list_business_report_schedules, params)
      req.send_request(options)
    end

    # Lists conference providers under a specific AWS account.
    #
    # @option params [String] :next_token
    #   The tokens used for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of conference providers to be returned, per
    #   paginated calls.
    #
    # @return [Types::ListConferenceProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConferenceProvidersResponse#conference_providers #conference_providers} => Array&lt;Types::ConferenceProvider&gt;
    #   * {Types::ListConferenceProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_conference_providers({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.conference_providers #=> Array
    #   resp.conference_providers[0].arn #=> String
    #   resp.conference_providers[0].name #=> String
    #   resp.conference_providers[0].type #=> String, one of "CHIME", "BLUEJEANS", "FUZE", "GOOGLE_HANGOUTS", "POLYCOM", "RINGCENTRAL", "SKYPE_FOR_BUSINESS", "WEBEX", "ZOOM", "CUSTOM"
    #   resp.conference_providers[0].ip_dial_in.endpoint #=> String
    #   resp.conference_providers[0].ip_dial_in.comms_protocol #=> String, one of "SIP", "SIPS", "H323"
    #   resp.conference_providers[0].pstn_dial_in.country_code #=> String
    #   resp.conference_providers[0].pstn_dial_in.phone_number #=> String
    #   resp.conference_providers[0].pstn_dial_in.one_click_id_delay #=> String
    #   resp.conference_providers[0].pstn_dial_in.one_click_pin_delay #=> String
    #   resp.conference_providers[0].meeting_setting.require_pin #=> String, one of "YES", "NO", "OPTIONAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListConferenceProviders AWS API Documentation
    #
    # @overload list_conference_providers(params = {})
    # @param [Hash] params ({})
    def list_conference_providers(params = {}, options = {})
      req = build_request(:list_conference_providers, params)
      req.send_request(options)
    end

    # Lists the device event history, including device connection status,
    # for up to 30 days.
    #
    # @option params [required, String] :device_arn
    #   The ARN of a device.
    #
    # @option params [String] :event_type
    #   The event type to filter device events. If EventType isn't specified,
    #   this returns a list of all device events in reverse chronological
    #   order. If EventType is specified, this returns a list of device events
    #   for that EventType in reverse chronological order.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults. When the end of results is reached,
    #   the response has a value of null.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. The default
    #   value is 50. If more results exist than the specified MaxResults
    #   value, a token is included in the response so that the remaining
    #   results can be retrieved.
    #
    # @return [Types::ListDeviceEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceEventsResponse#device_events #device_events} => Array&lt;Types::DeviceEvent&gt;
    #   * {Types::ListDeviceEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_events({
    #     device_arn: "Arn", # required
    #     event_type: "CONNECTION_STATUS", # accepts CONNECTION_STATUS, DEVICE_STATUS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.device_events #=> Array
    #   resp.device_events[0].type #=> String, one of "CONNECTION_STATUS", "DEVICE_STATUS"
    #   resp.device_events[0].value #=> String
    #   resp.device_events[0].timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListDeviceEvents AWS API Documentation
    #
    # @overload list_device_events(params = {})
    # @param [Hash] params ({})
    def list_device_events(params = {}, options = {})
      req = build_request(:list_device_events, params)
      req.send_request(options)
    end

    # Retrieves a list of gateway group summaries. Use GetGatewayGroup to
    # retrieve details of a specific gateway group.
    #
    # @option params [String] :next_token
    #   The token used to paginate though multiple pages of gateway group
    #   summaries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of gateway group summaries to return. The default
    #   is 50.
    #
    # @return [Types::ListGatewayGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewayGroupsResponse#gateway_groups #gateway_groups} => Array&lt;Types::GatewayGroupSummary&gt;
    #   * {Types::ListGatewayGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateway_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_groups #=> Array
    #   resp.gateway_groups[0].arn #=> String
    #   resp.gateway_groups[0].name #=> String
    #   resp.gateway_groups[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGatewayGroups AWS API Documentation
    #
    # @overload list_gateway_groups(params = {})
    # @param [Hash] params ({})
    def list_gateway_groups(params = {}, options = {})
      req = build_request(:list_gateway_groups, params)
      req.send_request(options)
    end

    # Retrieves a list of gateway summaries. Use GetGateway to retrieve
    # details of a specific gateway. An optional gateway group ARN can be
    # provided to only retrieve gateway summaries of gateways that are
    # associated with that gateway group ARN.
    #
    # @option params [String] :gateway_group_arn
    #   The gateway group ARN for which to list gateways.
    #
    # @option params [String] :next_token
    #   The token used to paginate though multiple pages of gateway summaries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of gateway summaries to return. The default is 50.
    #
    # @return [Types::ListGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysResponse#gateways #gateways} => Array&lt;Types::GatewaySummary&gt;
    #   * {Types::ListGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     gateway_group_arn: "Arn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateways #=> Array
    #   resp.gateways[0].arn #=> String
    #   resp.gateways[0].name #=> String
    #   resp.gateways[0].description #=> String
    #   resp.gateways[0].gateway_group_arn #=> String
    #   resp.gateways[0].software_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListGateways AWS API Documentation
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Lists all enabled skills in a specific skill group.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group for which to list enabled skills.
    #
    # @option params [String] :enablement_type
    #   Whether the skill is enabled under the user's account.
    #
    # @option params [String] :skill_type
    #   Whether the skill is publicly available or is a private skill.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @return [Types::ListSkillsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSkillsResponse#skill_summaries #skill_summaries} => Array&lt;Types::SkillSummary&gt;
    #   * {Types::ListSkillsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills({
    #     skill_group_arn: "Arn",
    #     enablement_type: "ENABLED", # accepts ENABLED, PENDING
    #     skill_type: "PUBLIC", # accepts PUBLIC, PRIVATE, ALL
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_summaries #=> Array
    #   resp.skill_summaries[0].skill_id #=> String
    #   resp.skill_summaries[0].skill_name #=> String
    #   resp.skill_summaries[0].supports_linking #=> Boolean
    #   resp.skill_summaries[0].enablement_type #=> String, one of "ENABLED", "PENDING"
    #   resp.skill_summaries[0].skill_type #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkills AWS API Documentation
    #
    # @overload list_skills(params = {})
    # @param [Hash] params ({})
    def list_skills(params = {}, options = {})
      req = build_request(:list_skills, params)
      req.send_request(options)
    end

    # Lists all categories in the Alexa skill store.
    #
    # @option params [String] :next_token
    #   The tokens used for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of categories returned, per paginated calls.
    #
    # @return [Types::ListSkillsStoreCategoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSkillsStoreCategoriesResponse#category_list #category_list} => Array&lt;Types::Category&gt;
    #   * {Types::ListSkillsStoreCategoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills_store_categories({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.category_list #=> Array
    #   resp.category_list[0].category_id #=> Integer
    #   resp.category_list[0].category_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreCategories AWS API Documentation
    #
    # @overload list_skills_store_categories(params = {})
    # @param [Hash] params ({})
    def list_skills_store_categories(params = {}, options = {})
      req = build_request(:list_skills_store_categories, params)
      req.send_request(options)
    end

    # Lists all skills in the Alexa skill store by category.
    #
    # @option params [required, Integer] :category_id
    #   The category ID for which the skills are being retrieved from the
    #   skill store.
    #
    # @option params [String] :next_token
    #   The tokens used for pagination.
    #
    # @option params [Integer] :max_results
    #   The maximum number of skills returned per paginated calls.
    #
    # @return [Types::ListSkillsStoreSkillsByCategoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSkillsStoreSkillsByCategoryResponse#skills_store_skills #skills_store_skills} => Array&lt;Types::SkillsStoreSkill&gt;
    #   * {Types::ListSkillsStoreSkillsByCategoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_skills_store_skills_by_category({
    #     category_id: 1, # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.skills_store_skills #=> Array
    #   resp.skills_store_skills[0].skill_id #=> String
    #   resp.skills_store_skills[0].skill_name #=> String
    #   resp.skills_store_skills[0].short_description #=> String
    #   resp.skills_store_skills[0].icon_url #=> String
    #   resp.skills_store_skills[0].sample_utterances #=> Array
    #   resp.skills_store_skills[0].sample_utterances[0] #=> String
    #   resp.skills_store_skills[0].skill_details.product_description #=> String
    #   resp.skills_store_skills[0].skill_details.invocation_phrase #=> String
    #   resp.skills_store_skills[0].skill_details.release_date #=> String
    #   resp.skills_store_skills[0].skill_details.end_user_license_agreement #=> String
    #   resp.skills_store_skills[0].skill_details.generic_keywords #=> Array
    #   resp.skills_store_skills[0].skill_details.generic_keywords[0] #=> String
    #   resp.skills_store_skills[0].skill_details.bullet_points #=> Array
    #   resp.skills_store_skills[0].skill_details.bullet_points[0] #=> String
    #   resp.skills_store_skills[0].skill_details.new_in_this_version_bullet_points #=> Array
    #   resp.skills_store_skills[0].skill_details.new_in_this_version_bullet_points[0] #=> String
    #   resp.skills_store_skills[0].skill_details.skill_types #=> Array
    #   resp.skills_store_skills[0].skill_details.skill_types[0] #=> String
    #   resp.skills_store_skills[0].skill_details.reviews #=> Hash
    #   resp.skills_store_skills[0].skill_details.reviews["ReviewKey"] #=> String
    #   resp.skills_store_skills[0].skill_details.developer_info.developer_name #=> String
    #   resp.skills_store_skills[0].skill_details.developer_info.privacy_policy #=> String
    #   resp.skills_store_skills[0].skill_details.developer_info.email #=> String
    #   resp.skills_store_skills[0].skill_details.developer_info.url #=> String
    #   resp.skills_store_skills[0].supports_linking #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSkillsStoreSkillsByCategory AWS API Documentation
    #
    # @overload list_skills_store_skills_by_category(params = {})
    # @param [Hash] params ({})
    def list_skills_store_skills_by_category(params = {}, options = {})
      req = build_request(:list_skills_store_skills_by_category, params)
      req.send_request(options)
    end

    # Lists all of the smart home appliances associated with a room.
    #
    # @option params [required, String] :room_arn
    #   The room that the appliances are associated with.
    #
    # @option params [Integer] :max_results
    #   The maximum number of appliances to be returned, per paginated calls.
    #
    # @option params [String] :next_token
    #   The tokens used for pagination.
    #
    # @return [Types::ListSmartHomeAppliancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSmartHomeAppliancesResponse#smart_home_appliances #smart_home_appliances} => Array&lt;Types::SmartHomeAppliance&gt;
    #   * {Types::ListSmartHomeAppliancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_smart_home_appliances({
    #     room_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.smart_home_appliances #=> Array
    #   resp.smart_home_appliances[0].friendly_name #=> String
    #   resp.smart_home_appliances[0].description #=> String
    #   resp.smart_home_appliances[0].manufacturer_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListSmartHomeAppliances AWS API Documentation
    #
    # @overload list_smart_home_appliances(params = {})
    # @param [Hash] params ({})
    def list_smart_home_appliances(params = {}, options = {})
      req = build_request(:list_smart_home_appliances, params)
      req.send_request(options)
    end

    # Lists all tags for the specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the specified resource for which to list tags.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Sets the conference preferences on a specific conference provider at
    # the account level.
    #
    # @option params [required, Types::ConferencePreference] :conference_preference
    #   The conference preference of a specific conference provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_conference_preference({
    #     conference_preference: { # required
    #       default_conference_provider_arn: "Arn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutConferencePreference AWS API Documentation
    #
    # @overload put_conference_preference(params = {})
    # @param [Hash] params ({})
    def put_conference_preference(params = {}, options = {})
      req = build_request(:put_conference_preference, params)
      req.send_request(options)
    end

    # Configures the email template for the user enrollment invitation with
    # the specified attributes.
    #
    # @option params [required, String] :organization_name
    #   The name of the organization sending the enrollment invite to a user.
    #
    # @option params [String] :contact_email
    #   The email ID of the organization or individual contact that the
    #   enrolled user can use.
    #
    # @option params [Array<String>] :private_skill_ids
    #   The list of private skill IDs that you want to recommend to the user
    #   to enable in the invitation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_invitation_configuration({
    #     organization_name: "OrganizationName", # required
    #     contact_email: "Email",
    #     private_skill_ids: ["SkillId"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutInvitationConfiguration AWS API Documentation
    #
    # @overload put_invitation_configuration(params = {})
    # @param [Hash] params ({})
    def put_invitation_configuration(params = {}, options = {})
      req = build_request(:put_invitation_configuration, params)
      req.send_request(options)
    end

    # Updates room skill parameter details by room, skill, and parameter key
    # ID. Not all skills have a room skill parameter.
    #
    # @option params [String] :room_arn
    #   The ARN of the room associated with the room skill parameter.
    #   Required.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill associated with the room skill parameter.
    #   Required.
    #
    # @option params [required, Types::RoomSkillParameter] :room_skill_parameter
    #   The updated room skill parameter. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_room_skill_parameter({
    #     room_arn: "Arn",
    #     skill_id: "SkillId", # required
    #     room_skill_parameter: { # required
    #       parameter_key: "RoomSkillParameterKey", # required
    #       parameter_value: "RoomSkillParameterValue", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutRoomSkillParameter AWS API Documentation
    #
    # @overload put_room_skill_parameter(params = {})
    # @param [Hash] params ({})
    def put_room_skill_parameter(params = {}, options = {})
      req = build_request(:put_room_skill_parameter, params)
      req.send_request(options)
    end

    # Links a user's account to a third-party skill provider. If this API
    # operation is called by an assumed IAM role, the skill being linked
    # must be a private skill. Also, the skill must be owned by the AWS
    # account that assumed the IAM role.
    #
    # @option params [required, Hash<String,String>] :authorization_result
    #   The authorization result specific to OAUTH code grant output. "Code”
    #   must be populated in the AuthorizationResult map to establish the
    #   authorization.
    #
    # @option params [required, String] :skill_id
    #   The unique identifier of a skill.
    #
    # @option params [String] :room_arn
    #   The room that the skill is authorized for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_skill_authorization({
    #     authorization_result: { # required
    #       "Key" => "Value",
    #     },
    #     skill_id: "SkillId", # required
    #     room_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/PutSkillAuthorization AWS API Documentation
    #
    # @overload put_skill_authorization(params = {})
    # @param [Hash] params ({})
    def put_skill_authorization(params = {}, options = {})
      req = build_request(:put_skill_authorization, params)
      req.send_request(options)
    end

    # Registers an Alexa-enabled device built by an Original Equipment
    # Manufacturer (OEM) using Alexa Voice Service (AVS).
    #
    # @option params [required, String] :client_id
    #   The client ID of the OEM used for code-based linking authorization on
    #   an AVS device.
    #
    # @option params [required, String] :user_code
    #   The code that is obtained after your AVS device has made a POST
    #   request to LWA as a part of the Device Authorization Request component
    #   of the OAuth code-based linking specification.
    #
    # @option params [required, String] :product_id
    #   The product ID used to identify your AVS device during authorization.
    #
    # @option params [String] :device_serial_number
    #   The key generated by the OEM that uniquely identifies a specified
    #   instance of your AVS device.
    #
    # @option params [required, String] :amazon_id
    #   The device type ID for your AVS device generated by Amazon when the
    #   OEM creates a new product on Amazon's Developer Console.
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which to associate your AVS device.
    #
    # @return [Types::RegisterAVSDeviceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterAVSDeviceResponse#device_arn #device_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_avs_device({
    #     client_id: "ClientId", # required
    #     user_code: "UserCode", # required
    #     product_id: "ProductId", # required
    #     device_serial_number: "DeviceSerialNumberForAVS",
    #     amazon_id: "AmazonId", # required
    #     room_arn: "Arn",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RegisterAVSDevice AWS API Documentation
    #
    # @overload register_avs_device(params = {})
    # @param [Hash] params ({})
    def register_avs_device(params = {}, options = {})
      req = build_request(:register_avs_device, params)
      req.send_request(options)
    end

    # Disassociates a skill from the organization under a user's AWS
    # account. If the skill is a private skill, it moves to an AcceptStatus
    # of PENDING. Any private or public skill that is rejected can be added
    # later by calling the ApproveSkill API.
    #
    # @option params [required, String] :skill_id
    #   The unique identifier of the skill.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_skill({
    #     skill_id: "SkillId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RejectSkill AWS API Documentation
    #
    # @overload reject_skill(params = {})
    # @param [Hash] params ({})
    def reject_skill(params = {}, options = {})
      req = build_request(:reject_skill, params)
      req.send_request(options)
    end

    # Determines the details for the room from which a skill request was
    # invoked. This operation is used by skill developers.
    #
    # @option params [required, String] :user_id
    #   The ARN of the user. Required.
    #
    # @option params [required, String] :skill_id
    #   The ARN of the skill that was requested. Required.
    #
    # @return [Types::ResolveRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveRoomResponse#room_arn #room_arn} => String
    #   * {Types::ResolveRoomResponse#room_name #room_name} => String
    #   * {Types::ResolveRoomResponse#room_skill_parameters #room_skill_parameters} => Array&lt;Types::RoomSkillParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_room({
    #     user_id: "UserId", # required
    #     skill_id: "SkillId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room_arn #=> String
    #   resp.room_name #=> String
    #   resp.room_skill_parameters #=> Array
    #   resp.room_skill_parameters[0].parameter_key #=> String
    #   resp.room_skill_parameters[0].parameter_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/ResolveRoom AWS API Documentation
    #
    # @overload resolve_room(params = {})
    # @param [Hash] params ({})
    def resolve_room(params = {}, options = {})
      req = build_request(:resolve_room, params)
      req.send_request(options)
    end

    # Revokes an invitation and invalidates the enrollment URL.
    #
    # @option params [String] :user_arn
    #   The ARN of the user for whom to revoke an enrollment invitation.
    #   Required.
    #
    # @option params [String] :enrollment_id
    #   The ARN of the enrollment invitation to revoke. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_invitation({
    #     user_arn: "Arn",
    #     enrollment_id: "EnrollmentId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/RevokeInvitation AWS API Documentation
    #
    # @overload revoke_invitation(params = {})
    # @param [Hash] params ({})
    def revoke_invitation(params = {}, options = {})
      req = build_request(:revoke_invitation, params)
      req.send_request(options)
    end

    # Searches address books and lists the ones that meet a set of filter
    # and sort criteria.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter key is AddressBookName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of address books.
    #   The supported sort key is AddressBookName.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::SearchAddressBooksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAddressBooksResponse#address_books #address_books} => Array&lt;Types::AddressBookData&gt;
    #   * {Types::SearchAddressBooksResponse#next_token #next_token} => String
    #   * {Types::SearchAddressBooksResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_address_books({
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.address_books #=> Array
    #   resp.address_books[0].address_book_arn #=> String
    #   resp.address_books[0].name #=> String
    #   resp.address_books[0].description #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchAddressBooks AWS API Documentation
    #
    # @overload search_address_books(params = {})
    # @param [Hash] params ({})
    def search_address_books(params = {}, options = {})
      req = build_request(:search_address_books, params)
      req.send_request(options)
    end

    # Searches contacts and lists the ones that meet a set of filter and
    # sort criteria.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of address books. The
    #   supported filter keys are DisplayName, FirstName, LastName, and
    #   AddressBookArns.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of contacts. The
    #   supported sort keys are DisplayName, FirstName, and LastName.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response only includes results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::SearchContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchContactsResponse#contacts #contacts} => Array&lt;Types::ContactData&gt;
    #   * {Types::SearchContactsResponse#next_token #next_token} => String
    #   * {Types::SearchContactsResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_contacts({
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contacts #=> Array
    #   resp.contacts[0].contact_arn #=> String
    #   resp.contacts[0].display_name #=> String
    #   resp.contacts[0].first_name #=> String
    #   resp.contacts[0].last_name #=> String
    #   resp.contacts[0].phone_number #=> String
    #   resp.contacts[0].phone_numbers #=> Array
    #   resp.contacts[0].phone_numbers[0].number #=> String
    #   resp.contacts[0].phone_numbers[0].type #=> String, one of "MOBILE", "WORK", "HOME"
    #   resp.contacts[0].sip_addresses #=> Array
    #   resp.contacts[0].sip_addresses[0].uri #=> String
    #   resp.contacts[0].sip_addresses[0].type #=> String, one of "WORK"
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchContacts AWS API Documentation
    #
    # @overload search_contacts(params = {})
    # @param [Hash] params ({})
    def search_contacts(params = {}, options = {})
      req = build_request(:search_contacts, params)
      req.send_request(options)
    end

    # Searches devices and lists the ones that meet a set of filter
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of devices. Supported
    #   filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode,
    #   RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly,
    #   ConnectionStatus (ONLINE and OFFLINE), NetworkProfileName,
    #   NetworkProfileArn, Feature, and FailureCode.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of devices.
    #   Supported sort keys are DeviceName, DeviceStatus, RoomName,
    #   DeviceType, DeviceSerialNumber, ConnectionStatus, NetworkProfileName,
    #   NetworkProfileArn, Feature, and FailureCode.
    #
    # @return [Types::SearchDevicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchDevicesResponse#devices #devices} => Array&lt;Types::DeviceData&gt;
    #   * {Types::SearchDevicesResponse#next_token #next_token} => String
    #   * {Types::SearchDevicesResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_devices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].device_arn #=> String
    #   resp.devices[0].device_serial_number #=> String
    #   resp.devices[0].device_type #=> String
    #   resp.devices[0].device_name #=> String
    #   resp.devices[0].software_version #=> String
    #   resp.devices[0].mac_address #=> String
    #   resp.devices[0].device_status #=> String, one of "READY", "PENDING", "WAS_OFFLINE", "DEREGISTERED", "FAILED"
    #   resp.devices[0].network_profile_arn #=> String
    #   resp.devices[0].network_profile_name #=> String
    #   resp.devices[0].room_arn #=> String
    #   resp.devices[0].room_name #=> String
    #   resp.devices[0].device_status_info.device_status_details #=> Array
    #   resp.devices[0].device_status_info.device_status_details[0].feature #=> String, one of "BLUETOOTH", "VOLUME", "NOTIFICATIONS", "LISTS", "SKILLS", "NETWORK_PROFILE", "SETTINGS", "ALL"
    #   resp.devices[0].device_status_info.device_status_details[0].code #=> String, one of "DEVICE_SOFTWARE_UPDATE_NEEDED", "DEVICE_WAS_OFFLINE", "CREDENTIALS_ACCESS_FAILURE", "TLS_VERSION_MISMATCH", "ASSOCIATION_REJECTION", "AUTHENTICATION_FAILURE", "DHCP_FAILURE", "INTERNET_UNAVAILABLE", "DNS_FAILURE", "UNKNOWN_FAILURE", "CERTIFICATE_ISSUING_LIMIT_EXCEEDED", "INVALID_CERTIFICATE_AUTHORITY", "NETWORK_PROFILE_NOT_FOUND", "INVALID_PASSWORD_STATE", "PASSWORD_NOT_FOUND", "PASSWORD_MANAGER_ACCESS_DENIED", "CERTIFICATE_AUTHORITY_ACCESS_DENIED"
    #   resp.devices[0].device_status_info.connection_status #=> String, one of "ONLINE", "OFFLINE"
    #   resp.devices[0].device_status_info.connection_status_updated_time #=> Time
    #   resp.devices[0].created_time #=> Time
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchDevices AWS API Documentation
    #
    # @overload search_devices(params = {})
    # @param [Hash] params ({})
    def search_devices(params = {}, options = {})
      req = build_request(:search_devices, params)
      req.send_request(options)
    end

    # Searches network profiles and lists the ones that meet a set of filter
    # and sort criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of network profiles. Valid
    #   filters are NetworkProfileName, Ssid, and SecurityType.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use to list the specified set of network profiles.
    #   Valid sort criteria includes NetworkProfileName, Ssid, and
    #   SecurityType.
    #
    # @return [Types::SearchNetworkProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchNetworkProfilesResponse#network_profiles #network_profiles} => Array&lt;Types::NetworkProfileData&gt;
    #   * {Types::SearchNetworkProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchNetworkProfilesResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_network_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profiles #=> Array
    #   resp.network_profiles[0].network_profile_arn #=> String
    #   resp.network_profiles[0].network_profile_name #=> String
    #   resp.network_profiles[0].description #=> String
    #   resp.network_profiles[0].ssid #=> String
    #   resp.network_profiles[0].security_type #=> String, one of "OPEN", "WEP", "WPA_PSK", "WPA2_PSK", "WPA2_ENTERPRISE"
    #   resp.network_profiles[0].eap_method #=> String, one of "EAP_TLS"
    #   resp.network_profiles[0].certificate_authority_arn #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchNetworkProfiles AWS API Documentation
    #
    # @overload search_network_profiles(params = {})
    # @param [Hash] params ({})
    def search_network_profiles(params = {}, options = {})
      req = build_request(:search_network_profiles, params)
      req.send_request(options)
    end

    # Searches room profiles and lists the ones that meet a set of filter
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of room profiles. Supported
    #   filter keys are ProfileName and Address. Required.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of room profiles.
    #   Supported sort keys are ProfileName and Address.
    #
    # @return [Types::SearchProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProfilesResponse#profiles #profiles} => Array&lt;Types::ProfileData&gt;
    #   * {Types::SearchProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchProfilesResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_profiles({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_arn #=> String
    #   resp.profiles[0].profile_name #=> String
    #   resp.profiles[0].is_default #=> Boolean
    #   resp.profiles[0].address #=> String
    #   resp.profiles[0].timezone #=> String
    #   resp.profiles[0].distance_unit #=> String, one of "METRIC", "IMPERIAL"
    #   resp.profiles[0].temperature_unit #=> String, one of "FAHRENHEIT", "CELSIUS"
    #   resp.profiles[0].wake_word #=> String, one of "ALEXA", "AMAZON", "ECHO", "COMPUTER"
    #   resp.profiles[0].locale #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchProfiles AWS API Documentation
    #
    # @overload search_profiles(params = {})
    # @param [Hash] params ({})
    def search_profiles(params = {}, options = {})
      req = build_request(:search_profiles, params)
      req.send_request(options)
    end

    # Searches rooms and lists the ones that meet a set of filter and sort
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of rooms. The supported
    #   filter keys are RoomName and ProfileName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of rooms. The
    #   supported sort keys are RoomName and ProfileName.
    #
    # @return [Types::SearchRoomsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRoomsResponse#rooms #rooms} => Array&lt;Types::RoomData&gt;
    #   * {Types::SearchRoomsResponse#next_token #next_token} => String
    #   * {Types::SearchRoomsResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_rooms({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rooms #=> Array
    #   resp.rooms[0].room_arn #=> String
    #   resp.rooms[0].room_name #=> String
    #   resp.rooms[0].description #=> String
    #   resp.rooms[0].provider_calendar_id #=> String
    #   resp.rooms[0].profile_arn #=> String
    #   resp.rooms[0].profile_name #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchRooms AWS API Documentation
    #
    # @overload search_rooms(params = {})
    # @param [Hash] params ({})
    def search_rooms(params = {}, options = {})
      req = build_request(:search_rooms, params)
      req.send_request(options)
    end

    # Searches skill groups and lists the ones that meet a set of filter and
    # sort criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`. Required.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use to list a specified set of skill groups. The
    #   supported filter key is SkillGroupName.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the specified set of skill groups.
    #   The supported sort key is SkillGroupName.
    #
    # @return [Types::SearchSkillGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSkillGroupsResponse#skill_groups #skill_groups} => Array&lt;Types::SkillGroupData&gt;
    #   * {Types::SearchSkillGroupsResponse#next_token #next_token} => String
    #   * {Types::SearchSkillGroupsResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_skill_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.skill_groups #=> Array
    #   resp.skill_groups[0].skill_group_arn #=> String
    #   resp.skill_groups[0].skill_group_name #=> String
    #   resp.skill_groups[0].description #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchSkillGroups AWS API Documentation
    #
    # @overload search_skill_groups(params = {})
    # @param [Hash] params ({})
    def search_skill_groups(params = {}, options = {})
      req = build_request(:search_skill_groups, params)
      req.send_request(options)
    end

    # Searches users and lists the ones that meet a set of filter and sort
    # criteria.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`. Required.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved. Required.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to use for listing a specific set of users. Required.
    #   Supported filter keys are UserId, FirstName, LastName, Email, and
    #   EnrollmentStatus.
    #
    # @option params [Array<Types::Sort>] :sort_criteria
    #   The sort order to use in listing the filtered set of users. Required.
    #   Supported sort keys are UserId, FirstName, LastName, Email, and
    #   EnrollmentStatus.
    #
    # @return [Types::SearchUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUsersResponse#users #users} => Array&lt;Types::UserData&gt;
    #   * {Types::SearchUsersResponse#next_token #next_token} => String
    #   * {Types::SearchUsersResponse#total_count #total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     sort_criteria: [
    #       {
    #         key: "SortKey", # required
    #         value: "ASC", # required, accepts ASC, DESC
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_arn #=> String
    #   resp.users[0].first_name #=> String
    #   resp.users[0].last_name #=> String
    #   resp.users[0].email #=> String
    #   resp.users[0].enrollment_status #=> String, one of "INITIALIZED", "PENDING", "REGISTERED", "DISASSOCIATING", "DEREGISTERING"
    #   resp.users[0].enrollment_id #=> String
    #   resp.next_token #=> String
    #   resp.total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SearchUsers AWS API Documentation
    #
    # @overload search_users(params = {})
    # @param [Hash] params ({})
    def search_users(params = {}, options = {})
      req = build_request(:search_users, params)
      req.send_request(options)
    end

    # Triggers an asynchronous flow to send text, SSML, or audio
    # announcements to rooms that are identified by a search or filter.
    #
    # @option params [required, Array<Types::Filter>] :room_filters
    #   The filters to use to send an announcement to a specified list of
    #   rooms. The supported filter keys are RoomName, ProfileName, RoomArn,
    #   and ProfileArn. To send to all rooms, specify an empty RoomFilters
    #   list.
    #
    # @option params [required, Types::Content] :content
    #   The announcement content. This can contain only one of the three
    #   possible announcement types (text, SSML or audio).
    #
    # @option params [Integer] :time_to_live_in_seconds
    #   The time to live for an announcement. Default is 300. If delivery
    #   doesn't occur within this time, the announcement is not delivered.
    #
    # @option params [required, String] :client_request_token
    #   The unique, user-specified identifier for the request that ensures
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::SendAnnouncementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendAnnouncementResponse#announcement_arn #announcement_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_announcement({
    #     room_filters: [ # required
    #       {
    #         key: "FilterKey", # required
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     content: { # required
    #       text_list: [
    #         {
    #           locale: "en-US", # required, accepts en-US
    #           value: "TextValue", # required
    #         },
    #       ],
    #       ssml_list: [
    #         {
    #           locale: "en-US", # required, accepts en-US
    #           value: "SsmlValue", # required
    #         },
    #       ],
    #       audio_list: [
    #         {
    #           locale: "en-US", # required, accepts en-US
    #           location: "AudioLocation", # required
    #         },
    #       ],
    #     },
    #     time_to_live_in_seconds: 1,
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.announcement_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendAnnouncement AWS API Documentation
    #
    # @overload send_announcement(params = {})
    # @param [Hash] params ({})
    def send_announcement(params = {}, options = {})
      req = build_request(:send_announcement, params)
      req.send_request(options)
    end

    # Sends an enrollment invitation email with a URL to a user. The URL is
    # valid for 30 days or until you call this operation again, whichever
    # comes first.
    #
    # @option params [String] :user_arn
    #   The ARN of the user to whom to send an invitation. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_invitation({
    #     user_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/SendInvitation AWS API Documentation
    #
    # @overload send_invitation(params = {})
    # @param [Hash] params ({})
    def send_invitation(params = {}, options = {})
      req = build_request(:send_invitation, params)
      req.send_request(options)
    end

    # Resets a device and its account to the known default settings. This
    # clears all information and settings set by previous users in the
    # following ways:
    #
    # * Bluetooth - This unpairs all bluetooth devices paired with your echo
    #   device.
    #
    # * Volume - This resets the echo device's volume to the default value.
    #
    # * Notifications - This clears all notifications from your echo device.
    #
    # * Lists - This clears all to-do items from your echo device.
    #
    # * Settings - This internally syncs the room's profile (if the device
    #   is assigned to a room), contacts, address books, delegation access
    #   for account linking, and communications (if enabled on the room
    #   profile).
    #
    # @option params [String] :room_arn
    #   The ARN of the room with which the device to sync is associated.
    #   Required.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to sync. Required.
    #
    # @option params [required, Array<String>] :features
    #   Request structure to start the device sync. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_device_sync({
    #     room_arn: "Arn",
    #     device_arn: "Arn",
    #     features: ["BLUETOOTH"], # required, accepts BLUETOOTH, VOLUME, NOTIFICATIONS, LISTS, SKILLS, NETWORK_PROFILE, SETTINGS, ALL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartDeviceSync AWS API Documentation
    #
    # @overload start_device_sync(params = {})
    # @param [Hash] params ({})
    def start_device_sync(params = {}, options = {})
      req = build_request(:start_device_sync, params)
      req.send_request(options)
    end

    # Initiates the discovery of any smart home appliances associated with
    # the room.
    #
    # @option params [required, String] :room_arn
    #   The room where smart home appliance discovery was initiated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_smart_home_appliance_discovery({
    #     room_arn: "Arn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/StartSmartHomeApplianceDiscovery AWS API Documentation
    #
    # @overload start_smart_home_appliance_discovery(params = {})
    # @param [Hash] params ({})
    def start_smart_home_appliance_discovery(params = {}, options = {})
      req = build_request(:start_smart_home_appliance_discovery, params)
      req.send_request(options)
    end

    # Adds metadata tags to a specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource to which to add metadata tags. Required.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be added to the specified resource. Do not provide system
    #   tags. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes metadata tags from a specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource from which to remove metadata tags. Required.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tags to be removed from the specified resource. Do not provide
    #   system tags. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates address book details by the address book ARN.
    #
    # @option params [required, String] :address_book_arn
    #   The ARN of the room to update.
    #
    # @option params [String] :name
    #   The updated name of the room.
    #
    # @option params [String] :description
    #   The updated description of the room.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_address_book({
    #     address_book_arn: "Arn", # required
    #     name: "AddressBookName",
    #     description: "AddressBookDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateAddressBook AWS API Documentation
    #
    # @overload update_address_book(params = {})
    # @param [Hash] params ({})
    def update_address_book(params = {}, options = {})
      req = build_request(:update_address_book, params)
      req.send_request(options)
    end

    # Updates the configuration of the report delivery schedule with the
    # specified schedule ARN.
    #
    # @option params [required, String] :schedule_arn
    #   The ARN of the business report schedule.
    #
    # @option params [String] :s3_bucket_name
    #   The S3 location of the output reports.
    #
    # @option params [String] :s3_key_prefix
    #   The S3 key where the report is delivered.
    #
    # @option params [String] :format
    #   The format of the generated report (individual CSV files or zipped
    #   files of individual files).
    #
    # @option params [String] :schedule_name
    #   The name identifier of the schedule.
    #
    # @option params [Types::BusinessReportRecurrence] :recurrence
    #   The recurrence of the reports.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_business_report_schedule({
    #     schedule_arn: "Arn", # required
    #     s3_bucket_name: "CustomerS3BucketName",
    #     s3_key_prefix: "S3KeyPrefix",
    #     format: "CSV", # accepts CSV, CSV_ZIP
    #     schedule_name: "BusinessReportScheduleName",
    #     recurrence: {
    #       start_date: "Date",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateBusinessReportSchedule AWS API Documentation
    #
    # @overload update_business_report_schedule(params = {})
    # @param [Hash] params ({})
    def update_business_report_schedule(params = {}, options = {})
      req = build_request(:update_business_report_schedule, params)
      req.send_request(options)
    end

    # Updates an existing conference provider's settings.
    #
    # @option params [required, String] :conference_provider_arn
    #   The ARN of the conference provider.
    #
    # @option params [required, String] :conference_provider_type
    #   The type of the conference provider.
    #
    # @option params [Types::IPDialIn] :ip_dial_in
    #   The IP endpoint and protocol for calling.
    #
    # @option params [Types::PSTNDialIn] :pstn_dial_in
    #   The information for PSTN conferencing.
    #
    # @option params [required, Types::MeetingSetting] :meeting_setting
    #   The meeting settings for the conference provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_conference_provider({
    #     conference_provider_arn: "Arn", # required
    #     conference_provider_type: "CHIME", # required, accepts CHIME, BLUEJEANS, FUZE, GOOGLE_HANGOUTS, POLYCOM, RINGCENTRAL, SKYPE_FOR_BUSINESS, WEBEX, ZOOM, CUSTOM
    #     ip_dial_in: {
    #       endpoint: "Endpoint", # required
    #       comms_protocol: "SIP", # required, accepts SIP, SIPS, H323
    #     },
    #     pstn_dial_in: {
    #       country_code: "CountryCode", # required
    #       phone_number: "OutboundPhoneNumber", # required
    #       one_click_id_delay: "OneClickIdDelay", # required
    #       one_click_pin_delay: "OneClickPinDelay", # required
    #     },
    #     meeting_setting: { # required
    #       require_pin: "YES", # required, accepts YES, NO, OPTIONAL
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateConferenceProvider AWS API Documentation
    #
    # @overload update_conference_provider(params = {})
    # @param [Hash] params ({})
    def update_conference_provider(params = {}, options = {})
      req = build_request(:update_conference_provider, params)
      req.send_request(options)
    end

    # Updates the contact details by the contact ARN.
    #
    # @option params [required, String] :contact_arn
    #   The ARN of the contact to update.
    #
    # @option params [String] :display_name
    #   The updated display name of the contact.
    #
    # @option params [String] :first_name
    #   The updated first name of the contact.
    #
    # @option params [String] :last_name
    #   The updated last name of the contact.
    #
    # @option params [String] :phone_number
    #   The updated phone number of the contact. The phone number type
    #   defaults to WORK. You can either specify PhoneNumber or PhoneNumbers.
    #   We recommend that you use PhoneNumbers, which lets you specify the
    #   phone number type and multiple numbers.
    #
    # @option params [Array<Types::PhoneNumber>] :phone_numbers
    #   The list of phone numbers for the contact.
    #
    # @option params [Array<Types::SipAddress>] :sip_addresses
    #   The list of SIP addresses for the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     contact_arn: "Arn", # required
    #     display_name: "ContactName",
    #     first_name: "ContactName",
    #     last_name: "ContactName",
    #     phone_number: "RawPhoneNumber",
    #     phone_numbers: [
    #       {
    #         number: "RawPhoneNumber", # required
    #         type: "MOBILE", # required, accepts MOBILE, WORK, HOME
    #       },
    #     ],
    #     sip_addresses: [
    #       {
    #         uri: "SipUri", # required
    #         type: "WORK", # required, accepts WORK
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Updates the device name by device ARN.
    #
    # @option params [String] :device_arn
    #   The ARN of the device to update. Required.
    #
    # @option params [String] :device_name
    #   The updated device name. Required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device({
    #     device_arn: "Arn",
    #     device_name: "DeviceName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateDevice AWS API Documentation
    #
    # @overload update_device(params = {})
    # @param [Hash] params ({})
    def update_device(params = {}, options = {})
      req = build_request(:update_device, params)
      req.send_request(options)
    end

    # Updates the details of a gateway. If any optional field is not
    # provided, the existing corresponding value is left unmodified.
    #
    # @option params [required, String] :gateway_arn
    #   The ARN of the gateway to update.
    #
    # @option params [String] :name
    #   The updated name of the gateway.
    #
    # @option params [String] :description
    #   The updated description of the gateway.
    #
    # @option params [String] :software_version
    #   The updated software version of the gateway. The gateway automatically
    #   updates its software version during normal operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway({
    #     gateway_arn: "Arn", # required
    #     name: "GatewayName",
    #     description: "GatewayDescription",
    #     software_version: "GatewayVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGateway AWS API Documentation
    #
    # @overload update_gateway(params = {})
    # @param [Hash] params ({})
    def update_gateway(params = {}, options = {})
      req = build_request(:update_gateway, params)
      req.send_request(options)
    end

    # Updates the details of a gateway group. If any optional field is not
    # provided, the existing corresponding value is left unmodified.
    #
    # @option params [required, String] :gateway_group_arn
    #   The ARN of the gateway group to update.
    #
    # @option params [String] :name
    #   The updated name of the gateway group.
    #
    # @option params [String] :description
    #   The updated description of the gateway group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_group({
    #     gateway_group_arn: "Arn", # required
    #     name: "GatewayGroupName",
    #     description: "GatewayGroupDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateGatewayGroup AWS API Documentation
    #
    # @overload update_gateway_group(params = {})
    # @param [Hash] params ({})
    def update_gateway_group(params = {}, options = {})
      req = build_request(:update_gateway_group, params)
      req.send_request(options)
    end

    # Updates a network profile by the network profile ARN.
    #
    # @option params [required, String] :network_profile_arn
    #   The ARN of the network profile associated with a device.
    #
    # @option params [String] :network_profile_name
    #   The name of the network profile associated with a device.
    #
    # @option params [String] :description
    #   Detailed information about a device's network profile.
    #
    # @option params [String] :current_password
    #   The current password of the Wi-Fi network.
    #
    # @option params [String] :next_password
    #   The next, or subsequent, password of the Wi-Fi network. This password
    #   is asynchronously transmitted to the device and is used when the
    #   password of the network changes to NextPassword.
    #
    # @option params [String] :certificate_authority_arn
    #   The ARN of the Private Certificate Authority (PCA) created in AWS
    #   Certificate Manager (ACM). This is used to issue certificates to the
    #   devices.
    #
    # @option params [Array<String>] :trust_anchors
    #   The root certificate(s) of your authentication server that will be
    #   installed on your devices and used to trust your authentication server
    #   during EAP negotiation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_profile({
    #     network_profile_arn: "Arn", # required
    #     network_profile_name: "NetworkProfileName",
    #     description: "NetworkProfileDescription",
    #     current_password: "CurrentWiFiPassword",
    #     next_password: "NextWiFiPassword",
    #     certificate_authority_arn: "Arn",
    #     trust_anchors: ["TrustAnchor"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateNetworkProfile AWS API Documentation
    #
    # @overload update_network_profile(params = {})
    # @param [Hash] params ({})
    def update_network_profile(params = {}, options = {})
      req = build_request(:update_network_profile, params)
      req.send_request(options)
    end

    # Updates an existing room profile by room profile ARN.
    #
    # @option params [String] :profile_arn
    #   The ARN of the room profile to update. Required.
    #
    # @option params [String] :profile_name
    #   The updated name for the room profile.
    #
    # @option params [Boolean] :is_default
    #   Sets the profile as default if selected. If this is missing, no update
    #   is done to the default status.
    #
    # @option params [String] :timezone
    #   The updated timezone for the room profile.
    #
    # @option params [String] :address
    #   The updated address for the room profile.
    #
    # @option params [String] :distance_unit
    #   The updated distance unit for the room profile.
    #
    # @option params [String] :temperature_unit
    #   The updated temperature unit for the room profile.
    #
    # @option params [String] :wake_word
    #   The updated wake word for the room profile.
    #
    # @option params [String] :locale
    #   The updated locale for the room profile. (This is currently only
    #   available to a limited preview audience.)
    #
    # @option params [Boolean] :setup_mode_disabled
    #   Whether the setup mode of the profile is enabled.
    #
    # @option params [Integer] :max_volume_limit
    #   The updated maximum volume limit for the room profile.
    #
    # @option params [Boolean] :pstn_enabled
    #   Whether the PSTN setting of the room profile is enabled.
    #
    # @option params [Types::UpdateMeetingRoomConfiguration] :meeting_room_configuration
    #   The updated meeting room settings of a room profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_profile({
    #     profile_arn: "Arn",
    #     profile_name: "ProfileName",
    #     is_default: false,
    #     timezone: "Timezone",
    #     address: "Address",
    #     distance_unit: "METRIC", # accepts METRIC, IMPERIAL
    #     temperature_unit: "FAHRENHEIT", # accepts FAHRENHEIT, CELSIUS
    #     wake_word: "ALEXA", # accepts ALEXA, AMAZON, ECHO, COMPUTER
    #     locale: "DeviceLocale",
    #     setup_mode_disabled: false,
    #     max_volume_limit: 1,
    #     pstn_enabled: false,
    #     meeting_room_configuration: {
    #       room_utilization_metrics_enabled: false,
    #       end_of_meeting_reminder: {
    #         reminder_at_minutes: [1],
    #         reminder_type: "ANNOUNCEMENT_TIME_CHECK", # accepts ANNOUNCEMENT_TIME_CHECK, ANNOUNCEMENT_VARIABLE_TIME_LEFT, CHIME, KNOCK
    #         enabled: false,
    #       },
    #       instant_booking: {
    #         duration_in_minutes: 1,
    #         enabled: false,
    #       },
    #       require_check_in: {
    #         release_after_minutes: 1,
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateProfile AWS API Documentation
    #
    # @overload update_profile(params = {})
    # @param [Hash] params ({})
    def update_profile(params = {}, options = {})
      req = build_request(:update_profile, params)
      req.send_request(options)
    end

    # Updates room details by room ARN.
    #
    # @option params [String] :room_arn
    #   The ARN of the room to update.
    #
    # @option params [String] :room_name
    #   The updated name for the room.
    #
    # @option params [String] :description
    #   The updated description for the room.
    #
    # @option params [String] :provider_calendar_id
    #   The updated provider calendar ARN for the room.
    #
    # @option params [String] :profile_arn
    #   The updated profile ARN for the room.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room({
    #     room_arn: "Arn",
    #     room_name: "RoomName",
    #     description: "RoomDescription",
    #     provider_calendar_id: "ProviderCalendarId",
    #     profile_arn: "Arn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateRoom AWS API Documentation
    #
    # @overload update_room(params = {})
    # @param [Hash] params ({})
    def update_room(params = {}, options = {})
      req = build_request(:update_room, params)
      req.send_request(options)
    end

    # Updates skill group details by skill group ARN.
    #
    # @option params [String] :skill_group_arn
    #   The ARN of the skill group to update.
    #
    # @option params [String] :skill_group_name
    #   The updated name for the skill group.
    #
    # @option params [String] :description
    #   The updated description for the skill group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_skill_group({
    #     skill_group_arn: "Arn",
    #     skill_group_name: "SkillGroupName",
    #     description: "SkillGroupDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/alexaforbusiness-2017-11-09/UpdateSkillGroup AWS API Documentation
    #
    # @overload update_skill_group(params = {})
    # @param [Hash] params ({})
    def update_skill_group(params = {}, options = {})
      req = build_request(:update_skill_group, params)
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
      context[:gem_name] = 'aws-sdk-alexaforbusiness'
      context[:gem_version] = '1.43.0'
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
