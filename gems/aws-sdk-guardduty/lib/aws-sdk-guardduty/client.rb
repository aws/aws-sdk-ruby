# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:guardduty)

module Aws::GuardDuty
  # An API client for Aws::GuardDuty.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GuardDutyAPIService
    @identifier = :guardduty

    add_plugin(::Aws::GuardDuty::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GuardDuty::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Accepts the invitation to be a member account and get monitored by a GuardDuty administrator account that sent the invitation.</p>
    # @param [Hash, Types::AcceptAdministratorInvitationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    # @option params [String] :administrator_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're accepting.</p>
    # @option params [String] :invitation_id
    #   <p>The value that is used to validate the administrator account to the member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     administrator_id: "String", # required
    #     invitation_id: "String", # required
    #   }
    #   options = {}
    #   response = client.accept_administrator_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptAdministratorInvitationResponse]
    def accept_administrator_invitation(params = {}, options = {})
      request = build_request(:accept_administrator_invitation, params)
      request.send_request(options)
    end

    # <p>Accepts the invitation to be monitored by a GuardDuty administrator account.</p>
    # @param [Hash, Types::AcceptInvitationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :master_id
    #   <p>The account ID of the GuardDuty administrator account whose invitation you're accepting.</p>
    # @option params [String] :invitation_id
    #   <p>The value that is used to validate the administrator account to the member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     master_id: "String", # required
    #     invitation_id: "String", # required
    #   }
    #   options = {}
    #   response = client.accept_invitation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This operation is deprecated, use AcceptAdministratorInvitation instead
    # @return [Types::AcceptInvitationResponse]
    def accept_invitation(params = {}, options = {})
      request = build_request(:accept_invitation, params)
      request.send_request(options)
    end

    # <p>Archives GuardDuty findings that are specified by the list of finding IDs.</p> <note> <p>Only the administrator account can archive findings. Member accounts don't have permission to archive findings from their accounts.</p> </note>
    # @param [Hash, Types::ArchiveFindingsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to archive.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to archive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   }
    #   options = {}
    #   response = client.archive_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ArchiveFindingsResponse]
    def archive_findings(params = {}, options = {})
      request = build_request(:archive_findings, params)
      request.send_request(options)
    end

    # <p>Enables a custom detection rule for your account by creating an association. You specify the rule and the mode in which it operates.</p>
    # @param [Hash, Types::CreateCustomDetectionRuleAssociationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :mode
    #   <p>The rule execution mode. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. Maximum 64 characters.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to the new custom detection rule association resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_custom_detection_rule_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_association: { # required
    #       association_id: "AssociationId", # required
    #       arn: "DetectionRuleArn", # required
    #       rule_id: "RuleId", # required
    #       account_id: "AccountId", # required
    #       mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       expires_at: Time.now
    #     }
    #   }
    # @return [Types::CreateCustomDetectionRuleAssociationResponse]
    def create_custom_detection_rule_association(params = {}, options = {})
      request = build_request(:create_custom_detection_rule_association, params)
      request.send_request(options)
    end

    # <p>Creates an organization-level configuration that enables a custom detection rule across your organization. This operation is available only to the delegated administrator account.</p>
    # @param [Hash, Types::CreateCustomDetectionRuleOrgConfigurationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :mode
    #   <p>The execution mode of the organization configuration. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @option params [Array<String>] :include_account_ids
    #   <p>The account IDs to include in the organization configuration. Mutually exclusive with <code>ExcludeAccountIds</code>.</p>
    # @option params [Array<String>] :exclude_account_ids
    #   <p>The account IDs to exclude from the organization configuration. Mutually exclusive with <code>IncludeAccountIds</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #     include_account_ids: ["AccountId"],
    #     exclude_account_ids: ["AccountId"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_custom_detection_rule_org_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateCustomDetectionRuleOrgConfigurationResponse]
    def create_custom_detection_rule_org_configuration(params = {}, options = {})
      request = build_request(:create_custom_detection_rule_org_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a single GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.</p> <ul> <li> <p>When you don't specify any <code>features</code>, with an exception to <code>RUNTIME_MONITORING</code>, all the optional features are enabled by default.</p> </li> <li> <p>When you specify some of the <code>features</code>, any feature that is not specified in the API call gets enabled by default, with an exception to <code>RUNTIME_MONITORING</code>. </p> </li> </ul> <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>) and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. You can add only one of these two features because Runtime Monitoring already includes the threat detection for Amazon EKS resources. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::CreateDetectorRequest] params
    # @option params [Boolean] :enable
    #   <p>A Boolean value that specifies whether the detector is to be enabled.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [String] :finding_publishing_frequency
    #   <p>A value that specifies how frequently updated findings are exported.</p>
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be enabled for the detector.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new detector resource.</p>
    # @option params [Array<Types::DetectorFeatureConfiguration>] :features
    #   <p>A list of features that will be configured for the detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enable: false, # required
    #     client_token: "ClientToken",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION", "AI_ANALYST"],
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_id: "DetectorId",
    #     unprocessed_data_sources: {
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             reason: "String"
    #           }
    #         },
    #         service_role: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateDetectorResponse]
    def create_detector(params = {}, options = {})
      request = build_request(:create_detector, params)
      request.send_request(options)
    end

    # <p>Creates a filter using the specified finding criteria. The maximum number of saved filters per Amazon Web Services account per Region is 100. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html">Quotas for GuardDuty</a>.</p>
    # @param [Hash, Types::CreateFilterRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID associated with the GuardDuty account for which you want to create a filter.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :name
    #   <p>The name of the filter. Valid characters include period (.), underscore (_), dash (-), and alphanumeric characters. A whitespace is considered to be an invalid character.</p>
    # @option params [String] :description
    #   <p>The description of the filter. Valid characters include alphanumeric characters, and special characters such as hyphen, period, colon, underscore, parentheses (<code>{ }</code>, <code>[ ]</code>, and <code>( )</code>), forward slash, horizontal tab, vertical tab, newline, form feed, return, and whitespace.</p>
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p> <p>Default: NOOP</p>
    # @option params [Integer] :rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings. The following fields are available for filtering:</p> <ul> <li> <p>accountId</p> </li> <li> <p>arn</p> </li> <li> <p>associatedAttackSequenceArn</p> </li> <li> <p>confidence</p> </li> <li> <p>createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>id</p> </li> <li> <p>partition</p> </li> <li> <p>region</p> </li> <li> <p>resource.accessKeyDetails.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.accountId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.arn</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.attributes.mfaAuthenticated</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.ec2RoleDelivery</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.invokedBy</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.accountId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.arn</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.type</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.userName</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sourceIdentity</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.webIdFederationData.attributes</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.webIdFederationData.federatedProvider</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.type</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.userName</p> </li> <li> <p>resource.accessKeyDetails.userName</p> </li> <li> <p>resource.accessKeyDetails.userType</p> </li> <li> <p>resource.bedrockGuardrailDetails.guardrailArn</p> </li> <li> <p>resource.bedrockGuardrailDetails.guardrailVersion</p> </li> <li> <p>resource.containerDetails.containerRuntime</p> </li> <li> <p>resource.containerDetails.id</p> </li> <li> <p>resource.containerDetails.image</p> </li> <li> <p>resource.containerDetails.imagePrefix</p> </li> <li> <p>resource.containerDetails.name</p> </li> <li> <p>resource.containerDetails.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.containerDetails.securityContext.privileged</p> </li> <li> <p>resource.containerDetails.volumeMounts.mountPath</p> </li> <li> <p>resource.containerDetails.volumeMounts.name</p> </li> <li> <p>resource.ebsSnapshotDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.deviceName</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.encryptionType</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.kmsKeyArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeSizeInGB</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeType</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.deviceName</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.encryptionType</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.kmsKeyArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeSizeInGB</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeType</p> </li> <li> <p>resource.ec2ImageDetails.imageArn</p> </li> <li> <p>resource.ecsClusterDetails.activeServicesCount</p> </li> <li> <p>resource.ecsClusterDetails.arn</p> </li> <li> <p>resource.ecsClusterDetails.name</p> </li> <li> <p>resource.ecsClusterDetails.registeredContainerInstancesCount</p> </li> <li> <p>resource.ecsClusterDetails.runningTasksCount</p> </li> <li> <p>resource.ecsClusterDetails.status</p> </li> <li> <p>resource.ecsClusterDetails.tags.key</p> </li> <li> <p>resource.ecsClusterDetails.tags.value</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.arn</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.containerRuntime</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.id</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.image</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.imagePrefix</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.name</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.securityContext.privileged</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.volumeMounts.mountPath</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.volumeMounts.name</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.definitionArn</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.group</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.launchType</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.startedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.startedBy</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.tags.key</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.tags.value</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.version</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.volumes.hostPath.path</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.volumes.name</p> </li> <li> <p>resource.eksClusterDetails.arn</p> </li> <li> <p>resource.eksClusterDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.eksClusterDetails.name</p> </li> <li> <p>resource.eksClusterDetails.status</p> </li> <li> <p>resource.eksClusterDetails.tags.key</p> </li> <li> <p>resource.eksClusterDetails.tags.value</p> </li> <li> <p>resource.eksClusterDetails.vpcId</p> </li> <li> <p>resource.instanceDetails.availabilityZone</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.arn</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.id</p> </li> <li> <p>resource.instanceDetails.imageDescription</p> </li> <li> <p>resource.instanceDetails.imageId</p> </li> <li> <p>resource.instanceDetails.instanceId</p> </li> <li> <p>resource.instanceDetails.instanceState</p> </li> <li> <p>resource.instanceDetails.instanceType</p> </li> <li> <p>resource.instanceDetails.launchTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.networkInterfaceId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicIp</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.subnetId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.vpcId</p> </li> <li> <p>resource.instanceDetails.outpostArn</p> </li> <li> <p>resource.instanceDetails.platform</p> </li> <li> <p>resource.instanceDetails.productCodes.productCodeId</p> </li> <li> <p>resource.instanceDetails.productCodes.productCodeType</p> </li> <li> <p>resource.instanceDetails.tags.key</p> </li> <li> <p>resource.instanceDetails.tags.value</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.groups</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.impersonatedUser.groups</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.impersonatedUser.username</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.sessionName</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.uid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.username</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.containerRuntime</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.id</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.securityContext.privileged</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.volumeMounts.mountPath</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.volumeMounts.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostIpc</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostNetwork</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostPid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.namespace</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.serviceAccountName</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.type</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.uid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.volumes.hostPath.path</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.volumes.name</p> </li> <li> <p>resource.lambdaDetails.description</p> </li> <li> <p>resource.lambdaDetails.functionArn</p> </li> <li> <p>resource.lambdaDetails.functionName</p> </li> <li> <p>resource.lambdaDetails.functionVersion</p> </li> <li> <p>resource.lambdaDetails.lastModifiedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.lambdaDetails.revisionId</p> </li> <li> <p>resource.lambdaDetails.role</p> </li> <li> <p>resource.lambdaDetails.tags.key</p> </li> <li> <p>resource.lambdaDetails.tags.value</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.securityGroups.groupId</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.securityGroups.groupName</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.subnetIds</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.vpcId</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbClusterIdentifier</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbInstanceArn</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbInstanceIdentifier</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbSecurityGroups.name</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbSecurityGroups.status</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbiResourceId</p> </li> <li> <p>resource.rdsDbInstanceDetails.engine</p> </li> <li> <p>resource.rdsDbInstanceDetails.engineVersion</p> </li> <li> <p>resource.rdsDbInstanceDetails.iamDatabaseAuthenticationEnabled</p> </li> <li> <p>resource.rdsDbInstanceDetails.publiclyAccessible</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcId</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcSecurityGroups.status</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcSecurityGroups.vpcSecurityGroupId</p> </li> <li> <p>resource.rdsDbUserDetails.application</p> </li> <li> <p>resource.rdsDbUserDetails.authMethod</p> </li> <li> <p>resource.rdsDbUserDetails.database</p> </li> <li> <p>resource.rdsDbUserDetails.ssl</p> </li> <li> <p>resource.rdsDbUserDetails.user</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbClusterIdentifier</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupArn</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupIdentifier</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupResourceId</p> </li> <li> <p>resource.rdsLimitlessDbDetails.engine</p> </li> <li> <p>resource.rdsLimitlessDbDetails.engineVersion</p> </li> <li> <p>resource.rdsLimitlessDbDetails.tags.key</p> </li> <li> <p>resource.rdsLimitlessDbDetails.tags.value</p> </li> <li> <p>resource.recoveryPointDetails.backupVaultName</p> </li> <li> <p>resource.recoveryPointDetails.recoveryPointArn</p> </li> <li> <p>resource.resourceType</p> </li> <li> <p>resource.s3BucketDetails.arn</p> </li> <li> <p>resource.s3BucketDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.s3BucketDetails.defaultServerSideEncryption.encryptionType</p> </li> <li> <p>resource.s3BucketDetails.defaultServerSideEncryption.kmsMasterKeyArn</p> </li> <li> <p>resource.s3BucketDetails.name</p> </li> <li> <p>resource.s3BucketDetails.owner.id</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.effectivePermission</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.blockPublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.blockPublicPolicy</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.ignorePublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.restrictPublicBuckets</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.accessControlList.allowsPublicReadAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.accessControlList.allowsPublicWriteAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.blockPublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.blockPublicPolicy</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.ignorePublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.restrictPublicBuckets</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.bucketPolicy.allowsPublicReadAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.bucketPolicy.allowsPublicWriteAccess</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.eTag</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.hash</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.key</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.objectArn</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.versionId</p> </li> <li> <p>resource.s3BucketDetails.tags.key</p> </li> <li> <p>resource.s3BucketDetails.tags.value</p> </li> <li> <p>resource.s3BucketDetails.type</p> </li> <li> <p>schemaVersion</p> </li> <li> <p>service.action.actionType</p> </li> <li> <p>service.action.awsApiCallAction.api</p> </li> <li> <p>service.action.awsApiCallAction.callerType</p> </li> <li> <p>service.action.awsApiCallAction.domainDetails.domain</p> </li> <li> <p>service.action.awsApiCallAction.errorCode</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.accountId</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.affiliated</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.awsServiceName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.awsApiCallAction.serviceName</p> </li> <li> <p>service.action.awsApiCallAction.userAgent</p> </li> <li> <p>service.action.dnsRequestAction.blocked</p> </li> <li> <p>service.action.dnsRequestAction.domain</p> </li> <li> <p>service.action.dnsRequestAction.domainWithSuffix</p> </li> <li> <p>service.action.dnsRequestAction.protocol</p> </li> <li> <p>service.action.dnsRequestAction.vpcOwnerAccountId</p> </li> <li> <p>service.action.kubernetesApiCallAction.namespace</p> </li> <li> <p>service.action.kubernetesApiCallAction.parameters</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.kubernetesApiCallAction.requestUri</p> </li> <li> <p>service.action.kubernetesApiCallAction.resource</p> </li> <li> <p>service.action.kubernetesApiCallAction.resourceName</p> </li> <li> <p>service.action.kubernetesApiCallAction.sourceIPs</p> </li> <li> <p>service.action.kubernetesApiCallAction.statusCode</p> </li> <li> <p>service.action.kubernetesApiCallAction.subresource</p> </li> <li> <p>service.action.kubernetesApiCallAction.userAgent</p> </li> <li> <p>service.action.kubernetesApiCallAction.verb</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.allowed</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.namespace</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.resource</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.verb</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.kind</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.name</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.roleRefKind</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.roleRefName</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.uid</p> </li> <li> <p>service.action.kubernetesRoleDetails.kind</p> </li> <li> <p>service.action.kubernetesRoleDetails.name</p> </li> <li> <p>service.action.kubernetesRoleDetails.uid</p> </li> <li> <p>service.action.networkConnectionAction.blocked</p> </li> <li> <p>service.action.networkConnectionAction.connectionDirection</p> </li> <li> <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.localIpDetails.ipAddressV6</p> </li> <li> <p>service.action.networkConnectionAction.localNetworkInterface</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.portName</p> </li> <li> <p>service.action.networkConnectionAction.protocol</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.portName</p> </li> <li> <p>service.action.portProbeAction.blocked</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localIpDetails.ipAddressV4</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localIpDetails.ipAddressV6</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localPortDetails.port</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localPortDetails.portName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.application</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.failedLoginAttempts</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.successfulLoginAttempts</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.user</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.additionalInfo.agentDetails.agentId</p> </li> <li> <p>service.additionalInfo.agentDetails.agentVersion</p> </li> <li> <p>service.additionalInfo.anomalies.anomalousAPIs</p> </li> <li> <p>service.additionalInfo.authenticationMethod</p> </li> <li> <p>service.additionalInfo.averagePacketSizeIn</p> </li> <li> <p>service.additionalInfo.averagePacketSizeOut</p> </li> <li> <p>service.additionalInfo.context</p> </li> <li> <p>service.additionalInfo.domain</p> </li> <li> <p>service.additionalInfo.inBytes</p> </li> <li> <p>service.additionalInfo.localNetworkInterfaceOwner</p> </li> <li> <p>service.additionalInfo.localPort</p> </li> <li> <p>service.additionalInfo.outBytes</p> </li> <li> <p>service.additionalInfo.packetsIn</p> </li> <li> <p>service.additionalInfo.packetsOut</p> </li> <li> <p>service.additionalInfo.policyArn</p> </li> <li> <p>service.additionalInfo.policyName</p> </li> <li> <p>service.additionalInfo.remotePort</p> </li> <li> <p>service.additionalInfo.sample</p> </li> <li> <p>service.additionalInfo.scannedPort</p> </li> <li> <p>service.additionalInfo.threatFileSha256</p> </li> <li> <p>service.additionalInfo.threatListName</p> </li> <li> <p>service.additionalInfo.threatName</p> </li> <li> <p>service.additionalInfo.totalBytesIn</p> </li> <li> <p>service.additionalInfo.totalBytesOut</p> </li> <li> <p>service.additionalInfo.type</p> </li> <li> <p>service.additionalInfo.unusual.asnOrg</p> </li> <li> <p>service.additionalInfo.unusual.port</p> </li> <li> <p>service.additionalInfo.unusualProtocol</p> </li> <li> <p>service.additionalInfo.userAgent.fullUserAgent</p> </li> <li> <p>service.additionalInfo.userAgent.userAgentCategory</p> </li> <li> <p>service.additionalInfo.value</p> </li> <li> <p>service.additionalInfo.vpcOwnerAccountId</p> </li> <li> <p>service.archived</p> </li> <li> <p>service.count</p> </li> <li> <p>service.detection.sequence.actors.id</p> </li> <li> <p>service.detection.sequence.actors.process.name</p> </li> <li> <p>service.detection.sequence.actors.process.path</p> </li> <li> <p>service.detection.sequence.actors.process.sha256</p> </li> <li> <p>service.detection.sequence.actors.session.createdTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.actors.session.issuer</p> </li> <li> <p>service.detection.sequence.actors.session.mfaStatus</p> </li> <li> <p>service.detection.sequence.actors.session.uid</p> </li> <li> <p>service.detection.sequence.actors.user.account.account</p> </li> <li> <p>service.detection.sequence.actors.user.account.uid</p> </li> <li> <p>service.detection.sequence.actors.user.credentialUid</p> </li> <li> <p>service.detection.sequence.actors.user.name</p> </li> <li> <p>service.detection.sequence.actors.user.type</p> </li> <li> <p>service.detection.sequence.actors.user.uid</p> </li> <li> <p>service.detection.sequence.additionalSequenceTypes</p> </li> <li> <p>service.detection.sequence.description</p> </li> <li> <p>service.detection.sequence.endpoints.autonomousSystem.name</p> </li> <li> <p>service.detection.sequence.endpoints.autonomousSystem.number</p> </li> <li> <p>service.detection.sequence.endpoints.connection.direction</p> </li> <li> <p>service.detection.sequence.endpoints.domain</p> </li> <li> <p>service.detection.sequence.endpoints.id</p> </li> <li> <p>service.detection.sequence.endpoints.ip</p> </li> <li> <p>service.detection.sequence.endpoints.location.city</p> </li> <li> <p>service.detection.sequence.endpoints.location.country</p> </li> <li> <p>service.detection.sequence.endpoints.location.lat</p> </li> <li> <p>service.detection.sequence.endpoints.location.lon</p> </li> <li> <p>service.detection.sequence.endpoints.port</p> </li> <li> <p>service.detection.sequence.resources.accountId</p> </li> <li> <p>service.detection.sequence.resources.cloudPartition</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.principalId</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.userName</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.userType</p> </li> <li> <p>service.detection.sequence.resources.data.autoscalingAutoScalingGroup.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.cloudformationStack.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.container.image</p> </li> <li> <p>service.detection.sequence.resources.data.container.imageUid</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Image.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.availabilityZone</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.ec2NetworkInterfaceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.iamInstanceProfile.arn</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.iamInstanceProfile.id</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.imageDescription</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.instanceState</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.instanceType</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.outpostArn</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.platform</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.productCodes.productCodeId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.productCodes.productCodeType</p> </li> <li> <p>service.detection.sequence.resources.data.ec2LaunchTemplate.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2LaunchTemplate.version</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.ipv6Addresses</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.privateIpAddresses.privateDnsName</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.privateIpAddresses.privateIpAddress</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.publicIp</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.securityGroups.groupId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.securityGroups.groupName</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.subNetId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.vpcId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Vpc.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsCluster.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsCluster.status</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.containerUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.launchType</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.taskDefinitionArn</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.arn</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.status</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.vpcId</p> </li> <li> <p>service.detection.sequence.resources.data.iamInstanceProfile.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.iamInstanceProfile.id</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.containerUids</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.namespace</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.type</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicAclAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicAclIgnoreBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicBucketRestrictBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicPolicyAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicAclAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicAclIgnoreBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicBucketRestrictBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicPolicyAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.effectivePermission</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.encryptionKeyArn</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.encryptionType</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.ownerId</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.publicReadAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.publicWriteAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.s3ObjectUids</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.eTag</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.key</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.versionId</p> </li> <li> <p>service.detection.sequence.resources.name</p> </li> <li> <p>service.detection.sequence.resources.region</p> </li> <li> <p>service.detection.sequence.resources.resourceType</p> </li> <li> <p>service.detection.sequence.resources.service</p> </li> <li> <p>service.detection.sequence.resources.tags.key</p> </li> <li> <p>service.detection.sequence.resources.tags.value</p> </li> <li> <p>service.detection.sequence.resources.uid</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.key</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.title</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.values</p> </li> <li> <p>service.detection.sequence.signals.actorIds</p> </li> <li> <p>service.detection.sequence.signals.count</p> </li> <li> <p>service.detection.sequence.signals.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.description</p> </li> <li> <p>service.detection.sequence.signals.endpointIds</p> </li> <li> <p>service.detection.sequence.signals.firstSeenAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.lastSeenAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.name</p> </li> <li> <p>service.detection.sequence.signals.resourceUids</p> </li> <li> <p>service.detection.sequence.signals.severity</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.key</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.title</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.values</p> </li> <li> <p>service.detection.sequence.signals.type</p> </li> <li> <p>service.detection.sequence.signals.uid</p> </li> <li> <p>service.detection.sequence.signals.updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.uid</p> </li> <li> <p>service.detectorId</p> </li> <li> <p>service.ebsVolumeScanDetails.scanCompletedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.count</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.severity</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.threatName</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.files</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.totalGb</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.volumes</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.itemCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.shortened</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.fileName</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.filePath</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.volumeArn</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.itemCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.uniqueThreatNameCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatsDetectedItemCount.files</p> </li> <li> <p>service.ebsVolumeScanDetails.scanId</p> </li> <li> <p>service.ebsVolumeScanDetails.scanStartedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.ebsVolumeScanDetails.scanType</p> </li> <li> <p>service.ebsVolumeScanDetails.sources</p> </li> <li> <p>service.ebsVolumeScanDetails.triggerFindingId</p> </li> <li> <p>service.eventFirstSeen</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.eventLastSeen</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatFileSha256</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatListName</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatNames</p> </li> <li> <p>service.featureName</p> </li> <li> <p>service.malwareScanDetails.scanCategory</p> </li> <li> <p>service.malwareScanDetails.scanConfiguration.incrementalScanDetails.baselineResourceArn</p> </li> <li> <p>service.malwareScanDetails.scanConfiguration.triggerType</p> </li> <li> <p>service.malwareScanDetails.scanId</p> </li> <li> <p>service.malwareScanDetails.scanType</p> </li> <li> <p>service.malwareScanDetails.threats.count</p> </li> <li> <p>service.malwareScanDetails.threats.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.additionalInfo.deviceName</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.additionalInfo.versionId</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.itemPath</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.resourceArn</p> </li> <li> <p>service.malwareScanDetails.threats.itemPaths.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemPaths.nestedItemPath</p> </li> <li> <p>service.malwareScanDetails.threats.name</p> </li> <li> <p>service.malwareScanDetails.threats.source</p> </li> <li> <p>service.malwareScanDetails.uniqueThreatCount</p> </li> <li> <p>service.resourceRole</p> </li> <li> <p>service.runtimeDetails.context.addressFamily</p> </li> <li> <p>service.runtimeDetails.context.commandLineExample</p> </li> <li> <p>service.runtimeDetails.context.fileOperation</p> </li> <li> <p>service.runtimeDetails.context.filePath</p> </li> <li> <p>service.runtimeDetails.context.fileSystemType</p> </li> <li> <p>service.runtimeDetails.context.flags</p> </li> <li> <p>service.runtimeDetails.context.ianaProtocolNumber</p> </li> <li> <p>service.runtimeDetails.context.ldPreloadValue</p> </li> <li> <p>service.runtimeDetails.context.libraryPath</p> </li> <li> <p>service.runtimeDetails.context.memoryRegions</p> </li> <li> <p>service.runtimeDetails.context.modifiedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.euid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.executablePath</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.executableSha256</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.euid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.name</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.pid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.userId</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.name</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.pid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.pwd</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.user</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.userId</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.uuid</p> </li> <li> <p>service.runtimeDetails.context.moduleFilePath</p> </li> <li> <p>service.runtimeDetails.context.moduleName</p> </li> <li> <p>service.runtimeDetails.context.moduleSha256</p> </li> <li> <p>service.runtimeDetails.context.mountSource</p> </li> <li> <p>service.runtimeDetails.context.mountTarget</p> </li> <li> <p>service.runtimeDetails.context.relatedFilePaths</p> </li> <li> <p>service.runtimeDetails.context.releaseAgentPath</p> </li> <li> <p>service.runtimeDetails.context.runcBinaryPath</p> </li> <li> <p>service.runtimeDetails.context.scriptPath</p> </li> <li> <p>service.runtimeDetails.context.serviceName</p> </li> <li> <p>service.runtimeDetails.context.shellHistoryFilePath</p> </li> <li> <p>service.runtimeDetails.context.socketPath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.euid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.executablePath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.executableSha256</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.euid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.name</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.pid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.userId</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.name</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.pid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.pwd</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.user</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.userId</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.uuid</p> </li> <li> <p>service.runtimeDetails.context.threatFilePath</p> </li> <li> <p>service.runtimeDetails.context.toolCategory</p> </li> <li> <p>service.runtimeDetails.context.toolName</p> </li> <li> <p>service.runtimeDetails.process.euid</p> </li> <li> <p>service.runtimeDetails.process.executablePath</p> </li> <li> <p>service.runtimeDetails.process.executableSha256</p> </li> <li> <p>service.runtimeDetails.process.lineage.euid</p> </li> <li> <p>service.runtimeDetails.process.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.process.lineage.name</p> </li> <li> <p>service.runtimeDetails.process.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.process.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.process.lineage.pid</p> </li> <li> <p>service.runtimeDetails.process.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.process.lineage.userId</p> </li> <li> <p>service.runtimeDetails.process.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.process.name</p> </li> <li> <p>service.runtimeDetails.process.namespacePid</p> </li> <li> <p>service.runtimeDetails.process.parentUuid</p> </li> <li> <p>service.runtimeDetails.process.pid</p> </li> <li> <p>service.runtimeDetails.process.pwd</p> </li> <li> <p>service.runtimeDetails.process.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.process.user</p> </li> <li> <p>service.runtimeDetails.process.userId</p> </li> <li> <p>service.runtimeDetails.process.uuid</p> </li> <li> <p>service.serviceName</p> </li> <li> <p>service.userFeedback</p> </li> <li> <p>severity</p> <p>To configure severity based filters, use the following for the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html">FindingCriteria</a> condition:</p> <ul> <li> <p> <b>Low</b>: <code>["1", "2", "3"]</code> </p> </li> <li> <p> <b>Medium</b>: <code>["4", "5", "6"]</code> </p> </li> <li> <p> <b>High</b>: <code>["7", "8"]</code> </p> </li> <li> <p> <b>Critical</b>: <code>["9", "10"]</code> </p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html">Findings severity levels</a> in the <i>Amazon GuardDuty User Guide</i>.</p> </li> <li> <p>type</p> </li> <li> <p>updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> </ul>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new filter resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     name: "FilterName", # required
    #     description: "FilterDescription",
    #     action: "NOOP" # One of: ["NOOP", "ARCHIVE"],
    #     rank: 1,
    #     finding_criteria: { # required
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #           matches: ["Match"],
    #           not_matches: ["NotMatch"]
    #         }
    #       }
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FilterName", # required
    #   }
    # @return [Types::CreateFilterResponse]
    def create_filter(params = {}, options = {})
      request = build_request(:create_filter, params)
      request.send_request(options)
    end

    # <p>Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with Amazon Web Services infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the administrator account can use this operation.</p>
    # @param [Hash, Types::CreateIPSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create an IPSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :name
    #   <p>The user-friendly name to identify the IPSet.</p> <p> Allowed characters are alphanumeric, whitespace, dash (-), and underscores (_).</p>
    # @option params [String] :format
    #   <p>The format of the file that contains the IPSet.</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the IPSet. </p>
    # @option params [Boolean] :activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new IP set resource.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     expected_bucket_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_set_id: "String", # required
    #   }
    # @return [Types::CreateIPSetResponse]
    def create_ip_set(params = {}, options = {})
      request = build_request(:create_ip_set, params)
      request.send_request(options)
    end

    # <p>This API is currently available as a preview. During the preview, you can initiate up to 10 investigations per account per day, with a total limit of 100 investigations per account. This feature is available in the following Amazon Web Services Regions: US East (N. Virginia), US East (Ohio), US West (Oregon), Canada (Central), Europe (Frankfurt), Europe (Ireland), Europe (London), Europe (Paris), Europe (Stockholm), and Asia Pacific (Tokyo).</p> <p>Initiates a GuardDuty investigation that automatically analyzes security findings, correlates related activity, performs account-level analysis, and produces a structured investigation summary with recommended next steps.</p> <p>Only the administrator account can create an investigation. Member accounts don't have permission to create investigations from their accounts.</p> <p>To use this operation, the <code>AI_ANALYST</code> feature must be enabled on your detector.</p> <p>This feature uses Amazon Bedrock models that leverage Cross-Region Inference (CRIS), which automatically selects the optimal Amazon Web Services Region within your geography to process the investigation analysis and generate the investigation report. This maximizes available compute resources, model availability, and delivers the best customer experience. Your data remains stored only in the Region where the investigation request originates, however, investigation data and summary results may be processed outside that Region. All data is transmitted encrypted across Amazon's secure network. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-investigation.html">GuardDuty Investigation</a>.</p>
    # @param [Hash, Types::CreateInvestigationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector for the account in which the investigation is created.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :trigger_prompt
    #   <p>A natural-language description of what to investigate. For example:</p> <ul> <li> <p> <code>"Investigate finding 1ab2c3d4e5f6a7b8c9d0e1f2a3b4c5d6 in account 123456789012"</code> </p> </li> <li> <p> <code>"Analyze findings in account with id 123456789012"</code> </p> </li> <li> <p> <code>"Analyze findings in my organization"</code> </p> </li> </ul>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     trigger_prompt: "TriggerPrompt", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_investigation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     investigation_id: "InvestigationId", # required
    #   }
    # @return [Types::CreateInvestigationResponse]
    def create_investigation(params = {}, options = {})
      request = build_request(:create_investigation, params)
      request.send_request(options)
    end

    # <p>Creates a new Malware Protection plan for the protected resource.</p> <p>When you create a Malware Protection plan, the Amazon Web Services service terms for GuardDuty Malware Protection apply. For more information, see <a href="http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty">Amazon Web Services service terms for GuardDuty Malware Protection</a>.</p>
    # @param [Hash, Types::CreateMalwareProtectionPlanRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [String] :role
    #   <p>Amazon Resource Name (ARN) of the IAM role that has the permissions to scan and add tags to the associated protected resource.</p>
    # @option params [Types::CreateProtectedResource] :protected_resource
    #   <p>Information about the protected resource that is associated with the created Malware Protection plan. Presently, <code>S3Bucket</code> is the only supported protected resource.</p>
    # @option params [Types::MalwareProtectionPlanActions] :actions
    #   <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags added to the Malware Protection plan resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     role: "String", # required
    #     protected_resource: { # required
    #       s3_bucket: {
    #         bucket_name: "String",
    #         object_prefixes: ["String"]
    #       }
    #     },
    #     actions: {
    #       tagging: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_malware_protection_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     malware_protection_plan_id: "String"
    #   }
    # @return [Types::CreateMalwareProtectionPlanResponse]
    def create_malware_protection_plan(params = {}, options = {})
      request = build_request(:create_malware_protection_plan, params)
      request.send_request(options)
    end

    # <p>Creates member accounts of the current Amazon Web Services account by specifying a list of Amazon Web Services account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization.</p> <p>As a delegated administrator, using <code>CreateMembers</code> will enable GuardDuty in the added member accounts, with the exception of the organization delegated administrator account. A delegated administrator must enable GuardDuty prior to being added as a member.</p> <p>When you use CreateMembers as an Organizations delegated administrator, GuardDuty applies your organization's auto-enable settings to the member accounts in this request, irrespective of the accounts being new or existing members. For more information about the existing auto-enable settings for your organization, see <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html">DescribeOrganizationConfiguration</a>.</p> <p>If you disassociate a member account that was added by invitation, the member account details obtained from this API, including the associated email addresses, will be retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API. </p> <p>When the member accounts added through Organizations are later disassociated, you (administrator) can't invite them by calling the InviteMembers API. You can create an association with these member accounts again only by calling the CreateMembers API.</p>
    # @param [Hash, Types::CreateMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to associate member accounts.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<Types::AccountDetail>] :account_details
    #   <p>A list of account ID and email address pairs of the accounts that you want to associate with the GuardDuty administrator account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "Email", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateMembersResponse]
    def create_members(params = {}, options = {})
      request = build_request(:create_members, params)
      request.send_request(options)
    end

    # <p>Creates a publishing destination where you can export your GuardDuty findings. Before you start exporting the findings, the destination resource must exist.</p>
    # @param [Hash, Types::CreatePublishingDestinationRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the GuardDuty detector associated with the publishing destination.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :destination_type
    #   <p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.</p>
    # @option params [Types::DestinationProperties] :destination_properties
    #   <p>The properties of the publishing destination, including the ARNs for the destination and the KMS key used for encryption.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new publishing destination resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     destination_type: "S3" # One of: ["S3"], # required
    #     destination_properties: { # required
    #       destination_arn: "String",
    #       kms_key_arn: "String"
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_publishing_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_id: "String", # required
    #   }
    # @return [Types::CreatePublishingDestinationResponse]
    def create_publishing_destination(params = {}, options = {})
      request = build_request(:create_publishing_destination, params)
      request.send_request(options)
    end

    # <p>Generates sample findings of types specified by the list of finding types. If 'NULL' is specified for <code>findingTypes</code>, the API generates sample findings of all supported finding types.</p>
    # @param [Hash, Types::CreateSampleFindingsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector for which you need to create sample findings.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_types
    #   <p>The types of sample findings to generate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_types: ["FindingType"]
    #   }
    #   options = {}
    #   response = client.create_sample_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSampleFindingsResponse]
    def create_sample_findings(params = {}, options = {})
      request = build_request(:create_sample_findings, params)
      request.send_request(options)
    end

    # <p>Creates a new threat entity set. In a threat entity set, you can provide known malicious threat entities for your Amazon Web Services environment. GuardDuty generates findings based on the entries in the threat entity sets. Only users of the administrator account can manage entity sets, which automatically apply to member accounts.</p>
    # @param [Hash, Types::CreateThreatEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create a threat entity set.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :name
    #   <p>A user-friendly name to identify the threat entity set.</p> <p>The name of your list can include lowercase letters, uppercase letters, numbers, dash (-), and underscore (_).</p>
    # @option params [String] :format
    #   <p>The format of the file that contains the threat entity set.</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the threat entity set. The format of the <code>Location</code> URL must be a valid Amazon S3 URL format. Invalid URL formats will result in an error, regardless of whether you activate the entity set or not. For more information about format of the location URLs, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html">Format of location URL under Step 2: Adding trusted or threat intelligence data</a> in the <i>Amazon GuardDuty User Guide</i>.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @option params [Boolean] :activate
    #   <p>A boolean value that indicates whether GuardDuty should start using the uploaded threat entity set to generate findings.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new threat entity set resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_threat_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_entity_set_id: "String", # required
    #   }
    # @return [Types::CreateThreatEntitySetResponse]
    def create_threat_entity_set(params = {}, options = {})
      request = build_request(:create_threat_entity_set, params)
      request.send_request(options)
    end

    # <p>Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the administrator account can use this operation.</p>
    # @param [Hash, Types::CreateThreatIntelSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create a <code>threatIntelSet</code>.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :name
    #   <p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.</p>
    # @option params [String] :format
    #   <p>The format of the file that contains the ThreatIntelSet.</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the ThreatIntelSet. </p>
    # @option params [Boolean] :activate
    #   <p>A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new threat list resource.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     expected_bucket_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_threat_intel_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_intel_set_id: "String", # required
    #   }
    # @return [Types::CreateThreatIntelSetResponse]
    def create_threat_intel_set(params = {}, options = {})
      request = build_request(:create_threat_intel_set, params)
      request.send_request(options)
    end

    # <p>Creates a new trusted entity set. In the trusted entity set, you can provide IP addresses and domains that you believe are secure for communication in your Amazon Web Services environment. GuardDuty will not generate findings for the entries that are specified in a trusted entity set. At any given time, you can have only one trusted entity set. </p> <p>Only users of the administrator account can manage the entity sets, which automatically apply to member accounts.</p>
    # @param [Hash, Types::CreateTrustedEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account for which you want to create a trusted entity set.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :name
    #   <p>A user-friendly name to identify the trusted entity set.</p> <p>The name of your list can include lowercase letters, uppercase letters, numbers, dash (-), and underscore (_).</p>
    # @option params [String] :format
    #   <p>The format of the file that contains the trusted entity set.</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the threat entity set. The format of the <code>Location</code> URL must be a valid Amazon S3 URL format. Invalid URL formats will result in an error, regardless of whether you activate the entity set or not. For more information about format of the location URLs, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html">Format of location URL under Step 2: Adding trusted or threat intelligence data</a> in the <i>Amazon GuardDuty User Guide</i>.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @option params [Boolean] :activate
    #   <p>A boolean value that indicates whether GuardDuty is to start using the uploaded trusted entity set.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a new trusted entity set resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_trusted_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusted_entity_set_id: "String", # required
    #   }
    # @return [Types::CreateTrustedEntitySetResponse]
    def create_trusted_entity_set(params = {}, options = {})
      request = build_request(:create_trusted_entity_set, params)
      request.send_request(options)
    end

    # <p>Declines invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.</p>
    # @param [Hash, Types::DeclineInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member account that you want to decline invitations from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.decline_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::DeclineInvitationsResponse]
    def decline_invitations(params = {}, options = {})
      request = build_request(:decline_invitations, params)
      request.send_request(options)
    end

    # <p>Disables a custom detection rule by deleting its association. This operation is idempotent.</p>
    # @param [Hash, Types::DeleteCustomDetectionRuleAssociationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :association_id
    #   <p>The unique identifier for the association to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_detection_rule_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomDetectionRuleAssociationResponse]
    def delete_custom_detection_rule_association(params = {}, options = {})
      request = build_request(:delete_custom_detection_rule_association, params)
      request.send_request(options)
    end

    # <p>Deletes the organization-level configuration for a custom detection rule. This operation is available only to the delegated administrator account.</p>
    # @param [Hash, Types::DeleteCustomDetectionRuleOrgConfigurationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :mode
    #   <p>The execution mode of the organization configuration to delete. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #   }
    #   options = {}
    #   response = client.delete_custom_detection_rule_org_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomDetectionRuleOrgConfigurationResponse]
    def delete_custom_detection_rule_org_configuration(params = {}, options = {})
      request = build_request(:delete_custom_detection_rule_org_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon GuardDuty detector that is specified by the detector ID.</p>
    # @param [Hash, Types::DeleteDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that you want to delete.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.delete_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDetectorResponse]
    def delete_detector(params = {}, options = {})
      request = build_request(:delete_detector, params)
      request.send_request(options)
    end

    # <p>Deletes the filter specified by the filter name.</p>
    # @param [Hash, Types::DeleteFilterRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the filter.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :filter_name
    #   <p>The name of the filter that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFilterResponse]
    def delete_filter(params = {}, options = {})
      request = build_request(:delete_filter, params)
      request.send_request(options)
    end

    # <p>Deletes the IPSet specified by the <code>ipSetId</code>. IPSets are called trusted IP lists in the console user interface.</p>
    # @param [Hash, Types::DeleteIPSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the IPSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :ip_set_id
    #   <p>The unique ID of the IPSet to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIPSetResponse]
    def delete_ip_set(params = {}, options = {})
      request = build_request(:delete_ip_set, params)
      request.send_request(options)
    end

    # <p>Deletes invitations sent to the current member account by Amazon Web Services accounts specified by their account IDs.</p>
    # @param [Hash, Types::DeleteInvitationsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the Amazon Web Services accounts that sent invitations to the current member account that you want to delete invitations from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.delete_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInvitationsResponse]
    def delete_invitations(params = {}, options = {})
      request = build_request(:delete_invitations, params)
      request.send_request(options)
    end

    # <p>Deletes the Malware Protection plan ID associated with the Malware Protection plan resource. Use this API only when you no longer want to protect the resource associated with this Malware Protection plan ID.</p>
    # @param [Hash, Types::DeleteMalwareProtectionPlanRequest] params
    # @option params [String] :malware_protection_plan_id
    #   <p>A unique identifier associated with Malware Protection plan resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     malware_protection_plan_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_malware_protection_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_malware_protection_plan(params = {}, options = {})
      request = build_request(:delete_malware_protection_plan, params)
      request.send_request(options)
    end

    # <p>Deletes GuardDuty member accounts (to the current GuardDuty administrator account) specified by the account IDs.</p> <p>With <code>autoEnableOrganizationMembers</code> configuration for your organization set to <code>ALL</code>, you'll receive an error if you attempt to disable GuardDuty for a member account in your organization.</p>
    # @param [Hash, Types::DeleteMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to delete.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.delete_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::DeleteMembersResponse]
    def delete_members(params = {}, options = {})
      request = build_request(:delete_members, params)
      request.send_request(options)
    end

    # <p>Deletes the publishing definition with the specified <code>destinationId</code>.</p>
    # @param [Hash, Types::DeletePublishingDestinationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to delete.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_publishing_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePublishingDestinationResponse]
    def delete_publishing_destination(params = {}, options = {})
      request = build_request(:delete_publishing_destination, params)
      request.send_request(options)
    end

    # <p>Deletes the threat entity set that is associated with the specified <code>threatEntitySetId</code>.</p>
    # @param [Hash, Types::DeleteThreatEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the threat entity set resource.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_entity_set_id
    #   <p>The unique ID that helps GuardDuty identify which threat entity set needs to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_threat_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThreatEntitySetResponse]
    def delete_threat_entity_set(params = {}, options = {})
      request = build_request(:delete_threat_entity_set, params)
      request.send_request(options)
    end

    # <p>Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.</p>
    # @param [Hash, Types::DeleteThreatIntelSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_threat_intel_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThreatIntelSetResponse]
    def delete_threat_intel_set(params = {}, options = {})
      request = build_request(:delete_threat_intel_set, params)
      request.send_request(options)
    end

    # <p>Deletes the trusted entity set that is associated with the specified <code>trustedEntitySetId</code>.</p>
    # @param [Hash, Types::DeleteTrustedEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the trusted entity set resource.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :trusted_entity_set_id
    #   <p>The unique ID that helps GuardDuty identify which trusted entity set needs to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_trusted_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrustedEntitySetResponse]
    def delete_trusted_entity_set(params = {}, options = {})
      request = build_request(:delete_trusted_entity_set, params)
      request.send_request(options)
    end

    # <p>Returns a list of malware scans. Each member account can view the malware scans for their own accounts. An administrator can view the malware scans for all the member accounts.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::DescribeMalwareScansRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that the request is associated with.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [Types::FilterCriteria] :filter_criteria
    #   <p>Represents the criteria to be used in the filter for describing scan entries.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting scan entries. The <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_SortCriteria.html#guardduty-Type-SortCriteria-attributeName"> <code>attributeName</code> </a> is required and it must be <code>scanStartTime</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "EC2_INSTANCE_ARN" # One of: ["EC2_INSTANCE_ARN", "SCAN_ID", "ACCOUNT_ID", "GUARDDUTY_FINDING_ID", "SCAN_START_TIME", "SCAN_STATUS", "SCAN_TYPE"],
    #           filter_condition: {
    #             equals_value: "NonEmptyString",
    #             greater_than: 1,
    #             less_than: 1
    #           }
    #         }
    #       ]
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.describe_malware_scans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scans: [ # required
    #       {
    #         detector_id: "DetectorId",
    #         admin_detector_id: "DetectorId",
    #         scan_id: "NonEmptyString",
    #         scan_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED", "SKIPPED"],
    #         failure_reason: "NonEmptyString",
    #         scan_start_time: Time.now,
    #         scan_end_time: Time.now,
    #         trigger_details: {
    #           guard_duty_finding_id: "NonEmptyString",
    #           description: "NonEmptyString",
    #           trigger_type: "BACKUP" # One of: ["BACKUP", "GUARDDUTY"]
    #         },
    #         resource_details: {
    #           instance_arn: "InstanceArn"
    #         },
    #         scan_result_details: {
    #           scan_result: "CLEAN" # One of: ["CLEAN", "INFECTED"]
    #         },
    #         account_id: "AccountId",
    #         total_bytes: 1,
    #         file_count: 1,
    #         attached_volumes: [
    #           {
    #             volume_arn: "String",
    #             volume_type: "String",
    #             device_name: "String",
    #             volume_size_in_gb: 1,
    #             encryption_type: "String",
    #             snapshot_arn: "String",
    #             kms_key_arn: "String"
    #           }
    #         ],
    #         scan_type: "GUARDDUTY_INITIATED" # One of: ["GUARDDUTY_INITIATED", "ON_DEMAND"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeMalwareScansResponse]
    def describe_malware_scans(params = {}, options = {})
      request = build_request(:describe_malware_scans, params)
      request.send_request(options)
    end

    # <p>Returns information about the account selected as the delegated administrator for GuardDuty.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::DescribeOrganizationConfigurationRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID of the delegated administrator for which you need to retrieve the information.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill <code>nextToken</code> in the request with the value of <code>NextToken</code> from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_enable: false,
    #     member_account_limit_reached: false, # required
    #     data_sources: {
    #       s3_logs: { # required
    #         auto_enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           auto_enable: false, # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: {
    #             auto_enable: false
    #           }
    #         }
    #       }
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION"],
    #         auto_enable: "NEW" # One of: ["NEW", "NONE", "ALL"],
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             auto_enable: "NEW" # One of: ["NEW", "NONE", "ALL"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "String",
    #     auto_enable_organization_members: "NEW" # One of: ["NEW", "ALL", "NONE"]
    #   }
    # @return [Types::DescribeOrganizationConfigurationResponse]
    def describe_organization_configuration(params = {}, options = {})
      request = build_request(:describe_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about the publishing destination specified by the provided <code>destinationId</code>.</p>
    # @param [Hash, Types::DescribePublishingDestinationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the publishing destination to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   }
    #   options = {}
    #   response = client.describe_publishing_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_id: "String", # required
    #     destination_type: "S3" # One of: ["S3"], # required
    #     status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"], # required
    #     publishing_failure_start_timestamp: 1, # required
    #     destination_properties: { # required
    #       destination_arn: "String",
    #       kms_key_arn: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribePublishingDestinationResponse]
    def describe_publishing_destination(params = {}, options = {})
      request = build_request(:describe_publishing_destination, params)
      request.send_request(options)
    end

    # <p>Removes the existing GuardDuty delegated administrator of the organization. Only the organization's management account can run this API operation.</p>
    # @param [Hash, Types::DisableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services Account ID for the organizations account to be disabled as a GuardDuty delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "String", # required
    #   }
    #   options = {}
    #   response = client.disable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisableOrganizationAdminAccountResponse]
    def disable_organization_admin_account(params = {}, options = {})
      request = build_request(:disable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Disassociates the current GuardDuty member account from its administrator account.</p> <p>When you disassociate an invited member from a GuardDuty delegated administrator, the member account details obtained from the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">CreateMembers</a> API, including the associated email addresses, are retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API. </p> <p>With <code>autoEnableOrganizationMembers</code> configuration for your organization set to <code>ALL</code>, you'll receive an error if you attempt to disable GuardDuty in a member account.</p>
    # @param [Hash, Types::DisassociateFromAdministratorAccountRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_from_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFromAdministratorAccountResponse]
    def disassociate_from_administrator_account(params = {}, options = {})
      request = build_request(:disassociate_from_administrator_account, params)
      request.send_request(options)
    end

    # <p>Disassociates the current GuardDuty member account from its administrator account.</p> <p>When you disassociate an invited member from a GuardDuty delegated administrator, the member account details obtained from the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">CreateMembers</a> API, including the associated email addresses, are retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API.</p>
    # @param [Hash, Types::DisassociateFromMasterAccountRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_from_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This operation is deprecated, use DisassociateFromAdministratorAccount instead
    # @return [Types::DisassociateFromMasterAccountResponse]
    def disassociate_from_master_account(params = {}, options = {})
      request = build_request(:disassociate_from_master_account, params)
      request.send_request(options)
    end

    # <p>Disassociates GuardDuty member accounts (from the current administrator account) specified by the account IDs.</p> <p>When you disassociate an invited member from a GuardDuty delegated administrator, the member account details obtained from the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">CreateMembers</a> API, including the associated email addresses, are retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API. </p> <p>With <code>autoEnableOrganizationMembers</code> configuration for your organization set to <code>ALL</code>, you'll receive an error if you attempt to disassociate a member account before removing them from your organization.</p> <p>If you disassociate a member account that was added by invitation, the member account details obtained from this API, including the associated email addresses, will be retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API. </p> <p>When the member accounts added through Organizations are later disassociated, you (administrator) can't invite them by calling the InviteMembers API. You can create an association with these member accounts again only by calling the CreateMembers API.</p>
    # @param [Hash, Types::DisassociateMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to disassociate from the administrator account.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from the administrator account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::DisassociateMembersResponse]
    def disassociate_members(params = {}, options = {})
      request = build_request(:disassociate_members, params)
      request.send_request(options)
    end

    # <p>Designates an Amazon Web Services account within the organization as your GuardDuty delegated administrator. Only the organization's management account can run this API operation.</p>
    # @param [Hash, Types::EnableOrganizationAdminAccountRequest] params
    # @option params [String] :admin_account_id
    #   <p>The Amazon Web Services account ID for the organization account to be enabled as a GuardDuty delegated administrator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     admin_account_id: "String", # required
    #   }
    #   options = {}
    #   response = client.enable_organization_admin_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::EnableOrganizationAdminAccountResponse]
    def enable_organization_admin_account(params = {}, options = {})
      request = build_request(:enable_organization_admin_account, params)
      request.send_request(options)
    end

    # <p>Provides the details of the GuardDuty administrator account associated with the current GuardDuty member account.</p> <p>Based on the type of account that runs this API, the following list shows how the API behavior varies:</p> <ul> <li> <p>When the GuardDuty administrator account runs this API, it will return success (<code>HTTP 200</code>) but no content.</p> </li> <li> <p>When a member account runs this API, it will return the details of the GuardDuty administrator account that is associated with this calling member account.</p> </li> <li> <p>When an individual account (not associated with an organization) runs this API, it will return success (<code>HTTP 200</code>) but no content.</p> </li> </ul>
    # @param [Hash, Types::GetAdministratorAccountRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.get_administrator_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     administrator: { # required
    #       account_id: "AccountId",
    #       invitation_id: "String",
    #       relationship_status: "String",
    #       invited_at: "String"
    #     }
    #   }
    # @return [Types::GetAdministratorAccountResponse]
    def get_administrator_account(params = {}, options = {})
      request = build_request(:get_administrator_account, params)
      request.send_request(options)
    end

    # <p>Retrieves aggregated statistics for your account. If you are a GuardDuty administrator, you can retrieve the statistics for all the resources associated with the active member accounts in your organization who have enabled Runtime Monitoring and have the GuardDuty security agent running on their resources.</p>
    # @param [Hash, Types::GetCoverageStatisticsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   <p>Represents the criteria used to filter the coverage statistics.</p>
    # @option params [Array<String>] :statistics_type
    #   <p>Represents the statistics type used to aggregate the coverage details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "RESOURCE_TYPE", "COVERAGE_STATUS", "ADDON_VERSION", "CLUSTER_NAME", "ECS_CLUSTER_NAME", "MANAGEMENT_TYPE", "EKS_CLUSTER_NAME", "AGENT_VERSION", "INSTANCE_ID", "CLUSTER_ARN"],
    #           filter_condition: {
    #             equals: ["String"],
    #             not_equals: ["String"]
    #           }
    #         }
    #       ]
    #     },
    #     statistics_type: ["COUNT_BY_RESOURCE_TYPE" # One of: ["COUNT_BY_RESOURCE_TYPE", "COUNT_BY_COVERAGE_STATUS"]], # required
    #   }
    #   options = {}
    #   response = client.get_coverage_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     coverage_statistics: {
    #       count_by_resource_type: {
    #         "ResourceType" => 1
    #       },
    #       count_by_coverage_status: {
    #         "CoverageStatus" => 1
    #       }
    #     }
    #   }
    # @return [Types::GetCoverageStatisticsResponse]
    def get_coverage_statistics(params = {}, options = {})
      request = build_request(:get_coverage_statistics, params)
      request.send_request(options)
    end

    # <p>Returns details for a custom detection rule in GuardDuty, including its detection logic.</p>
    # @param [Hash, Types::GetCustomDetectionRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.get_custom_detection_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: { # required
    #       rule_id: "RuleId", # required
    #       arn: "DetectionRuleArn", # required
    #       name: "RuleName", # required
    #       description: "DetectionRuleDescription", # required
    #       severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW"], # required
    #       data_source: "CloudTrailManagementEvent" # One of: ["CloudTrailManagementEvent", "RuntimeMonitoring"], # required
    #       tactic: "MitreTactic", # required
    #       technique: "MitreTechnique", # required
    #       service: "DetectionRuleServiceName", # required
    #       definition: { # required
    #         expression: "RuleExpression", # required
    #       },
    #       language: "SQL" # One of: ["SQL"],
    #       schema: "CloudTrail" # One of: ["CloudTrail"],
    #       runtime_monitoring_details: {
    #         platforms: {
    #           eks: {
    #             min_agent_version: "DetectionRuleAgentVersion"
    #           },
    #           ec2: {
    #             min_agent_version: "DetectionRuleAgentVersion"
    #           },
    #           ecs_fargate: {
    #             min_agent_version: "DetectionRuleAgentVersion"
    #           }
    #         }
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetCustomDetectionRuleResponse]
    def get_custom_detection_rule(params = {}, options = {})
      request = build_request(:get_custom_detection_rule, params)
      request.send_request(options)
    end

    # <p>Returns details for a custom detection rule association.</p>
    # @param [Hash, Types::GetCustomDetectionRuleAssociationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :association_id
    #   <p>The unique identifier for the association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     association_id: "AssociationId", # required
    #   }
    #   options = {}
    #   response = client.get_custom_detection_rule_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_association: { # required
    #       association_id: "AssociationId", # required
    #       arn: "DetectionRuleArn", # required
    #       rule_id: "RuleId", # required
    #       account_id: "AccountId", # required
    #       mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       expires_at: Time.now
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetCustomDetectionRuleAssociationResponse]
    def get_custom_detection_rule_association(params = {}, options = {})
      request = build_request(:get_custom_detection_rule_association, params)
      request.send_request(options)
    end

    # <p>Returns the organization-level configuration for a custom detection rule.</p>
    # @param [Hash, Types::GetCustomDetectionRuleOrgConfigurationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :mode
    #   <p>The execution mode of the organization configuration to retrieve. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #   }
    #   options = {}
    #   response = client.get_custom_detection_rule_org_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: { # required
    #       rule_id: "RuleId", # required
    #       mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #       status: "ACTIVE" # One of: ["ACTIVE", "PROCESSING", "FAILED"], # required
    #       status_reason: "String",
    #       include_account_ids: ["AccountId"], # required
    #       exclude_account_ids: ["AccountId"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       expires_at: Time.now
    #     }
    #   }
    # @return [Types::GetCustomDetectionRuleOrgConfigurationResponse]
    def get_custom_detection_rule_org_configuration(params = {}, options = {})
      request = build_request(:get_custom_detection_rule_org_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves a GuardDuty detector specified by the detectorId.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::GetDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that you want to get.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.get_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: "String",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     service_role: "String", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     updated_at: "String",
    #     data_sources: {
    #       cloud_trail: { # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       dns_logs: { # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       flow_logs: { # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       s3_logs: { # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             reason: "String"
    #           }
    #         },
    #         service_role: "String"
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     features: [
    #       {
    #         name: "FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION", "AI_ANALYST"],
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         updated_at: Time.now,
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             updated_at: Time.now,
    #             managed_by: "GUARDDUTY_POLICY" # One of: ["GUARDDUTY_POLICY"]
    #           }
    #         ],
    #         managed_by: "GUARDDUTY_POLICY" # One of: ["GUARDDUTY_POLICY"]
    #       }
    #     ]
    #   }
    # @return [Types::GetDetectorResponse]
    def get_detector(params = {}, options = {})
      request = build_request(:get_detector, params)
      request.send_request(options)
    end

    # <p>Returns the details of the filter specified by the filter name.</p>
    # @param [Hash, Types::GetFilterRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with this filter.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :filter_name
    #   <p>The name of the filter you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FilterName", # required
    #     description: "FilterDescription",
    #     action: "NOOP" # One of: ["NOOP", "ARCHIVE"], # required
    #     rank: 1,
    #     finding_criteria: { # required
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #           matches: ["Match"],
    #           not_matches: ["NotMatch"]
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     version: 1
    #   }
    # @return [Types::GetFilterResponse]
    def get_filter(params = {}, options = {})
      request = build_request(:get_filter, params)
      request.send_request(options)
    end

    # <p>Describes Amazon GuardDuty findings specified by finding IDs.</p>
    # @param [Hash, Types::GetFindingsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to retrieve.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         account_id: "String", # required
    #         arn: "String", # required
    #         confidence: 1.0,
    #         created_at: "String", # required
    #         description: "String",
    #         id: "String", # required
    #         partition: "String",
    #         region: "String", # required
    #         resource: { # required
    #           access_key_details: {
    #             access_key_id: "String",
    #             principal_id: "String",
    #             user_name: "String",
    #             user_type: "String"
    #           },
    #           s3_bucket_details: [
    #             {
    #               arn: "String",
    #               name: "String",
    #               type: "String",
    #               created_at: Time.now,
    #               owner: {
    #                 id: "String"
    #               },
    #               tags: [
    #                 {
    #                   key: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               default_server_side_encryption: {
    #                 encryption_type: "String",
    #                 kms_master_key_arn: "String"
    #               },
    #               public_access: {
    #                 permission_configuration: {
    #                   bucket_level_permissions: {
    #                     access_control_list: {
    #                       allows_public_read_access: false,
    #                       allows_public_write_access: false
    #                     },
    #                     bucket_policy: {
    #                       allows_public_read_access: false,
    #                       allows_public_write_access: false
    #                     },
    #                     block_public_access: {
    #                       ignore_public_acls: false,
    #                       restrict_public_buckets: false,
    #                       block_public_acls: false,
    #                       block_public_policy: false
    #                     }
    #                   },
    #                   account_level_permissions: {
    #                     block_public_access: {
    #                       ignore_public_acls: false,
    #                       restrict_public_buckets: false,
    #                       block_public_acls: false,
    #                       block_public_policy: false
    #                     }
    #                   }
    #                 },
    #                 effective_permission: "String"
    #               },
    #               s3_object_details: [
    #                 {
    #                   object_arn: "String",
    #                   key: "String",
    #                   e_tag: "String",
    #                   hash: "String",
    #                   version_id: "String"
    #                 }
    #               ]
    #             }
    #           ],
    #           instance_details: {
    #             availability_zone: "String",
    #             iam_instance_profile: {
    #               arn: "String",
    #               id: "String"
    #             },
    #             image_description: "String",
    #             image_id: "String",
    #             instance_id: "String",
    #             instance_state: "String",
    #             instance_type: "String",
    #             outpost_arn: "String",
    #             launch_time: "String",
    #             network_interfaces: [
    #               {
    #                 ipv6_addresses: ["String"],
    #                 network_interface_id: "String",
    #                 private_dns_name: "String",
    #                 private_ip_address: "SensitiveString",
    #                 private_ip_addresses: [
    #                   {
    #                     private_dns_name: "String",
    #                     private_ip_address: "SensitiveString"
    #                   }
    #                 ],
    #                 public_dns_name: "String",
    #                 public_ip: "String",
    #                 security_groups: [
    #                   {
    #                     group_id: "String",
    #                     group_name: "String"
    #                   }
    #                 ],
    #                 subnet_id: "String",
    #                 vpc_id: "String"
    #               }
    #             ],
    #             platform: "String",
    #             product_codes: [
    #               {
    #                 code: "String",
    #                 product_type: "String"
    #               }
    #             ],
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           },
    #           eks_cluster_details: {
    #             name: "String",
    #             arn: "String",
    #             vpc_id: "String",
    #             status: "String",
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ],
    #             created_at: Time.now
    #           },
    #           kubernetes_details: {
    #             kubernetes_user_details: {
    #               username: "String",
    #               uid: "String",
    #               groups: ["String"],
    #               session_name: ["String"],
    #               impersonated_user: {
    #                 username: "String",
    #                 groups: ["String"]
    #               }
    #             },
    #             kubernetes_workload_details: {
    #               name: "String",
    #               type: "String",
    #               uid: "String",
    #               namespace: "String",
    #               host_network: false,
    #               service_account_name: "String",
    #               containers: [
    #                 {
    #                   container_runtime: "String",
    #                   id: "String",
    #                   name: "String",
    #                   image: "String",
    #                   image_prefix: "String",
    #                   volume_mounts: [
    #                     {
    #                       name: "String",
    #                       mount_path: "String"
    #                     }
    #                   ],
    #                   security_context: {
    #                     privileged: false,
    #                     allow_privilege_escalation: false
    #                   }
    #                 }
    #               ],
    #               volumes: [
    #                 {
    #                   name: "String",
    #                   host_path: {
    #                     path: "String"
    #                   }
    #                 }
    #               ],
    #               host_ipc: false,
    #               host_pid: false
    #             }
    #           },
    #           resource_type: "String",
    #           ebs_volume_details: {
    #             scanned_volume_details: [
    #               {
    #                 volume_arn: "String",
    #                 volume_type: "String",
    #                 device_name: "String",
    #                 volume_size_in_gb: 1,
    #                 encryption_type: "String",
    #                 snapshot_arn: "String",
    #                 kms_key_arn: "String"
    #               }
    #             ],
    #             skipped_volume_details: [
    #               {
    #                 volume_arn: "String",
    #                 volume_type: "String",
    #                 device_name: "String",
    #                 volume_size_in_gb: 1,
    #                 encryption_type: "String",
    #                 snapshot_arn: "String",
    #                 kms_key_arn: "String"
    #               }
    #             ]
    #           },
    #           ecs_cluster_details: {
    #             name: "String",
    #             arn: "String",
    #             status: "String",
    #             active_services_count: 1,
    #             registered_container_instances_count: 1,
    #             running_tasks_count: 1,
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ],
    #             task_details: {
    #               arn: "String",
    #               definition_arn: "String",
    #               version: "String",
    #               task_created_at: Time.now,
    #               started_at: Time.now,
    #               started_by: "String",
    #               tags: [
    #                 {
    #                   key: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               volumes: [
    #                 {
    #                   name: "String",
    #                   host_path: {
    #                     path: "String"
    #                   }
    #                 }
    #               ],
    #               containers: [
    #                 {
    #                   container_runtime: "String",
    #                   id: "String",
    #                   name: "String",
    #                   image: "String",
    #                   image_prefix: "String",
    #                   volume_mounts: [
    #                     {
    #                       name: "String",
    #                       mount_path: "String"
    #                     }
    #                   ],
    #                   security_context: {
    #                     privileged: false,
    #                     allow_privilege_escalation: false
    #                   }
    #                 }
    #               ],
    #               group: "String",
    #               launch_type: "String"
    #             }
    #           },
    #           container_details: {
    #             container_runtime: "String",
    #             id: "String",
    #             name: "String",
    #             image: "String",
    #             image_prefix: "String",
    #             volume_mounts: [
    #               {
    #                 name: "String",
    #                 mount_path: "String"
    #               }
    #             ],
    #             security_context: {
    #               privileged: false,
    #               allow_privilege_escalation: false
    #             }
    #           },
    #           lambda_details: {
    #             function_arn: "String",
    #             function_name: "String",
    #             description: "String",
    #             last_modified_at: Time.now,
    #             revision_id: "String",
    #             function_version: "String",
    #             role: "String",
    #             vpc_config: {
    #               subnet_ids: ["String"],
    #               vpc_id: "String",
    #               security_groups: [
    #                 {
    #                   group_id: "String",
    #                   group_name: "String"
    #                 }
    #               ]
    #             },
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           },
    #           rds_db_instance_details: {
    #             db_instance_identifier: "String",
    #             engine: "String",
    #             engine_version: "String",
    #             db_cluster_identifier: "String",
    #             db_instance_arn: "String",
    #             dbi_resource_id: "String",
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           },
    #           rds_limitless_db_details: {
    #             db_shard_group_identifier: "String",
    #             db_shard_group_resource_id: "String",
    #             db_shard_group_arn: "String",
    #             engine: "String",
    #             engine_version: "String",
    #             db_cluster_identifier: "String",
    #             tags: [
    #               {
    #                 key: "String",
    #                 value: "String"
    #               }
    #             ]
    #           },
    #           rds_db_user_details: {
    #             user: "String",
    #             application: "String",
    #             database: "String",
    #             ssl: "String",
    #             auth_method: "String"
    #           },
    #           ebs_snapshot_details: {
    #             snapshot_arn: "String"
    #           },
    #           ec2_image_details: {
    #             image_arn: "String"
    #           },
    #           recovery_point_details: {
    #             recovery_point_arn: "String",
    #             backup_vault_name: "String",
    #             continuous_scan_details: {
    #               start_time: Time.now,
    #               end_time: Time.now, # required
    #             }
    #           },
    #           bedrock_guardrail_details: {
    #             guardrail_arn: "String",
    #             guardrail_version: "String",
    #             guardrails: [
    #               {
    #                 arn: "String",
    #                 version: "String"
    #               }
    #             ],
    #             guardrail_action: "GUARDRAIL_INTERVENED" # One of: ["GUARDRAIL_INTERVENED", "NONE"],
    #             guardrail_source: "INPUT" # One of: ["INPUT", "OUTPUT"],
    #             content_policy_filters: [
    #               {
    #                 type: "PROMPT_ATTACK" # One of: ["PROMPT_ATTACK", "JAILBREAK", "HATE", "INSULTS", "SEXUAL", "VIOLENCE", "MISCONDUCT"],
    #                 confidence: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW", "NONE"],
    #                 action: "BLOCKED" # One of: ["BLOCKED", "NONE"]
    #               }
    #             ]
    #           },
    #           model_details: [
    #             {
    #               model_id: "String"
    #             }
    #           ]
    #         },
    #         schema_version: "String", # required
    #         service: {
    #           action: {
    #             action_type: "String",
    #             aws_api_call_action: {
    #               api: "String",
    #               caller_type: "String",
    #               domain_details: {
    #                 domain: "String"
    #               },
    #               error_code: "String",
    #               user_agent: "String",
    #               remote_ip_details: {
    #                 city: {
    #                   city_name: "String"
    #                 },
    #                 country: {
    #                   country_code: "String",
    #                   country_name: "String"
    #                 },
    #                 geo_location: {
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 ip_address_v4: "SensitiveString",
    #                 ip_address_v6: "SensitiveString",
    #                 organization: {
    #                   asn: "String",
    #                   asn_org: "String",
    #                   isp: "String",
    #                   org: "String"
    #                 }
    #               },
    #               service_name: "String",
    #               remote_account_details: {
    #                 account_id: "String",
    #                 affiliated: false,
    #                 aws_service_name: "String"
    #               },
    #               affected_resources: {
    #                 "String" => "String"
    #               }
    #             },
    #             dns_request_action: {
    #               domain: "String",
    #               protocol: "String",
    #               blocked: false,
    #               domain_with_suffix: "String",
    #               vpc_owner_account_id: "AccountId"
    #             },
    #             network_connection_action: {
    #               blocked: false,
    #               connection_direction: "String",
    #               local_port_details: {
    #                 port: 1,
    #                 port_name: "String"
    #               },
    #               protocol: "String",
    #               local_ip_details: {
    #                 ip_address_v4: "SensitiveString",
    #                 ip_address_v6: "SensitiveString"
    #               },
    #               local_network_interface: "String",
    #               remote_ip_details: {
    #                 city: {
    #                   city_name: "String"
    #                 },
    #                 country: {
    #                   country_code: "String",
    #                   country_name: "String"
    #                 },
    #                 geo_location: {
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 ip_address_v4: "SensitiveString",
    #                 ip_address_v6: "SensitiveString",
    #                 organization: {
    #                   asn: "String",
    #                   asn_org: "String",
    #                   isp: "String",
    #                   org: "String"
    #                 }
    #               },
    #               remote_port_details: {
    #                 port: 1,
    #                 port_name: "String"
    #               }
    #             },
    #             port_probe_action: {
    #               blocked: false,
    #               port_probe_details: [
    #                 {
    #                   local_port_details: {
    #                     port: 1,
    #                     port_name: "String"
    #                   },
    #                   local_ip_details: {
    #                     ip_address_v4: "SensitiveString",
    #                     ip_address_v6: "SensitiveString"
    #                   },
    #                   remote_ip_details: {
    #                     city: {
    #                       city_name: "String"
    #                     },
    #                     country: {
    #                       country_code: "String",
    #                       country_name: "String"
    #                     },
    #                     geo_location: {
    #                       lat: 1.0,
    #                       lon: 1.0
    #                     },
    #                     ip_address_v4: "SensitiveString",
    #                     ip_address_v6: "SensitiveString",
    #                     organization: {
    #                       asn: "String",
    #                       asn_org: "String",
    #                       isp: "String",
    #                       org: "String"
    #                     }
    #                   }
    #                 }
    #               ]
    #             },
    #             kubernetes_api_call_action: {
    #               request_uri: "String",
    #               verb: "String",
    #               resource: "String",
    #               subresource: "String",
    #               namespace: "String",
    #               resource_name: "String",
    #               source_ips: ["String"],
    #               user_agent: "String",
    #               remote_ip_details: {
    #                 city: {
    #                   city_name: "String"
    #                 },
    #                 country: {
    #                   country_code: "String",
    #                   country_name: "String"
    #                 },
    #                 geo_location: {
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 ip_address_v4: "SensitiveString",
    #                 ip_address_v6: "SensitiveString",
    #                 organization: {
    #                   asn: "String",
    #                   asn_org: "String",
    #                   isp: "String",
    #                   org: "String"
    #                 }
    #               },
    #               status_code: 1,
    #               parameters: "String"
    #             },
    #             kubernetes_permission_checked_details: {
    #               verb: "String",
    #               resource: "String",
    #               namespace: "String",
    #               allowed: false
    #             },
    #             kubernetes_role_binding_details: {
    #               kind: "String",
    #               name: "String",
    #               uid: "String",
    #               role_ref_name: "String",
    #               role_ref_kind: "String"
    #             },
    #             kubernetes_role_details: {
    #               kind: "String",
    #               name: "String",
    #               uid: "String"
    #             },
    #             rds_login_attempt_action: {
    #               remote_ip_details: {
    #                 city: {
    #                   city_name: "String"
    #                 },
    #                 country: {
    #                   country_code: "String",
    #                   country_name: "String"
    #                 },
    #                 geo_location: {
    #                   lat: 1.0,
    #                   lon: 1.0
    #                 },
    #                 ip_address_v4: "SensitiveString",
    #                 ip_address_v6: "SensitiveString",
    #                 organization: {
    #                   asn: "String",
    #                   asn_org: "String",
    #                   isp: "String",
    #                   org: "String"
    #                 }
    #               },
    #               login_attributes: [
    #                 {
    #                   user: "String",
    #                   application: "String",
    #                   failed_login_attempts: 1,
    #                   successful_login_attempts: 1
    #                 }
    #               ]
    #             }
    #           },
    #           evidence: {
    #             threat_intelligence_details: [
    #               {
    #                 threat_list_name: "String",
    #                 threat_names: ["String"],
    #                 threat_file_sha256: "String"
    #               }
    #             ]
    #           },
    #           archived: false,
    #           count: 1,
    #           detector_id: "DetectorId",
    #           event_first_seen: "String",
    #           event_last_seen: "String",
    #           resource_role: "String",
    #           service_name: "String",
    #           user_feedback: "String",
    #           additional_info: {
    #             value: "String",
    #             type: "String"
    #           },
    #           feature_name: "String",
    #           ebs_volume_scan_details: {
    #             scan_id: "String",
    #             scan_started_at: Time.now,
    #             scan_completed_at: Time.now,
    #             trigger_finding_id: "String",
    #             sources: ["String"],
    #             scan_detections: {
    #               scanned_item_count: {
    #                 total_gb: 1,
    #                 files: 1,
    #                 volumes: 1
    #               },
    #               threats_detected_item_count: {
    #                 files: 1
    #               },
    #               highest_severity_threat_details: {
    #                 severity: "String",
    #                 threat_name: "String",
    #                 count: 1
    #               },
    #               threat_detected_by_name: {
    #                 item_count: 1,
    #                 unique_threat_name_count: 1,
    #                 shortened: false,
    #                 threat_names: [
    #                   {
    #                     name: "String",
    #                     severity: "String",
    #                     item_count: 1,
    #                     file_paths: [
    #                       {
    #                         file_path: "String",
    #                         volume_arn: "String",
    #                         hash: "String",
    #                         file_name: "String"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             },
    #             scan_type: "GUARDDUTY_INITIATED" # One of: ["GUARDDUTY_INITIATED", "ON_DEMAND"]
    #           },
    #           runtime_details: {
    #             process: {
    #               name: "String",
    #               executable_path: "String",
    #               executable_sha256: "String",
    #               namespace_pid: 1,
    #               pwd: "String",
    #               pid: 1,
    #               start_time: Time.now,
    #               uuid: "String",
    #               parent_uuid: "String",
    #               user: "String",
    #               user_id: 1,
    #               euid: 1,
    #               lineage: [
    #                 {
    #                   start_time: Time.now,
    #                   namespace_pid: 1,
    #                   user_id: 1,
    #                   name: "String",
    #                   pid: 1,
    #                   uuid: "String",
    #                   executable_path: "String",
    #                   euid: 1,
    #                   parent_uuid: "String"
    #                 }
    #               ]
    #             },
    #             context: {
    #               modifying_process: {
    #                 name: "String",
    #                 executable_path: "String",
    #                 executable_sha256: "String",
    #                 namespace_pid: 1,
    #                 pwd: "String",
    #                 pid: 1,
    #                 start_time: Time.now,
    #                 uuid: "String",
    #                 parent_uuid: "String",
    #                 user: "String",
    #                 user_id: 1,
    #                 euid: 1,
    #                 lineage: [
    #                   {
    #                     start_time: Time.now,
    #                     namespace_pid: 1,
    #                     user_id: 1,
    #                     name: "String",
    #                     pid: 1,
    #                     uuid: "String",
    #                     executable_path: "String",
    #                     euid: 1,
    #                     parent_uuid: "String"
    #                   }
    #                 ]
    #               },
    #               modified_at: Time.now,
    #               script_path: "String",
    #               library_path: "String",
    #               ld_preload_value: "String",
    #               socket_path: "String",
    #               runc_binary_path: "String",
    #               release_agent_path: "String",
    #               mount_source: "String",
    #               mount_target: "String",
    #               file_system_type: "String",
    #               flags: ["String"],
    #               module_name: "String",
    #               module_file_path: "String",
    #               module_sha256: "String",
    #               shell_history_file_path: "String",
    #               target_process: {
    #                 name: "String",
    #                 executable_path: "String",
    #                 executable_sha256: "String",
    #                 namespace_pid: 1,
    #                 pwd: "String",
    #                 pid: 1,
    #                 start_time: Time.now,
    #                 uuid: "String",
    #                 parent_uuid: "String",
    #                 user: "String",
    #                 user_id: 1,
    #                 euid: 1,
    #                 lineage: [
    #                   {
    #                     start_time: Time.now,
    #                     namespace_pid: 1,
    #                     user_id: 1,
    #                     name: "String",
    #                     pid: 1,
    #                     uuid: "String",
    #                     executable_path: "String",
    #                     euid: 1,
    #                     parent_uuid: "String"
    #                   }
    #                 ]
    #               },
    #               address_family: "String",
    #               iana_protocol_number: 1,
    #               memory_regions: ["String"],
    #               tool_name: "String",
    #               tool_category: "String",
    #               service_name: "String",
    #               command_line_example: "String",
    #               threat_file_path: "String",
    #               file_operation: "String",
    #               file_path: "String",
    #               related_file_paths: ["String"]
    #             }
    #           },
    #           detection: {
    #             anomaly: {
    #               profiles: {
    #                 "String" => {
    #                   "String" => [
    #                     {
    #                       profile_type: "FREQUENCY" # One of: ["FREQUENCY", "VOLUME"],
    #                       profile_subtype: "FREQUENT" # One of: ["FREQUENT", "INFREQUENT", "UNSEEN", "RARE", "COUNT", "AVERAGE"],
    #                       observations: {
    #                         text: ["String"],
    #                         number: [1]
    #                       }
    #                     }
    #                   ]
    #                 }
    #               },
    #               unusual: {
    #                 behavior: {
    #                   "String" => {
    #                     "String" => {
    #                       profile_type: "FREQUENCY" # One of: ["FREQUENCY", "VOLUME"],
    #                       profile_subtype: "FREQUENT" # One of: ["FREQUENT", "INFREQUENT", "UNSEEN", "RARE", "COUNT", "AVERAGE"],
    #                       observations: {
    #                         text: ["String"],
    #                         number: [1]
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             },
    #             sequence: {
    #               uid: "String", # required
    #               description: "SequenceDescription", # required
    #               actors: [
    #                 {
    #                   id: "String", # required
    #                   user: {
    #                     name: "String", # required
    #                     uid: "String", # required
    #                     type: "String", # required
    #                     credential_uid: "String",
    #                     account: {
    #                       uid: "String", # required
    #                       name: "String"
    #                     }
    #                   },
    #                   session: {
    #                     uid: "String",
    #                     mfa_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                     created_time: Time.now,
    #                     issuer: "String"
    #                   },
    #                   process: {
    #                     name: "ProcessName", # required
    #                     path: "ProcessPath", # required
    #                     sha256: "ProcessSha256"
    #                   }
    #                 }
    #               ],
    #               resources: [
    #                 {
    #                   uid: "String", # required
    #                   name: "String",
    #                   account_id: "String",
    #                   resource_type: "EC2_INSTANCE" # One of: ["EC2_INSTANCE", "EC2_NETWORK_INTERFACE", "S3_BUCKET", "S3_OBJECT", "ACCESS_KEY", "EKS_CLUSTER", "KUBERNETES_WORKLOAD", "CONTAINER", "ECS_CLUSTER", "ECS_TASK", "AUTOSCALING_AUTO_SCALING_GROUP", "IAM_INSTANCE_PROFILE", "CLOUDFORMATION_STACK", "EC2_LAUNCH_TEMPLATE", "EC2_VPC", "EC2_IMAGE", "BEDROCK_CUSTOM_MODEL", "BEDROCK_IMPORTED_MODEL", "BEDROCK_PROVISIONED_MODEL", "BEDROCK_CUSTOM_MODEL_DEPLOYMENT", "BEDROCK_INFERENCE_PROFILE", "BEDROCK_APPLICATION_INFERENCE_PROFILE", "BEDROCK_PROMPT", "BEDROCK_PROMPT_ROUTER", "BEDROCK_GUARDRAIL", "SAGEMAKER_ENDPOINT"], # required
    #                   region: "String",
    #                   service: "String",
    #                   cloud_partition: "String",
    #                   tags: [
    #                     {
    #                       key: "String",
    #                       value: "String"
    #                     }
    #                   ],
    #                   data: {
    #                     s3_bucket: {
    #                       owner_id: "String",
    #                       created_at: Time.now,
    #                       encryption_type: "String",
    #                       encryption_key_arn: "String",
    #                       effective_permission: "String",
    #                       public_read_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                       public_write_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                       account_public_access: {
    #                         public_acl_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                         public_policy_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                         public_acl_ignore_behavior: "IGNORED" # One of: ["IGNORED", "NOT_IGNORED"],
    #                         public_bucket_restrict_behavior: "RESTRICTED" # One of: ["RESTRICTED", "NOT_RESTRICTED"]
    #                       },
    #                       bucket_public_access: {
    #                         public_acl_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                         public_policy_access: "BLOCKED" # One of: ["BLOCKED", "ALLOWED"],
    #                         public_acl_ignore_behavior: "IGNORED" # One of: ["IGNORED", "NOT_IGNORED"],
    #                         public_bucket_restrict_behavior: "RESTRICTED" # One of: ["RESTRICTED", "NOT_RESTRICTED"]
    #                       },
    #                       s3_object_uids: ["String"]
    #                     },
    #                     ec2_instance: {
    #                       availability_zone: "String",
    #                       image_description: "String",
    #                       instance_state: "String",
    #                       iam_instance_profile: {
    #                         arn: "String",
    #                         id: "String"
    #                       },
    #                       instance_type: "String",
    #                       outpost_arn: "String",
    #                       platform: "String",
    #                       product_codes: [
    #                         {
    #                           code: "String",
    #                           product_type: "String"
    #                         }
    #                       ],
    #                       ec2_network_interface_uids: ["String"]
    #                     },
    #                     access_key: {
    #                       principal_id: "String",
    #                       user_name: "String",
    #                       user_type: "String"
    #                     },
    #                     ec2_network_interface: {
    #                       ipv6_addresses: ["String"],
    #                       private_ip_addresses: [
    #                         {
    #                           private_dns_name: "String",
    #                           private_ip_address: "SensitiveString"
    #                         }
    #                       ],
    #                       public_ip: "String",
    #                       security_groups: [
    #                         {
    #                           group_id: "String",
    #                           group_name: "String"
    #                         }
    #                       ],
    #                       sub_net_id: "String",
    #                       vpc_id: "String"
    #                     },
    #                     s3_object: {
    #                       e_tag: "String",
    #                       key: "String",
    #                       version_id: "String"
    #                     },
    #                     eks_cluster: {
    #                       arn: "String",
    #                       created_at: Time.now,
    #                       status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"],
    #                       vpc_id: "String",
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     kubernetes_workload: {
    #                       container_uids: ["ContainerUid"],
    #                       namespace: "String",
    #                       kubernetes_resources_types: "PODS" # One of: ["PODS", "JOBS", "CRONJOBS", "DEPLOYMENTS", "DAEMONSETS", "STATEFULSETS", "REPLICASETS", "REPLICATIONCONTROLLERS"]
    #                     },
    #                     container: {
    #                       image: "String", # required
    #                       image_uid: "ContainerImageUid"
    #                     },
    #                     ecs_cluster: {
    #                       status: "ACTIVE" # One of: ["ACTIVE", "PROVISIONING", "DEPROVISIONING", "FAILED", "INACTIVE"],
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     ecs_task: {
    #                       created_at: Time.now,
    #                       task_definition_arn: "String",
    #                       launch_type: "FARGATE" # One of: ["FARGATE", "EC2"],
    #                       container_uids: ["ContainerUid"]
    #                     },
    #                     iam_instance_profile: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     autoscaling_auto_scaling_group: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     ec2_launch_template: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"],
    #                       version: "LaunchTemplateVersion"
    #                     },
    #                     ec2_vpc: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     ec2_image: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     cloudformation_stack: {
    #                       ec2_instance_uids: ["Ec2InstanceUid"]
    #                     },
    #                     bedrock_guardrail: {
    #                       version: "String",
    #                       guardrail_action: "GUARDRAIL_INTERVENED" # One of: ["GUARDRAIL_INTERVENED", "NONE"],
    #                       guardrail_source: "INPUT" # One of: ["INPUT", "OUTPUT"]
    #                     }
    #                   }
    #                 }
    #               ],
    #               endpoints: [
    #                 {
    #                   id: "String", # required
    #                   ip: "String",
    #                   domain: "String",
    #                   port: 1,
    #                   location: {
    #                     city: "String", # required
    #                     country: "String", # required
    #                     latitude: 1.0, # required
    #                     longitude: 1.0, # required
    #                   },
    #                   autonomous_system: {
    #                     name: "String", # required
    #                     number: 1, # required
    #                   },
    #                   connection: {
    #                     direction: "INBOUND" # One of: ["INBOUND", "OUTBOUND"], # required
    #                   }
    #                 }
    #               ],
    #               signals: [ # required
    #                 {
    #                   uid: "String", # required
    #                   type: "FINDING" # One of: ["FINDING", "CLOUD_TRAIL", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "FLOW_LOGS", "DNS_LOGS", "RUNTIME_MONITORING"], # required
    #                   description: "SignalDescription",
    #                   name: "String", # required
    #                   created_at: Time.now, # required
    #                   updated_at: Time.now, # required
    #                   first_seen_at: Time.now, # required
    #                   last_seen_at: Time.now, # required
    #                   severity: 1.0,
    #                   count: 1, # required
    #                   resource_uids: ["String"],
    #                   actor_ids: ["String"],
    #                   endpoint_ids: ["String"],
    #                   signal_indicators: [
    #                     {
    #                       key: "SUSPICIOUS_USER_AGENT" # One of: ["SUSPICIOUS_USER_AGENT", "SUSPICIOUS_NETWORK", "MALICIOUS_IP", "TOR_IP", "ATTACK_TACTIC", "HIGH_RISK_API", "ATTACK_TECHNIQUE", "UNUSUAL_API_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_USER", "SUSPICIOUS_PROCESS", "MALICIOUS_DOMAIN", "MALICIOUS_PROCESS", "CRYPTOMINING_IP", "CRYPTOMINING_DOMAIN", "CRYPTOMINING_PROCESS", "MALICIOUS_FILE", "VULNERABILITY", "MALICIOUS_PACKAGE", "MISCONFIGURATION", "REACHABILITY", "SENSITIVE_DATA"], # required
    #                       values: ["IndicatorValueString"],
    #                       title: "IndicatorTitle"
    #                     }
    #                   ],
    #                   activities: [
    #                     {
    #                       type: "API_CALL" # One of: ["API_CALL"], # required
    #                       api: {
    #                         operation: "String",
    #                         service: "String",
    #                         error: "String",
    #                         user_agent: "String"
    #                       }
    #                     }
    #                   ]
    #                 }
    #               ],
    #               sequence_indicators: [
    #                 {
    #                   key: "SUSPICIOUS_USER_AGENT" # One of: ["SUSPICIOUS_USER_AGENT", "SUSPICIOUS_NETWORK", "MALICIOUS_IP", "TOR_IP", "ATTACK_TACTIC", "HIGH_RISK_API", "ATTACK_TECHNIQUE", "UNUSUAL_API_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_USER", "SUSPICIOUS_PROCESS", "MALICIOUS_DOMAIN", "MALICIOUS_PROCESS", "CRYPTOMINING_IP", "CRYPTOMINING_DOMAIN", "CRYPTOMINING_PROCESS", "MALICIOUS_FILE", "VULNERABILITY", "MALICIOUS_PACKAGE", "MISCONFIGURATION", "REACHABILITY", "SENSITIVE_DATA"], # required
    #                   values: ["IndicatorValueString"],
    #                   title: "IndicatorTitle"
    #                 }
    #               ],
    #               additional_sequence_types: ["FindingType"]
    #             }
    #           },
    #           malware_scan_details: {
    #             threats: [
    #               {
    #                 name: "String",
    #                 source: "String",
    #                 item_paths: [
    #                   {
    #                     nested_item_path: "String",
    #                     hash: "String"
    #                   }
    #                 ],
    #                 count: 1,
    #                 hash: "String",
    #                 item_details: [
    #                   {
    #                     resource_arn: "NonEmptyString",
    #                     item_path: "NonEmptyString",
    #                     hash: "String",
    #                     additional_info: {
    #                       version_id: "NonEmptyString",
    #                       device_name: "NonEmptyString"
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             scan_id: "String",
    #             scan_type: "BACKUP_INITIATED" # One of: ["BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"],
    #             scan_category: "FULL_SCAN" # One of: ["FULL_SCAN", "INCREMENTAL_SCAN"],
    #             scan_configuration: {
    #               trigger_type: "BACKUP" # One of: ["BACKUP", "GUARDDUTY"],
    #               incremental_scan_details: {
    #                 baseline_resource_arn: "NonEmptyString", # required
    #               }
    #             },
    #             unique_threat_count: 1
    #           }
    #         },
    #         severity: 1.0, # required
    #         title: "String",
    #         type: "FindingType", # required
    #         updated_at: "String", # required
    #         associated_attack_sequence_arn: "String",
    #         custom_detection_rule_name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetFindingsResponse]
    def get_findings(params = {}, options = {})
      request = build_request(:get_findings, params)
      request.send_request(options)
    end

    # <p>Lists GuardDuty findings statistics for the specified detector ID.</p> <p>You must provide either <code>findingStatisticTypes</code> or <code>groupBy</code> parameter, and not both. You can use the <code>maxResults</code> and <code>orderBy</code> parameters only when using <code>groupBy</code>.</p> <p>There might be regional differences because some flags might not be available in all the Regions where GuardDuty is currently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::GetFindingsStatisticsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector whose findings statistics you want to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_statistic_types
    #   <p>The types of finding statistics to retrieve.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>Represents the criteria that is used for querying findings.</p>
    # @option params [String] :group_by
    #   <p>Displays the findings statistics grouped by one of the listed valid values.</p>
    # @option params [String] :order_by
    #   <p>Displays the sorted findings in the requested order. The default value of <code>orderBy</code> is <code>DESC</code>.</p> <p>You can use this parameter only with the <code>groupBy</code> parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned in the response. The default value is 25.</p> <p>You can use this parameter only with the <code>groupBy</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_statistic_types: ["COUNT_BY_SEVERITY" # One of: ["COUNT_BY_SEVERITY"]],
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #           matches: ["Match"],
    #           not_matches: ["NotMatch"]
    #         }
    #       }
    #     },
    #     group_by: "ACCOUNT" # One of: ["ACCOUNT", "DATE", "FINDING_TYPE", "RESOURCE", "SEVERITY"],
    #     order_by: "ASC" # One of: ["ASC", "DESC"],
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_findings_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_statistics: { # required
    #       count_by_severity: {
    #         "String" => 1
    #       },
    #       grouped_by_account: [
    #         {
    #           account_id: "String",
    #           last_generated_at: Time.now,
    #           total_findings: 1
    #         }
    #       ],
    #       grouped_by_date: [
    #         {
    #           date: Time.now,
    #           last_generated_at: Time.now,
    #           severity: 1.0,
    #           total_findings: 1
    #         }
    #       ],
    #       grouped_by_finding_type: [
    #         {
    #           finding_type: "String",
    #           last_generated_at: Time.now,
    #           total_findings: 1
    #         }
    #       ],
    #       grouped_by_resource: [
    #         {
    #           account_id: "String",
    #           last_generated_at: Time.now,
    #           resource_id: "String",
    #           resource_type: "String",
    #           total_findings: 1
    #         }
    #       ],
    #       grouped_by_severity: [
    #         {
    #           last_generated_at: Time.now,
    #           severity: 1.0,
    #           total_findings: 1
    #         }
    #       ]
    #     },
    #     next_token: "String"
    #   }
    # @return [Types::GetFindingsStatisticsResponse]
    def get_findings_statistics(params = {}, options = {})
      request = build_request(:get_findings_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves the IPSet specified by the <code>ipSetId</code>.</p>
    # @param [Hash, Types::GetIPSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the IPSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :ip_set_id
    #   <p>The unique ID of the IPSet to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     status: "INACTIVE" # One of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     expected_bucket_owner: "AccountId"
    #   }
    # @return [Types::GetIPSetResponse]
    def get_ip_set(params = {}, options = {})
      request = build_request(:get_ip_set, params)
      request.send_request(options)
    end

    # <p>This API is currently available as a preview. This feature is available in the following Amazon Web Services Regions: US East (N. Virginia), US East (Ohio), US West (Oregon), Canada (Central), Europe (Frankfurt), Europe (Ireland), Europe (London), Europe (Paris), Europe (Stockholm), and Asia Pacific (Tokyo).</p> <p>Retrieves the results and status of a specific GuardDuty investigation.</p> <p>An administrator account can retrieve any investigation within the organization. Member accounts can only retrieve investigations that belong to them.</p>
    # @param [Hash, Types::GetInvestigationRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector associated with the investigation.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :investigation_id
    #   <p>The unique identifier of the investigation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     investigation_id: "InvestigationId", # required
    #   }
    #   options = {}
    #   response = client.get_investigation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     investigation: { # required
    #       investigation_id: "InvestigationId", # required
    #       status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"], # required
    #       trigger_prompt: "TriggerPrompt", # required
    #       triggered_by: "TriggeredBy", # required
    #       metadata: {
    #         version: "String", # required
    #         product: { # required
    #           name: "String", # required
    #           feature: "String"
    #         }
    #       },
    #       cloud: {
    #         provider: "AWS" # One of: ["AWS"], # required
    #         region: "String", # required
    #         account: "String", # required
    #       },
    #       risk_level: "Info" # One of: ["Info", "Low", "Medium", "High", "Critical"],
    #       risk: "RiskDetails",
    #       confidence: "Unknown" # One of: ["Unknown", "Low", "Medium", "High"],
    #       summary: "String",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       error: "InvestigationErrorDetails"
    #     }
    #   }
    # @return [Types::GetInvestigationResponse]
    def get_investigation(params = {}, options = {})
      request = build_request(:get_investigation, params)
      request.send_request(options)
    end

    # <p>Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.</p>
    # @param [Hash, Types::GetInvitationsCountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_invitations_count(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations_count: 1
    #   }
    # @return [Types::GetInvitationsCountResponse]
    def get_invitations_count(params = {}, options = {})
      request = build_request(:get_invitations_count, params)
      request.send_request(options)
    end

    # <p>Retrieves the Malware Protection plan details associated with a Malware Protection plan ID.</p>
    # @param [Hash, Types::GetMalwareProtectionPlanRequest] params
    # @option params [String] :malware_protection_plan_id
    #   <p>A unique identifier associated with Malware Protection plan resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     malware_protection_plan_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_malware_protection_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     role: "String",
    #     protected_resource: {
    #       s3_bucket: {
    #         bucket_name: "String",
    #         object_prefixes: ["String"]
    #       }
    #     },
    #     actions: {
    #       tagging: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     created_at: Time.now,
    #     status: "ACTIVE" # One of: ["ACTIVE", "WARNING", "ERROR"],
    #     status_reasons: [
    #       {
    #         code: "String",
    #         message: "String"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetMalwareProtectionPlanResponse]
    def get_malware_protection_plan(params = {}, options = {})
      request = build_request(:get_malware_protection_plan, params)
      request.send_request(options)
    end

    # <p>Retrieves the detailed information for a specific malware scan. Each member account can view the malware scan details for their own account. An administrator can view malware scan details for all accounts in the organization.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::GetMalwareScanRequest] params
    # @option params [String] :scan_id
    #   <p>A unique identifier that gets generated when you invoke the API without any error. Each malware scan has a corresponding scan ID. Using this scan ID, you can monitor the status of your malware scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scan_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_malware_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_id: "NonEmptyString",
    #     detector_id: "DetectorId",
    #     admin_detector_id: "DetectorId",
    #     resource_arn: "NonEmptyString",
    #     resource_type: "EBS_RECOVERY_POINT" # One of: ["EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET", "S3_POINT_IN_TIME_RECOVERY"],
    #     scanned_resources_count: 1,
    #     skipped_resources_count: 1,
    #     failed_resources_count: 1,
    #     scanned_resources: [
    #       {
    #         scanned_resource_arn: "NonEmptyString",
    #         scanned_resource_type: "EBS_RECOVERY_POINT" # One of: ["EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET", "S3_POINT_IN_TIME_RECOVERY"],
    #         scanned_resource_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"],
    #         scan_status_reason: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "RESOURCE_NOT_FOUND", "SNAPSHOT_SIZE_LIMIT_EXCEEDED", "RESOURCE_UNAVAILABLE", "INCONSISTENT_SOURCE", "INCREMENTAL_NO_DIFFERENCE", "NO_EBS_VOLUMES_FOUND", "UNSUPPORTED_PRODUCT_CODE_TYPE", "AMI_SNAPSHOT_LIMIT_EXCEEDED", "UNRELATED_RESOURCES", "BASE_RESOURCE_NOT_SCANNED", "BASE_CREATED_AFTER_TARGET", "UNSUPPORTED_FOR_INCREMENTAL", "UNSUPPORTED_AMI", "UNSUPPORTED_SNAPSHOT", "UNSUPPORTED_COMPOSITE_RECOVERY_POINT", "ALL_FILES_SKIPPED_OR_FAILED"],
    #         resource_details: {
    #           ebs_volume: {
    #             volume_arn: "String",
    #             volume_type: "String",
    #             device_name: "String",
    #             volume_size_in_gb: 1,
    #             encryption_type: "String",
    #             snapshot_arn: "String",
    #             kms_key_arn: "String"
    #           },
    #           ebs_snapshot: {
    #             device_name: "NonEmptyString"
    #           }
    #         }
    #       }
    #     ],
    #     scan_configuration: {
    #       role: "NonEmptyString",
    #       trigger_details: {
    #         guard_duty_finding_id: "NonEmptyString",
    #         description: "NonEmptyString",
    #         trigger_type: "BACKUP" # One of: ["BACKUP", "GUARDDUTY"]
    #       },
    #       incremental_scan_details: {
    #         baseline_resource_arn: "NonEmptyString", # required
    #       },
    #       recovery_point: {
    #         backup_vault_name: "NonEmptyString",
    #         continuous_scan_details: {
    #           start_time: Time.now,
    #           end_time: Time.now, # required
    #         }
    #       }
    #     },
    #     scan_category: "FULL_SCAN" # One of: ["FULL_SCAN", "INCREMENTAL_SCAN"],
    #     scan_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"],
    #     scan_status_reason: "ACCESS_DENIED" # One of: ["ACCESS_DENIED", "RESOURCE_NOT_FOUND", "SNAPSHOT_SIZE_LIMIT_EXCEEDED", "RESOURCE_UNAVAILABLE", "INCONSISTENT_SOURCE", "INCREMENTAL_NO_DIFFERENCE", "NO_EBS_VOLUMES_FOUND", "UNSUPPORTED_PRODUCT_CODE_TYPE", "AMI_SNAPSHOT_LIMIT_EXCEEDED", "UNRELATED_RESOURCES", "BASE_RESOURCE_NOT_SCANNED", "BASE_CREATED_AFTER_TARGET", "UNSUPPORTED_FOR_INCREMENTAL", "UNSUPPORTED_AMI", "UNSUPPORTED_SNAPSHOT", "UNSUPPORTED_COMPOSITE_RECOVERY_POINT", "ALL_FILES_SKIPPED_OR_FAILED"],
    #     scan_type: "BACKUP_INITIATED" # One of: ["BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"],
    #     scan_started_at: Time.now,
    #     scan_completed_at: Time.now,
    #     scan_result_details: {
    #       scan_result_status: "NO_THREATS_FOUND" # One of: ["NO_THREATS_FOUND", "THREATS_FOUND"],
    #       skipped_file_count: 1,
    #       failed_file_count: 1,
    #       threat_found_file_count: 1,
    #       total_file_count: 1,
    #       total_bytes: 1,
    #       unique_threat_count: 1,
    #       threats: [
    #         {
    #           name: "NonEmptyString",
    #           source: "AMAZON" # One of: ["AMAZON", "BITDEFENDER"],
    #           count: 1,
    #           hash: "NonEmptyString",
    #           item_details: [
    #             {
    #               resource_arn: "NonEmptyString",
    #               item_path: "NonEmptyString",
    #               hash: "String",
    #               additional_info: {
    #                 version_id: "NonEmptyString",
    #                 device_name: "NonEmptyString"
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMalwareScanResponse]
    def get_malware_scan(params = {}, options = {})
      request = build_request(:get_malware_scan, params)
      request.send_request(options)
    end

    # <p>Returns the details of the malware scan settings.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::GetMalwareScanSettingsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with this scan.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.get_malware_scan_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_resource_criteria: {
    #       include: {
    #         "ScanCriterionKey" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ]
    #         }
    #       },
    #       exclude: {
    #         "ScanCriterionKey" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     ebs_snapshot_preservation: "NO_RETENTION" # One of: ["NO_RETENTION", "RETENTION_WITH_FINDING"]
    #   }
    # @return [Types::GetMalwareScanSettingsResponse]
    def get_malware_scan_settings(params = {}, options = {})
      request = build_request(:get_malware_scan_settings, params)
      request.send_request(options)
    end

    # <p>Provides the details for the GuardDuty administrator account associated with the current GuardDuty member account.</p>
    # @param [Hash, Types::GetMasterAccountRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #   }
    #   options = {}
    #   response = client.get_master_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     master: { # required
    #       account_id: "AccountId",
    #       invitation_id: "String",
    #       relationship_status: "String",
    #       invited_at: "String"
    #     }
    #   }
    # @deprecated
    #   This operation is deprecated, use GetAdministratorAccount instead
    # @return [Types::GetMasterAccountResponse]
    def get_master_account(params = {}, options = {})
      request = build_request(:get_master_account, params)
      request.send_request(options)
    end

    # <p>Describes which data sources are enabled for the member account's detector.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::GetMemberDetectorsRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID for the administrator account.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of member account IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.get_member_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     member_data_source_configurations: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         data_sources: { # required
    #           cloud_trail: { # required
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           dns_logs: { # required
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           flow_logs: { # required
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           s3_logs: { # required
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           kubernetes: {
    #             audit_logs: { # required
    #               status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           },
    #           malware_protection: {
    #             scan_ec2_instance_with_findings: {
    #               ebs_volumes: {
    #                 status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                 reason: "String"
    #               }
    #             },
    #             service_role: "String"
    #           }
    #         },
    #         features: [
    #           {
    #             name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION"],
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             updated_at: Time.now,
    #             additional_configuration: [
    #               {
    #                 name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #                 status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #                 updated_at: Time.now,
    #                 managed_by: "GUARDDUTY_POLICY" # One of: ["GUARDDUTY_POLICY"]
    #               }
    #             ],
    #             managed_by: "GUARDDUTY_POLICY" # One of: ["GUARDDUTY_POLICY"]
    #           }
    #         ]
    #       }
    #     ],
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetMemberDetectorsResponse]
    def get_member_detectors(params = {}, options = {})
      request = build_request(:get_member_detectors, params)
      request.send_request(options)
    end

    # <p>Retrieves GuardDuty member accounts (of the current GuardDuty administrator account) specified by the account IDs.</p>
    # @param [Hash, Types::GetMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account whose members you want to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.get_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         detector_id: "DetectorId",
    #         master_id: "String", # required
    #         email: "Email", # required
    #         relationship_status: "String", # required
    #         invited_at: "String",
    #         updated_at: "String", # required
    #         administrator_id: "String"
    #       }
    #     ],
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetMembersResponse]
    def get_members(params = {}, options = {})
      request = build_request(:get_members, params)
      request.send_request(options)
    end

    # <p>Retrieves how many active member accounts have each feature enabled within GuardDuty. Only a delegated GuardDuty administrator of an organization can run this API.</p> <p>When you create a new organization, it might take up to 24 hours to generate the statistics for the entire organization.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_organization_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     organization_details: {
    #       updated_at: Time.now,
    #       organization_statistics: {
    #         total_accounts_count: 1,
    #         member_accounts_count: 1,
    #         active_accounts_count: 1,
    #         enabled_accounts_count: 1,
    #         count_by_feature: [
    #           {
    #             name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION"],
    #             enabled_accounts_count: 1,
    #             additional_configuration: [
    #               {
    #                 name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #                 enabled_accounts_count: 1
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetOrganizationStatisticsResponse]
    def get_organization_statistics(params = {}, options = {})
      request = build_request(:get_organization_statistics, params)
      request.send_request(options)
    end

    # <p>Provides the number of days left for each data source used in the free trial period.</p>
    # @param [Hash, Types::GetRemainingFreeTrialDaysRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty member account.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account identifiers of the GuardDuty member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.get_remaining_free_trial_days(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accounts: [
    #       {
    #         account_id: "String",
    #         data_sources: {
    #           cloud_trail: {
    #             free_trial_days_remaining: 1
    #           },
    #           dns_logs: {
    #             free_trial_days_remaining: 1
    #           },
    #           flow_logs: {
    #             free_trial_days_remaining: 1
    #           },
    #           s3_logs: {
    #             free_trial_days_remaining: 1
    #           },
    #           kubernetes: {
    #             audit_logs: {
    #               free_trial_days_remaining: 1
    #             }
    #           },
    #           malware_protection: {
    #             scan_ec2_instance_with_findings: {
    #               free_trial_days_remaining: 1
    #             }
    #           }
    #         },
    #         features: [
    #           {
    #             name: "FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "AI_PROTECTION"],
    #             free_trial_days_remaining: 1
    #           }
    #         ]
    #       }
    #     ],
    #     unprocessed_accounts: [
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetRemainingFreeTrialDaysResponse]
    def get_remaining_free_trial_days(params = {}, options = {})
      request = build_request(:get_remaining_free_trial_days, params)
      request.send_request(options)
    end

    # <p>Retrieves the threat entity set associated with the specified <code>threatEntitySetId</code>.</p>
    # @param [Hash, Types::GetThreatEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the threat entity set resource.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_entity_set_id
    #   <p>The unique ID that helps GuardDuty identify the threat entity set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_threat_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     status: "INACTIVE" # One of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     error_details: "String"
    #   }
    # @return [Types::GetThreatEntitySetResponse]
    def get_threat_entity_set(params = {}, options = {})
      request = build_request(:get_threat_entity_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.</p>
    # @param [Hash, Types::GetThreatIntelSetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID of the threatIntelSet that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_threat_intel_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     status: "INACTIVE" # One of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     expected_bucket_owner: "AccountId"
    #   }
    # @return [Types::GetThreatIntelSetResponse]
    def get_threat_intel_set(params = {}, options = {})
      request = build_request(:get_threat_intel_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the trusted entity set associated with the specified <code>trustedEntitySetId</code>.</p>
    # @param [Hash, Types::GetTrustedEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector associated with this trusted entity set.</p>
    # @option params [String] :trusted_entity_set_id
    #   <p>The unique ID that helps GuardDuty identify the trusted entity set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_trusted_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name", # required
    #     format: "TXT" # One of: ["TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"], # required
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     status: "INACTIVE" # One of: ["INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     error_details: "String"
    #   }
    # @return [Types::GetTrustedEntitySetResponse]
    def get_trusted_entity_set(params = {}, options = {})
      request = build_request(:get_trusted_entity_set, params)
      request.send_request(options)
    end

    # <p>Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources, the cost returned will include only the usage so far under 30 days. This may differ from the cost metrics in the console, which project usage over 30 days to provide a monthly cost estimate. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations">Understanding How Usage Costs are Calculated</a>.</p>
    # @param [Hash, Types::GetUsageStatisticsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose usage statistics you want to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :usage_statistic_type
    #   <p>The type of usage statistics to retrieve.</p>
    # @option params [Types::UsageCriteria] :usage_criteria
    #   <p>Represents the criteria used for querying usage.</p>
    # @option params [String] :unit
    #   <p>The currency unit you would like to view your usage statistics in. Current valid values are USD.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     usage_statistic_type: "SUM_BY_ACCOUNT" # One of: ["SUM_BY_ACCOUNT", "SUM_BY_DATA_SOURCE", "SUM_BY_RESOURCE", "TOP_RESOURCES", "SUM_BY_FEATURES", "TOP_ACCOUNTS_BY_FEATURE"], # required
    #     usage_criteria: { # required
    #       account_ids: ["AccountId"],
    #       data_sources: ["FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS", "EC2_MALWARE_SCAN"]],
    #       resources: ["String"],
    #       features: ["FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "RDS_DBI_PROTECTION_PROVISIONED", "RDS_DBI_PROTECTION_SERVERLESS", "RDS_DBI_PROTECTION_LIMITLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_PROVISIONED", "RDS_DATA_ACTIVITY_DBI_PROTECTION_SERVERLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_LIMITLESS", "AI_PROTECTION"]]
    #     },
    #     unit: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_usage_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_statistics: {
    #       sum_by_account: [
    #         {
    #           account_id: "AccountId",
    #           total: {
    #             amount: "String",
    #             unit: "String"
    #           }
    #         }
    #       ],
    #       top_accounts_by_feature: [
    #         {
    #           feature: "FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "RDS_DBI_PROTECTION_PROVISIONED", "RDS_DBI_PROTECTION_SERVERLESS", "RDS_DBI_PROTECTION_LIMITLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_PROVISIONED", "RDS_DATA_ACTIVITY_DBI_PROTECTION_SERVERLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_LIMITLESS", "AI_PROTECTION"],
    #           accounts: [
    #             {
    #               account_id: "AccountId",
    #               total: {
    #                 amount: "String",
    #                 unit: "String"
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       sum_by_data_source: [
    #         {
    #           data_source: "FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS", "EC2_MALWARE_SCAN"],
    #           total: {
    #             amount: "String",
    #             unit: "String"
    #           }
    #         }
    #       ],
    #       sum_by_resource: [
    #         {
    #           resource: "String",
    #           total: {
    #             amount: "String",
    #             unit: "String"
    #           }
    #         }
    #       ],
    #       top_resources: [
    #         {
    #           resource: "String",
    #           total: {
    #             amount: "String",
    #             unit: "String"
    #           }
    #         }
    #       ],
    #       sum_by_feature: [
    #         {
    #           feature: "FLOW_LOGS" # One of: ["FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "RDS_DBI_PROTECTION_PROVISIONED", "RDS_DBI_PROTECTION_SERVERLESS", "RDS_DBI_PROTECTION_LIMITLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_PROVISIONED", "RDS_DATA_ACTIVITY_DBI_PROTECTION_SERVERLESS", "RDS_DATA_ACTIVITY_DBI_PROTECTION_LIMITLESS", "AI_PROTECTION"],
    #           total: {
    #             amount: "String",
    #             unit: "String"
    #           }
    #         }
    #       ]
    #     },
    #     next_token: "String"
    #   }
    # @return [Types::GetUsageStatisticsResponse]
    def get_usage_statistics(params = {}, options = {})
      request = build_request(:get_usage_statistics, params)
      request.send_request(options)
    end

    # <p>Invites Amazon Web Services accounts to become members of an organization administered by the Amazon Web Services account that invokes this API. If you are using Amazon Web Services Organizations to manage your GuardDuty environment, this step is not needed. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html">Managing accounts with organizations</a>.</p> <p>To invite Amazon Web Services accounts, the first step is to ensure that GuardDuty has been enabled in the potential member accounts. You can now invoke this API to add accounts by invitation. The invited accounts can either accept or decline the invitation from their GuardDuty accounts. Each invited Amazon Web Services account can choose to accept the invitation from only one Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html">Managing GuardDuty accounts by invitation</a>.</p> <p>After the invite has been accepted and you choose to disassociate a member account (by using <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html">DisassociateMembers</a>) from your account, the details of the member account obtained by invoking <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">CreateMembers</a>, including the associated email addresses, will be retained. This is done so that you can invoke InviteMembers without the need to invoke <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html">CreateMembers</a> again. To remove the details associated with a member account, you must also invoke <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a>. </p> <p>If you disassociate a member account that was added by invitation, the member account details obtained from this API, including the associated email addresses, will be retained. This is done so that the delegated administrator can invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html">InviteMembers</a> API without the need to invoke the CreateMembers API again. To remove the details associated with a member account, the delegated administrator must invoke the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html">DeleteMembers</a> API. </p> <p>When the member accounts added through Organizations are later disassociated, you (administrator) can't invite them by calling the InviteMembers API. You can create an association with these member accounts again only by calling the CreateMembers API.</p>
    # @param [Hash, Types::InviteMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty account with which you want to invite members.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the accounts that you want to invite to GuardDuty as members.</p>
    # @option params [Boolean] :disable_email_notification
    #   <p>A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.</p>
    # @option params [String] :message
    #   <p>The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #     disable_email_notification: false,
    #     message: "String"
    #   }
    #   options = {}
    #   response = client.invite_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::InviteMembersResponse]
    def invite_members(params = {}, options = {})
      request = build_request(:invite_members, params)
      request.send_request(options)
    end

    # <p>Lists coverage details for your GuardDuty account. If you're a GuardDuty administrator, you can retrieve all resources associated with the active member accounts in your organization.</p> <p>Make sure the accounts have Runtime Monitoring enabled and GuardDuty agent running on their resources.</p>
    # @param [Hash, Types::ListCoverageRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector whose coverage details you want to retrieve.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   <p>Represents the criteria used to filter the coverage details.</p>
    # @option params [Types::CoverageSortCriteria] :sort_criteria
    #   <p>Represents the criteria used to sort the coverage details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "RESOURCE_TYPE", "COVERAGE_STATUS", "ADDON_VERSION", "CLUSTER_NAME", "ECS_CLUSTER_NAME", "MANAGEMENT_TYPE", "EKS_CLUSTER_NAME", "AGENT_VERSION", "INSTANCE_ID", "CLUSTER_ARN"],
    #           filter_condition: {
    #             equals: ["String"],
    #             not_equals: ["String"]
    #           }
    #         }
    #       ]
    #     },
    #     sort_criteria: {
    #       attribute_name: "ACCOUNT_ID" # One of: ["ACCOUNT_ID", "COVERAGE_STATUS", "ISSUE", "ADDON_VERSION", "UPDATED_AT", "CLUSTER_NAME", "EKS_CLUSTER_NAME", "ECS_CLUSTER_NAME", "INSTANCE_ID"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_coverage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resources: [ # required
    #       {
    #         resource_id: "String",
    #         detector_id: "DetectorId",
    #         account_id: "AccountId",
    #         resource_details: {
    #           eks_cluster_details: {
    #             cluster_name: "String",
    #             covered_nodes: 1,
    #             compatible_nodes: 1,
    #             addon_details: {
    #               addon_version: "String",
    #               addon_status: "String"
    #             },
    #             management_type: "AUTO_MANAGED" # One of: ["AUTO_MANAGED", "MANUAL", "DISABLED"]
    #           },
    #           ecs_cluster_details: {
    #             cluster_name: "String",
    #             fargate_details: {
    #               issues: ["String"],
    #               management_type: "AUTO_MANAGED" # One of: ["AUTO_MANAGED", "MANUAL", "DISABLED"]
    #             },
    #             container_instance_details: {
    #               covered_container_instances: 1,
    #               compatible_container_instances: 1
    #             }
    #           },
    #           ec2_instance_details: {
    #             instance_id: "String",
    #             instance_type: "String",
    #             cluster_arn: "String",
    #             agent_details: {
    #               version: "String"
    #             },
    #             management_type: "AUTO_MANAGED" # One of: ["AUTO_MANAGED", "MANUAL", "DISABLED"]
    #           },
    #           resource_type: "EKS" # One of: ["EKS", "ECS", "EC2"]
    #         },
    #         coverage_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #         issue: "String",
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCoverageResponse]
    def list_coverage(params = {}, options = {})
      request = build_request(:list_coverage, params)
      request.send_request(options)
    end

    # <p>Returns all custom detection rule associations for your account. You can filter by rule ID and mode.</p>
    # @param [Hash, Types::ListCustomDetectionRuleAssociationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single page. Minimum value of 1, maximum value of 100.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous response. Use this token to retrieve the next page of results.</p>
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule to filter associations by.</p>
    # @option params [String] :mode
    #   <p>The rule execution mode to filter associations by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     rule_id: "RuleId",
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"]
    #   }
    #   options = {}
    #   response = client.list_custom_detection_rule_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_associations: [ # required
    #       {
    #         association_id: "AssociationId", # required
    #         arn: "DetectionRuleArn", # required
    #         rule_id: "RuleId", # required
    #         mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         expires_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCustomDetectionRuleAssociationsResponse]
    def list_custom_detection_rule_associations(params = {}, options = {})
      request = build_request(:list_custom_detection_rule_associations, params)
      request.send_request(options)
    end

    # <p>Returns all organization-level configurations for custom detection rules. You can filter the results by status.</p>
    # @param [Hash, Types::ListCustomDetectionRuleOrgConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single page. Minimum value of 1, maximum value of 100.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous response. Use this token to retrieve the next page of results.</p>
    # @option params [String] :status
    #   <p>The configuration status to filter by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "PROCESSING", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_custom_detection_rule_org_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configurations: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "PROCESSING", "FAILED"], # required
    #         status_reason: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         expires_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCustomDetectionRuleOrgConfigurationsResponse]
    def list_custom_detection_rule_org_configurations(params = {}, options = {})
      request = build_request(:list_custom_detection_rule_org_configurations, params)
      request.send_request(options)
    end

    # <p>Returns all available custom detection rules in GuardDuty. You can filter the results by data source, severity, tactic, technique, and service.</p>
    # @param [Hash, Types::ListCustomDetectionRulesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single page. Minimum value of 1, maximum value of 100.</p>
    # @option params [String] :next_token
    #   <p>A pagination token from a previous response. Use this token to retrieve the next page of results.</p>
    # @option params [Array<Types::DetectionRuleFilter>] :filters
    #   <p>A list of filter criteria to apply when listing custom detection rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filters: [
    #       {
    #         name: "name" # One of: ["name", "description", "dataSource", "severity", "tactic", "technique", "service"], # required
    #         values: ["DetectionRuleFilterValue"], # required
    #         condition: "EQUALS" # One of: ["EQUALS", "CONTAINS"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_custom_detection_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [ # required
    #       {
    #         rule_id: "RuleId", # required
    #         arn: "DetectionRuleArn", # required
    #         name: "RuleName", # required
    #         description: "DetectionRuleDescription", # required
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW"], # required
    #         data_source: "CloudTrailManagementEvent" # One of: ["CloudTrailManagementEvent", "RuntimeMonitoring"], # required
    #         tactic: "MitreTactic", # required
    #         technique: "MitreTechnique", # required
    #         service: "DetectionRuleServiceName", # required
    #         language: "SQL" # One of: ["SQL"],
    #         schema: "CloudTrail" # One of: ["CloudTrail"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCustomDetectionRulesResponse]
    def list_custom_detection_rules(params = {}, options = {})
      request = build_request(:list_custom_detection_rules, params)
      request.send_request(options)
    end

    # <p>Lists detectorIds of all the existing Amazon GuardDuty detector resources.</p>
    # @param [Hash, Types::ListDetectorsRequest] params
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_ids: ["DetectorId"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListDetectorsResponse]
    def list_detectors(params = {}, options = {})
      request = build_request(:list_detectors, params)
      request.send_request(options)
    end

    # <p>Returns a paginated list of the current filters.</p>
    # @param [Hash, Types::ListFiltersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the filter.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_filters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     filter_names: ["FilterName"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListFiltersResponse]
    def list_filters(params = {}, options = {})
      request = build_request(:list_filters, params)
      request.send_request(options)
    end

    # <p>Lists GuardDuty findings for the specified detector ID.</p> <p>There might be regional differences because some flags might not be available in all the Regions where GuardDuty is currently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::ListFindingsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that specifies the GuardDuty service whose findings you want to list.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>Represents the criteria used for querying findings. Valid values include:</p> <ul> <li> <p>JSON field name</p> </li> <li> <p>accountId</p> </li> <li> <p>region</p> </li> <li> <p>confidence</p> </li> <li> <p>id</p> </li> <li> <p>resource.accessKeyDetails.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.principalId</p> </li> <li> <p>resource.accessKeyDetails.userName</p> </li> <li> <p>resource.accessKeyDetails.userType</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.id</p> </li> <li> <p>resource.instanceDetails.imageId</p> </li> <li> <p>resource.instanceDetails.instanceId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicIp</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.subnetId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.vpcId</p> </li> <li> <p>resource.instanceDetails.tags.key</p> </li> <li> <p>resource.instanceDetails.tags.value</p> </li> <li> <p>resource.resourceType</p> </li> <li> <p>service.action.actionType</p> </li> <li> <p>service.action.awsApiCallAction.api</p> </li> <li> <p>service.action.awsApiCallAction.callerType</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.awsApiCallAction.serviceName</p> </li> <li> <p>service.action.dnsRequestAction.domain</p> </li> <li> <p>service.action.dnsRequestAction.domainWithSuffix</p> </li> <li> <p>service.action.networkConnectionAction.blocked</p> </li> <li> <p>service.action.networkConnectionAction.connectionDirection</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.protocol</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.port</p> </li> <li> <p>service.additionalInfo.threatListName</p> </li> <li> <p>service.archived</p> <p>When this attribute is set to 'true', only archived findings are listed. When it's set to 'false', only unarchived findings are listed. When this attribute is not set, all existing findings are listed.</p> </li> <li> <p>service.ebsVolumeScanDetails.scanId</p> </li> <li> <p>service.resourceRole</p> </li> <li> <p>severity</p> </li> <li> <p>type</p> </li> <li> <p>updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p> </li> </ul>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting findings.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #           matches: ["Match"],
    #           not_matches: ["NotMatch"]
    #         }
    #       }
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     },
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding_ids: ["FindingId"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListFindingsResponse]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated administrator account.</p>
    # @param [Hash, Types::ListIPSetsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with IPSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ip_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_set_ids: ["String"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListIPSetsResponse]
    def list_ip_sets(params = {}, options = {})
      request = build_request(:list_ip_sets, params)
      request.send_request(options)
    end

    # <p>This API is currently available as a preview. This feature is available in the following Amazon Web Services Regions: US East (N. Virginia), US East (Ohio), US West (Oregon), Canada (Central), Europe (Frankfurt), Europe (Ireland), Europe (London), Europe (Paris), Europe (Stockholm), and Asia Pacific (Tokyo).</p> <p>Returns a list of investigations associated with the specified GuardDuty detector.</p> <p>An administrator account sees all investigations across the organization. Member accounts see only the investigations that belong to them.</p>
    # @param [Hash, Types::ListInvestigationsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector whose investigations you want to list.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Types::InvestigationSortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting investigations.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     sort_criteria: {
    #       attribute_name: "START_TIME" # One of: ["START_TIME", "END_TIME", "STATUS", "RISK_LEVEL", "CONFIDENCE"],
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_investigations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     investigations: [ # required
    #       {
    #         investigation_id: "InvestigationId",
    #         status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "FAILED"],
    #         trigger_prompt: "TriggerPrompt",
    #         risk_level: "Info" # One of: ["Info", "Low", "Medium", "High", "Critical"],
    #         confidence: "Unknown" # One of: ["Unknown", "Low", "Medium", "High"],
    #         title: "InvestigationTitle",
    #         account_id: "String",
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInvestigationsResponse]
    def list_investigations(params = {}, options = {})
      request = build_request(:list_investigations, params)
      request.send_request(options)
    end

    # <p>Lists all GuardDuty membership invitations that were sent to the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListInvitationsRequest] params
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_invitations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invitations: [
    #       {
    #         account_id: "AccountId",
    #         invitation_id: "String",
    #         relationship_status: "String",
    #         invited_at: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListInvitationsResponse]
    def list_invitations(params = {}, options = {})
      request = build_request(:list_invitations, params)
      request.send_request(options)
    end

    # <p>Lists the Malware Protection plan IDs associated with the protected resources in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListMalwareProtectionPlansRequest] params
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of <code>NextToken</code> from the previous response to continue listing data. The default page size is 100 plans.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_malware_protection_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     malware_protection_plans: [
    #       {
    #         malware_protection_plan_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMalwareProtectionPlansResponse]
    def list_malware_protection_plans(params = {}, options = {})
      request = build_request(:list_malware_protection_plans, params)
      request.send_request(options)
    end

    # <p>Returns a list of malware scans. Each member account can view the malware scans for their own accounts. An administrator can view the malware scans for all of its members' accounts.</p>
    # @param [Hash, Types::ListMalwareScansRequest] params
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing results.</p>
    # @option params [Types::ListMalwareScansFilterCriteria] :filter_criteria
    #   <p>Represents the criteria used to filter the malware scan entries.</p>
    # @option params [Types::SortCriteria] :sort_criteria
    #   <p>Represents the criteria used for sorting malware scan entries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     filter_criteria: {
    #       list_malware_scans_filter_criterion: [
    #         {
    #           list_malware_scans_criterion_key: "RESOURCE_ARN" # One of: ["RESOURCE_ARN", "SCAN_ID", "ACCOUNT_ID", "GUARDDUTY_FINDING_ID", "RESOURCE_TYPE", "SCAN_START_TIME", "SCAN_STATUS", "SCAN_TYPE"],
    #           filter_condition: {
    #             equals_value: "NonEmptyString",
    #             greater_than: 1,
    #             less_than: 1
    #           }
    #         }
    #       ]
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC" # One of: ["ASC", "DESC"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_malware_scans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scans: [ # required
    #       {
    #         resource_arn: "NonEmptyString",
    #         resource_type: "EBS_RECOVERY_POINT" # One of: ["EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET", "S3_POINT_IN_TIME_RECOVERY"],
    #         scan_id: "NonEmptyString",
    #         scan_status: "RUNNING" # One of: ["RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"],
    #         scan_result_status: "NO_THREATS_FOUND" # One of: ["NO_THREATS_FOUND", "THREATS_FOUND"],
    #         scan_type: "BACKUP_INITIATED" # One of: ["BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"],
    #         scan_started_at: Time.now,
    #         scan_completed_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMalwareScansResponse]
    def list_malware_scans(params = {}, options = {})
      request = build_request(:list_malware_scans, params)
      request.send_request(options)
    end

    # <p>Lists details about all member accounts for the current GuardDuty administrator account.</p>
    # @param [Hash, Types::ListMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the member.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @option params [String] :only_associated
    #   <p>Specifies whether to only return associated members or to return all members (including members who haven't been invited yet or have been disassociated). Member accounts must have been previously associated with the GuardDuty administrator account using <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html"> <code>Create Members</code> </a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #     only_associated: "String"
    #   }
    #   options = {}
    #   response = client.list_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     members: [
    #       {
    #         account_id: "AccountId", # required
    #         detector_id: "DetectorId",
    #         master_id: "String", # required
    #         email: "Email", # required
    #         relationship_status: "String", # required
    #         invited_at: "String",
    #         updated_at: "String", # required
    #         administrator_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMembersResponse]
    def list_members(params = {}, options = {})
      request = build_request(:list_members, params)
      request.send_request(options)
    end

    # <p>Lists the accounts designated as GuardDuty delegated administrators. Only the organization's management account can run this API operation.</p>
    # @param [Hash, Types::ListOrganizationAdminAccountsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the <code>NextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_organization_admin_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     admin_accounts: [
    #       {
    #         admin_account_id: "String",
    #         admin_status: "ENABLED" # One of: ["ENABLED", "DISABLE_IN_PROGRESS"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListOrganizationAdminAccountsResponse]
    def list_organization_admin_accounts(params = {}, options = {})
      request = build_request(:list_organization_admin_accounts, params)
      request.send_request(options)
    end

    # <p>Returns a list of publishing destinations associated with the specified <code>detectorId</code>.</p>
    # @param [Hash, Types::ListPublishingDestinationsRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID for which you want to retrieve the publishing destination.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the <code>NextToken</code> value returned from the previous request to continue listing results after the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_publishing_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destinations: [ # required
    #       {
    #         destination_id: "String", # required
    #         destination_type: "S3" # One of: ["S3"], # required
    #         status: "PENDING_VERIFICATION" # One of: ["PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPublishingDestinationsResponse]
    def list_publishing_destinations(params = {}, options = {})
      request = build_request(:list_publishing_destinations, params)
      request.send_request(options)
    end

    # <p>Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, threat intel sets, and publishing destination, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GuardDutyArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the threat entity sets associated with the specified GuardDuty detector ID. If you use this operation from a member account, the threat entity sets that are returned as a response, belong to the administrator account.</p>
    # @param [Hash, Types::ListThreatEntitySetsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector that is associated with this threat entity set.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_threat_entity_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_entity_set_ids: ["String"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListThreatEntitySetsResponse]
    def list_threat_entity_sets(params = {}, options = {})
      request = build_request(:list_threat_entity_sets, params)
      request.send_request(options)
    end

    # <p>Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the administrator account are returned.</p>
    # @param [Hash, Types::ListThreatIntelSetsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that is associated with the threatIntelSet.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter to paginate results in the response. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_threat_intel_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     threat_intel_set_ids: ["String"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListThreatIntelSetsResponse]
    def list_threat_intel_sets(params = {}, options = {})
      request = build_request(:list_threat_intel_sets, params)
      request.send_request(options)
    end

    # <p>Lists the trusted entity sets associated with the specified GuardDuty detector ID. If you use this operation from a member account, the trusted entity sets that are returned as a response, belong to the administrator account.</p>
    # @param [Hash, Types::ListTrustedEntitySetsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector that is associated with this threat entity set.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Integer] :max_results
    #   <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50.</p>
    # @option params [String] :next_token
    #   <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_trusted_entity_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trusted_entity_set_ids: ["String"], # required
    #     next_token: "String"
    #   }
    # @return [Types::ListTrustedEntitySetsResponse]
    def list_trusted_entity_sets(params = {}, options = {})
      request = build_request(:list_trusted_entity_sets, params)
      request.send_request(options)
    end

    # <p>Initiates a malware scan for a specific S3 object. This API allows you to perform on-demand malware scanning of individual objects in S3 buckets that have Malware Protection for S3 enabled.</p> <p>When you use this API, the Amazon Web Services service terms for GuardDuty Malware Protection apply. For more information, see <a href="http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty">Amazon Web Services service terms for GuardDuty Malware Protection</a>.</p>
    # @param [Hash, Types::SendObjectMalwareScanRequest] params
    # @option params [Types::S3ObjectForSendObjectMalwareScan] :s3_object
    #   <p>The S3 object information for the object you want to scan. The bucket must have a Malware Protection plan configured to use this API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_object: {
    #       bucket: "String",
    #       key: "String",
    #       version_id: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.send_object_malware_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendObjectMalwareScanResponse]
    def send_object_malware_scan(params = {}, options = {})
      request = build_request(:send_object_malware_scan, params)
      request.send_request(options)
    end

    # <p>Initiates the malware scan. Invoking this API will automatically create the <a href="https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html">Service-linked role</a> in the corresponding account if the resourceArn belongs to an EC2 instance.</p> <p>When the malware scan starts, you can use the associated scan ID to track the status of the scan. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListMalwareScans.html">ListMalwareScans</a> and <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_GetMalwareScan.html">GetMalwareScan</a>.</p> <p>When you use this API, the Amazon Web Services service terms for GuardDuty Malware Protection apply. For more information, see <a href="http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty">Amazon Web Services service terms for GuardDuty Malware Protection</a>.</p>
    # @param [Hash, Types::StartMalwareScanRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource for which you invoked the API.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token for the create request.</p>
    # @option params [Types::StartMalwareScanConfiguration] :scan_configuration
    #   <p>Contains information about the configuration to be used for the malware scan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     scan_configuration: {
    #       role: "NonEmptyString", # required
    #       incremental_scan_details: {
    #         baseline_resource_arn: "NonEmptyString", # required
    #       },
    #       recovery_point: {
    #         backup_vault_name: "String", # required
    #         continuous_scan_details: {
    #           start_time: Time.now,
    #           end_time: Time.now, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_malware_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scan_id: "NonEmptyString"
    #   }
    # @return [Types::StartMalwareScanResponse]
    def start_malware_scan(params = {}, options = {})
      request = build_request(:start_malware_scan, params)
      request.send_request(options)
    end

    # <p>Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html">StopMonitoringMembers</a> operation.</p>
    # @param [Hash, Types::StartMonitoringMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector of the GuardDuty administrator account associated with the member accounts to monitor.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.start_monitoring_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::StartMonitoringMembersResponse]
    def start_monitoring_members(params = {}, options = {})
      request = build_request(:start_monitoring_members, params)
      request.send_request(options)
    end

    # <p>Stops GuardDuty monitoring for the specified member accounts. Use the <code>StartMonitoringMembers</code> operation to restart monitoring for those accounts.</p> <p>With <code>autoEnableOrganizationMembers</code> configuration for your organization set to <code>ALL</code>, you'll receive an error if you attempt to stop monitoring the member accounts in your organization.</p>
    # @param [Hash, Types::StopMonitoringMembersRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector associated with the GuardDuty administrator account that is monitoring member accounts.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of account IDs for the member accounts to stop monitoring.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   }
    #   options = {}
    #   response = client.stop_monitoring_members(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::StopMonitoringMembersResponse]
    def stop_monitoring_members(params = {}, options = {})
      request = build_request(:stop_monitoring_members, params)
      request.send_request(options)
    end

    # <p>Adds tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be added to a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GuardDutyArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Unarchives GuardDuty findings specified by the <code>findingIds</code>.</p>
    # @param [Hash, Types::UnarchiveFindingsRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector associated with the findings to unarchive.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings to unarchive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   }
    #   options = {}
    #   response = client.unarchive_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UnarchiveFindingsResponse]
    def unarchive_findings(params = {}, options = {})
      request = build_request(:unarchive_findings, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "GuardDutyArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the mode of an existing custom detection rule association.</p>
    # @param [Hash, Types::UpdateCustomDetectionRuleAssociationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :association_id
    #   <p>The unique identifier for the association to update.</p>
    # @option params [String] :mode
    #   <p>The rule execution mode. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     association_id: "AssociationId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #   }
    #   options = {}
    #   response = client.update_custom_detection_rule_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCustomDetectionRuleAssociationResponse]
    def update_custom_detection_rule_association(params = {}, options = {})
      request = build_request(:update_custom_detection_rule_association, params)
      request.send_request(options)
    end

    # <p>Updates the organization-level configuration for a custom detection rule, including the mode and include/exclude account lists.</p>
    # @param [Hash, Types::UpdateCustomDetectionRuleOrgConfigurationRequest] params
    # @option params [String] :rule_id
    #   <p>The unique identifier for the custom detection rule.</p>
    # @option params [String] :mode
    #   <p>The execution mode of the organization configuration. Valid values: <code>LIVE</code> | <code>DRY_RUN</code>.</p>
    # @option params [Array<String>] :include_account_ids
    #   <p>The account IDs to include in the organization configuration. Mutually exclusive with <code>ExcludeAccountIds</code>.</p>
    # @option params [Array<String>] :exclude_account_ids
    #   <p>The account IDs to exclude from the organization configuration. Mutually exclusive with <code>IncludeAccountIds</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     mode: "LIVE" # One of: ["LIVE", "DRY_RUN"], # required
    #     include_account_ids: ["AccountId"],
    #     exclude_account_ids: ["AccountId"]
    #   }
    #   options = {}
    #   response = client.update_custom_detection_rule_org_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCustomDetectionRuleOrgConfigurationResponse]
    def update_custom_detection_rule_org_configuration(params = {}, options = {})
      request = build_request(:update_custom_detection_rule_org_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the GuardDuty detector specified by the detector ID.</p> <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>) and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. You can add only one of these two features because Runtime Monitoring already includes the threat detection for Amazon EKS resources. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::UpdateDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Boolean] :enable
    #   <p>Specifies whether the detector is enabled or not enabled.</p>
    # @option params [String] :finding_publishing_frequency
    #   <p>An enum value that specifies how frequently findings are exported, such as to CloudWatch Events.</p>
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @option params [Array<Types::DetectorFeatureConfiguration>] :features
    #   <p>Provides the features that will be updated for the detector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     enable: false,
    #     finding_publishing_frequency: "FIFTEEN_MINUTES" # One of: ["FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"],
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false
    #         }
    #       }
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION", "AI_ANALYST"],
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDetectorResponse]
    def update_detector(params = {}, options = {})
      request = build_request(:update_detector, params)
      request.send_request(options)
    end

    # <p>Updates the filter specified by the filter name.</p>
    # @param [Hash, Types::UpdateFilterRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :filter_name
    #   <p>The name of the filter.</p>
    # @option params [String] :description
    #   <p>The description of the filter. Valid characters include alphanumeric characters, and special characters such as hyphen, period, colon, underscore, parentheses (<code>{ }</code>, <code>[ ]</code>, and <code>( )</code>), forward slash, horizontal tab, vertical tab, newline, form feed, return, and whitespace.</p>
    # @option params [String] :action
    #   <p>Specifies the action that is to be applied to the findings that match the filter.</p> <p>Default: NOOP</p>
    # @option params [Integer] :rank
    #   <p>Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.</p>
    # @option params [Types::FindingCriteria] :finding_criteria
    #   <p>Represents the criteria to be used in the filter for querying findings. The following fields are available for filtering:</p> <ul> <li> <p>accountId</p> </li> <li> <p>arn</p> </li> <li> <p>associatedAttackSequenceArn</p> </li> <li> <p>confidence</p> </li> <li> <p>createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>id</p> </li> <li> <p>partition</p> </li> <li> <p>region</p> </li> <li> <p>resource.accessKeyDetails.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.accountId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.arn</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.attributes.mfaAuthenticated</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.ec2RoleDelivery</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.invokedBy</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.accountId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.arn</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.principalId</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.type</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sessionIssuer.userName</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.sourceIdentity</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.webIdFederationData.attributes</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.sessionContext.webIdFederationData.federatedProvider</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.type</p> </li> <li> <p>resource.accessKeyDetails.userIdentity.userName</p> </li> <li> <p>resource.accessKeyDetails.userName</p> </li> <li> <p>resource.accessKeyDetails.userType</p> </li> <li> <p>resource.bedrockGuardrailDetails.guardrailArn</p> </li> <li> <p>resource.bedrockGuardrailDetails.guardrailVersion</p> </li> <li> <p>resource.containerDetails.containerRuntime</p> </li> <li> <p>resource.containerDetails.id</p> </li> <li> <p>resource.containerDetails.image</p> </li> <li> <p>resource.containerDetails.imagePrefix</p> </li> <li> <p>resource.containerDetails.name</p> </li> <li> <p>resource.containerDetails.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.containerDetails.securityContext.privileged</p> </li> <li> <p>resource.containerDetails.volumeMounts.mountPath</p> </li> <li> <p>resource.containerDetails.volumeMounts.name</p> </li> <li> <p>resource.ebsSnapshotDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.deviceName</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.encryptionType</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.kmsKeyArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeArn</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeSizeInGB</p> </li> <li> <p>resource.ebsVolumeDetails.scannedVolumeDetails.volumeType</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.deviceName</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.encryptionType</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.kmsKeyArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.snapshotArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeArn</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeSizeInGB</p> </li> <li> <p>resource.ebsVolumeDetails.skippedVolumeDetails.volumeType</p> </li> <li> <p>resource.ec2ImageDetails.imageArn</p> </li> <li> <p>resource.ecsClusterDetails.activeServicesCount</p> </li> <li> <p>resource.ecsClusterDetails.arn</p> </li> <li> <p>resource.ecsClusterDetails.name</p> </li> <li> <p>resource.ecsClusterDetails.registeredContainerInstancesCount</p> </li> <li> <p>resource.ecsClusterDetails.runningTasksCount</p> </li> <li> <p>resource.ecsClusterDetails.status</p> </li> <li> <p>resource.ecsClusterDetails.tags.key</p> </li> <li> <p>resource.ecsClusterDetails.tags.value</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.arn</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.containerRuntime</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.id</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.image</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.imagePrefix</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.name</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.securityContext.privileged</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.volumeMounts.mountPath</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.containers.volumeMounts.name</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.definitionArn</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.group</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.launchType</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.startedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.startedBy</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.tags.key</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.tags.value</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.version</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.volumes.hostPath.path</p> </li> <li> <p>resource.ecsClusterDetails.taskDetails.volumes.name</p> </li> <li> <p>resource.eksClusterDetails.arn</p> </li> <li> <p>resource.eksClusterDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.eksClusterDetails.name</p> </li> <li> <p>resource.eksClusterDetails.status</p> </li> <li> <p>resource.eksClusterDetails.tags.key</p> </li> <li> <p>resource.eksClusterDetails.tags.value</p> </li> <li> <p>resource.eksClusterDetails.vpcId</p> </li> <li> <p>resource.instanceDetails.availabilityZone</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.arn</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.id</p> </li> <li> <p>resource.instanceDetails.imageDescription</p> </li> <li> <p>resource.instanceDetails.imageId</p> </li> <li> <p>resource.instanceDetails.instanceId</p> </li> <li> <p>resource.instanceDetails.instanceState</p> </li> <li> <p>resource.instanceDetails.instanceType</p> </li> <li> <p>resource.instanceDetails.launchTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.networkInterfaceId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicIp</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.subnetId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.vpcId</p> </li> <li> <p>resource.instanceDetails.outpostArn</p> </li> <li> <p>resource.instanceDetails.platform</p> </li> <li> <p>resource.instanceDetails.productCodes.productCodeId</p> </li> <li> <p>resource.instanceDetails.productCodes.productCodeType</p> </li> <li> <p>resource.instanceDetails.tags.key</p> </li> <li> <p>resource.instanceDetails.tags.value</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.groups</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.impersonatedUser.groups</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.impersonatedUser.username</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.sessionName</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.uid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesUserDetails.username</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.containerRuntime</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.id</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.securityContext.allowPrivilegeEscalation</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.securityContext.privileged</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.volumeMounts.mountPath</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.containers.volumeMounts.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostIpc</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostNetwork</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.hostPid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.name</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.namespace</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.serviceAccountName</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.type</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.uid</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.volumes.hostPath.path</p> </li> <li> <p>resource.kubernetesDetails.kubernetesWorkloadDetails.volumes.name</p> </li> <li> <p>resource.lambdaDetails.description</p> </li> <li> <p>resource.lambdaDetails.functionArn</p> </li> <li> <p>resource.lambdaDetails.functionName</p> </li> <li> <p>resource.lambdaDetails.functionVersion</p> </li> <li> <p>resource.lambdaDetails.lastModifiedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.lambdaDetails.revisionId</p> </li> <li> <p>resource.lambdaDetails.role</p> </li> <li> <p>resource.lambdaDetails.tags.key</p> </li> <li> <p>resource.lambdaDetails.tags.value</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.securityGroups.groupId</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.securityGroups.groupName</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.subnetIds</p> </li> <li> <p>resource.lambdaDetails.vpcConfig.vpcId</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbClusterIdentifier</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbInstanceArn</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbInstanceIdentifier</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbSecurityGroups.name</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbSecurityGroups.status</p> </li> <li> <p>resource.rdsDbInstanceDetails.dbiResourceId</p> </li> <li> <p>resource.rdsDbInstanceDetails.engine</p> </li> <li> <p>resource.rdsDbInstanceDetails.engineVersion</p> </li> <li> <p>resource.rdsDbInstanceDetails.iamDatabaseAuthenticationEnabled</p> </li> <li> <p>resource.rdsDbInstanceDetails.publiclyAccessible</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcId</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcSecurityGroups.status</p> </li> <li> <p>resource.rdsDbInstanceDetails.vpcSecurityGroups.vpcSecurityGroupId</p> </li> <li> <p>resource.rdsDbUserDetails.application</p> </li> <li> <p>resource.rdsDbUserDetails.authMethod</p> </li> <li> <p>resource.rdsDbUserDetails.database</p> </li> <li> <p>resource.rdsDbUserDetails.ssl</p> </li> <li> <p>resource.rdsDbUserDetails.user</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbClusterIdentifier</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupArn</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupIdentifier</p> </li> <li> <p>resource.rdsLimitlessDbDetails.dbShardGroupResourceId</p> </li> <li> <p>resource.rdsLimitlessDbDetails.engine</p> </li> <li> <p>resource.rdsLimitlessDbDetails.engineVersion</p> </li> <li> <p>resource.rdsLimitlessDbDetails.tags.key</p> </li> <li> <p>resource.rdsLimitlessDbDetails.tags.value</p> </li> <li> <p>resource.recoveryPointDetails.backupVaultName</p> </li> <li> <p>resource.recoveryPointDetails.recoveryPointArn</p> </li> <li> <p>resource.resourceType</p> </li> <li> <p>resource.s3BucketDetails.arn</p> </li> <li> <p>resource.s3BucketDetails.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>resource.s3BucketDetails.defaultServerSideEncryption.encryptionType</p> </li> <li> <p>resource.s3BucketDetails.defaultServerSideEncryption.kmsMasterKeyArn</p> </li> <li> <p>resource.s3BucketDetails.name</p> </li> <li> <p>resource.s3BucketDetails.owner.id</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.effectivePermission</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.blockPublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.blockPublicPolicy</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.ignorePublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.accountLevelPermissions.blockPublicAccess.restrictPublicBuckets</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.accessControlList.allowsPublicReadAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.accessControlList.allowsPublicWriteAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.blockPublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.blockPublicPolicy</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.ignorePublicAcls</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.blockPublicAccess.restrictPublicBuckets</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.bucketPolicy.allowsPublicReadAccess</p> </li> <li> <p>resource.s3BucketDetails.publicAccess.permissionConfiguration.bucketLevelPermissions.bucketPolicy.allowsPublicWriteAccess</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.eTag</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.hash</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.key</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.objectArn</p> </li> <li> <p>resource.s3BucketDetails.s3ObjectDetails.versionId</p> </li> <li> <p>resource.s3BucketDetails.tags.key</p> </li> <li> <p>resource.s3BucketDetails.tags.value</p> </li> <li> <p>resource.s3BucketDetails.type</p> </li> <li> <p>schemaVersion</p> </li> <li> <p>service.action.actionType</p> </li> <li> <p>service.action.awsApiCallAction.api</p> </li> <li> <p>service.action.awsApiCallAction.callerType</p> </li> <li> <p>service.action.awsApiCallAction.domainDetails.domain</p> </li> <li> <p>service.action.awsApiCallAction.errorCode</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.accountId</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.affiliated</p> </li> <li> <p>service.action.awsApiCallAction.remoteAccountDetails.awsServiceName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.awsApiCallAction.serviceName</p> </li> <li> <p>service.action.awsApiCallAction.userAgent</p> </li> <li> <p>service.action.dnsRequestAction.blocked</p> </li> <li> <p>service.action.dnsRequestAction.domain</p> </li> <li> <p>service.action.dnsRequestAction.domainWithSuffix</p> </li> <li> <p>service.action.dnsRequestAction.protocol</p> </li> <li> <p>service.action.dnsRequestAction.vpcOwnerAccountId</p> </li> <li> <p>service.action.kubernetesApiCallAction.namespace</p> </li> <li> <p>service.action.kubernetesApiCallAction.parameters</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.kubernetesApiCallAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.kubernetesApiCallAction.requestUri</p> </li> <li> <p>service.action.kubernetesApiCallAction.resource</p> </li> <li> <p>service.action.kubernetesApiCallAction.resourceName</p> </li> <li> <p>service.action.kubernetesApiCallAction.sourceIPs</p> </li> <li> <p>service.action.kubernetesApiCallAction.statusCode</p> </li> <li> <p>service.action.kubernetesApiCallAction.subresource</p> </li> <li> <p>service.action.kubernetesApiCallAction.userAgent</p> </li> <li> <p>service.action.kubernetesApiCallAction.verb</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.allowed</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.namespace</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.resource</p> </li> <li> <p>service.action.kubernetesPermissionCheckedDetails.verb</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.kind</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.name</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.roleRefKind</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.roleRefName</p> </li> <li> <p>service.action.kubernetesRoleBindingDetails.uid</p> </li> <li> <p>service.action.kubernetesRoleDetails.kind</p> </li> <li> <p>service.action.kubernetesRoleDetails.name</p> </li> <li> <p>service.action.kubernetesRoleDetails.uid</p> </li> <li> <p>service.action.networkConnectionAction.blocked</p> </li> <li> <p>service.action.networkConnectionAction.connectionDirection</p> </li> <li> <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.localIpDetails.ipAddressV6</p> </li> <li> <p>service.action.networkConnectionAction.localNetworkInterface</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.portName</p> </li> <li> <p>service.action.networkConnectionAction.protocol</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.portName</p> </li> <li> <p>service.action.portProbeAction.blocked</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localIpDetails.ipAddressV4</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localIpDetails.ipAddressV6</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localPortDetails.port</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.localPortDetails.portName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.portProbeAction.portProbeDetails.remoteIpDetails.organization.org</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.application</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.failedLoginAttempts</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.successfulLoginAttempts</p> </li> <li> <p>service.action.rdsLoginAttemptAction.loginAttributes.user</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.country.countryCode</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.geoLocation.lat</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.geoLocation.lon</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.ipAddressV6</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.isp</p> </li> <li> <p>service.action.rdsLoginAttemptAction.remoteIpDetails.organization.org</p> </li> <li> <p>service.additionalInfo.agentDetails.agentId</p> </li> <li> <p>service.additionalInfo.agentDetails.agentVersion</p> </li> <li> <p>service.additionalInfo.anomalies.anomalousAPIs</p> </li> <li> <p>service.additionalInfo.authenticationMethod</p> </li> <li> <p>service.additionalInfo.averagePacketSizeIn</p> </li> <li> <p>service.additionalInfo.averagePacketSizeOut</p> </li> <li> <p>service.additionalInfo.context</p> </li> <li> <p>service.additionalInfo.domain</p> </li> <li> <p>service.additionalInfo.inBytes</p> </li> <li> <p>service.additionalInfo.localNetworkInterfaceOwner</p> </li> <li> <p>service.additionalInfo.localPort</p> </li> <li> <p>service.additionalInfo.outBytes</p> </li> <li> <p>service.additionalInfo.packetsIn</p> </li> <li> <p>service.additionalInfo.packetsOut</p> </li> <li> <p>service.additionalInfo.policyArn</p> </li> <li> <p>service.additionalInfo.policyName</p> </li> <li> <p>service.additionalInfo.remotePort</p> </li> <li> <p>service.additionalInfo.sample</p> </li> <li> <p>service.additionalInfo.scannedPort</p> </li> <li> <p>service.additionalInfo.threatFileSha256</p> </li> <li> <p>service.additionalInfo.threatListName</p> </li> <li> <p>service.additionalInfo.threatName</p> </li> <li> <p>service.additionalInfo.totalBytesIn</p> </li> <li> <p>service.additionalInfo.totalBytesOut</p> </li> <li> <p>service.additionalInfo.type</p> </li> <li> <p>service.additionalInfo.unusual.asnOrg</p> </li> <li> <p>service.additionalInfo.unusual.port</p> </li> <li> <p>service.additionalInfo.unusualProtocol</p> </li> <li> <p>service.additionalInfo.userAgent.fullUserAgent</p> </li> <li> <p>service.additionalInfo.userAgent.userAgentCategory</p> </li> <li> <p>service.additionalInfo.value</p> </li> <li> <p>service.additionalInfo.vpcOwnerAccountId</p> </li> <li> <p>service.archived</p> </li> <li> <p>service.count</p> </li> <li> <p>service.detection.sequence.actors.id</p> </li> <li> <p>service.detection.sequence.actors.process.name</p> </li> <li> <p>service.detection.sequence.actors.process.path</p> </li> <li> <p>service.detection.sequence.actors.process.sha256</p> </li> <li> <p>service.detection.sequence.actors.session.createdTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.actors.session.issuer</p> </li> <li> <p>service.detection.sequence.actors.session.mfaStatus</p> </li> <li> <p>service.detection.sequence.actors.session.uid</p> </li> <li> <p>service.detection.sequence.actors.user.account.account</p> </li> <li> <p>service.detection.sequence.actors.user.account.uid</p> </li> <li> <p>service.detection.sequence.actors.user.credentialUid</p> </li> <li> <p>service.detection.sequence.actors.user.name</p> </li> <li> <p>service.detection.sequence.actors.user.type</p> </li> <li> <p>service.detection.sequence.actors.user.uid</p> </li> <li> <p>service.detection.sequence.additionalSequenceTypes</p> </li> <li> <p>service.detection.sequence.description</p> </li> <li> <p>service.detection.sequence.endpoints.autonomousSystem.name</p> </li> <li> <p>service.detection.sequence.endpoints.autonomousSystem.number</p> </li> <li> <p>service.detection.sequence.endpoints.connection.direction</p> </li> <li> <p>service.detection.sequence.endpoints.domain</p> </li> <li> <p>service.detection.sequence.endpoints.id</p> </li> <li> <p>service.detection.sequence.endpoints.ip</p> </li> <li> <p>service.detection.sequence.endpoints.location.city</p> </li> <li> <p>service.detection.sequence.endpoints.location.country</p> </li> <li> <p>service.detection.sequence.endpoints.location.lat</p> </li> <li> <p>service.detection.sequence.endpoints.location.lon</p> </li> <li> <p>service.detection.sequence.endpoints.port</p> </li> <li> <p>service.detection.sequence.resources.accountId</p> </li> <li> <p>service.detection.sequence.resources.cloudPartition</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.principalId</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.userName</p> </li> <li> <p>service.detection.sequence.resources.data.accessKey.userType</p> </li> <li> <p>service.detection.sequence.resources.data.autoscalingAutoScalingGroup.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.cloudformationStack.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.container.image</p> </li> <li> <p>service.detection.sequence.resources.data.container.imageUid</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Image.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.availabilityZone</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.ec2NetworkInterfaceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.iamInstanceProfile.arn</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.iamInstanceProfile.id</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.imageDescription</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.instanceState</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.instanceType</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.outpostArn</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.platform</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.productCodes.productCodeId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Instance.productCodes.productCodeType</p> </li> <li> <p>service.detection.sequence.resources.data.ec2LaunchTemplate.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ec2LaunchTemplate.version</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.ipv6Addresses</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.privateIpAddresses.privateDnsName</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.privateIpAddresses.privateIpAddress</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.publicIp</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.securityGroups.groupId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.securityGroups.groupName</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.subNetId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2NetworkInterface.vpcId</p> </li> <li> <p>service.detection.sequence.resources.data.ec2Vpc.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsCluster.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsCluster.status</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.containerUids</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.launchType</p> </li> <li> <p>service.detection.sequence.resources.data.ecsTask.taskDefinitionArn</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.arn</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.status</p> </li> <li> <p>service.detection.sequence.resources.data.eksCluster.vpcId</p> </li> <li> <p>service.detection.sequence.resources.data.iamInstanceProfile.ec2InstanceUids</p> </li> <li> <p>service.detection.sequence.resources.data.iamInstanceProfile.id</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.containerUids</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.namespace</p> </li> <li> <p>service.detection.sequence.resources.data.kubernetesWorkload.type</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicAclAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicAclIgnoreBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicBucketRestrictBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.accountPublicAccess.publicPolicyAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicAclAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicAclIgnoreBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicBucketRestrictBehavior</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.bucketPublicAccess.publicPolicyAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.effectivePermission</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.encryptionKeyArn</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.encryptionType</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.ownerId</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.publicReadAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.publicWriteAccess</p> </li> <li> <p>service.detection.sequence.resources.data.s3Bucket.s3ObjectUids</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.eTag</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.key</p> </li> <li> <p>service.detection.sequence.resources.data.s3Object.versionId</p> </li> <li> <p>service.detection.sequence.resources.name</p> </li> <li> <p>service.detection.sequence.resources.region</p> </li> <li> <p>service.detection.sequence.resources.resourceType</p> </li> <li> <p>service.detection.sequence.resources.service</p> </li> <li> <p>service.detection.sequence.resources.tags.key</p> </li> <li> <p>service.detection.sequence.resources.tags.value</p> </li> <li> <p>service.detection.sequence.resources.uid</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.key</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.title</p> </li> <li> <p>service.detection.sequence.sequenceIndicators.values</p> </li> <li> <p>service.detection.sequence.signals.actorIds</p> </li> <li> <p>service.detection.sequence.signals.count</p> </li> <li> <p>service.detection.sequence.signals.createdAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.description</p> </li> <li> <p>service.detection.sequence.signals.endpointIds</p> </li> <li> <p>service.detection.sequence.signals.firstSeenAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.lastSeenAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.signals.name</p> </li> <li> <p>service.detection.sequence.signals.resourceUids</p> </li> <li> <p>service.detection.sequence.signals.severity</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.key</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.title</p> </li> <li> <p>service.detection.sequence.signals.signalIndicators.values</p> </li> <li> <p>service.detection.sequence.signals.type</p> </li> <li> <p>service.detection.sequence.signals.uid</p> </li> <li> <p>service.detection.sequence.signals.updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.detection.sequence.uid</p> </li> <li> <p>service.detectorId</p> </li> <li> <p>service.ebsVolumeScanDetails.scanCompletedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.count</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.severity</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.highestSeverityThreatDetails.threatName</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.files</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.totalGb</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.scannedItemCount.volumes</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.itemCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.shortened</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.fileName</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.filePath</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.volumeArn</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.itemCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.uniqueThreatNameCount</p> </li> <li> <p>service.ebsVolumeScanDetails.scanDetections.threatsDetectedItemCount.files</p> </li> <li> <p>service.ebsVolumeScanDetails.scanId</p> </li> <li> <p>service.ebsVolumeScanDetails.scanStartedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.ebsVolumeScanDetails.scanType</p> </li> <li> <p>service.ebsVolumeScanDetails.sources</p> </li> <li> <p>service.ebsVolumeScanDetails.triggerFindingId</p> </li> <li> <p>service.eventFirstSeen</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.eventLastSeen</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatFileSha256</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatListName</p> </li> <li> <p>service.evidence.threatIntelligenceDetails.threatNames</p> </li> <li> <p>service.featureName</p> </li> <li> <p>service.malwareScanDetails.scanCategory</p> </li> <li> <p>service.malwareScanDetails.scanConfiguration.incrementalScanDetails.baselineResourceArn</p> </li> <li> <p>service.malwareScanDetails.scanConfiguration.triggerType</p> </li> <li> <p>service.malwareScanDetails.scanId</p> </li> <li> <p>service.malwareScanDetails.scanType</p> </li> <li> <p>service.malwareScanDetails.threats.count</p> </li> <li> <p>service.malwareScanDetails.threats.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.additionalInfo.deviceName</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.additionalInfo.versionId</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.itemPath</p> </li> <li> <p>service.malwareScanDetails.threats.itemDetails.resourceArn</p> </li> <li> <p>service.malwareScanDetails.threats.itemPaths.hash</p> </li> <li> <p>service.malwareScanDetails.threats.itemPaths.nestedItemPath</p> </li> <li> <p>service.malwareScanDetails.threats.name</p> </li> <li> <p>service.malwareScanDetails.threats.source</p> </li> <li> <p>service.malwareScanDetails.uniqueThreatCount</p> </li> <li> <p>service.resourceRole</p> </li> <li> <p>service.runtimeDetails.context.addressFamily</p> </li> <li> <p>service.runtimeDetails.context.commandLineExample</p> </li> <li> <p>service.runtimeDetails.context.fileOperation</p> </li> <li> <p>service.runtimeDetails.context.filePath</p> </li> <li> <p>service.runtimeDetails.context.fileSystemType</p> </li> <li> <p>service.runtimeDetails.context.flags</p> </li> <li> <p>service.runtimeDetails.context.ianaProtocolNumber</p> </li> <li> <p>service.runtimeDetails.context.ldPreloadValue</p> </li> <li> <p>service.runtimeDetails.context.libraryPath</p> </li> <li> <p>service.runtimeDetails.context.memoryRegions</p> </li> <li> <p>service.runtimeDetails.context.modifiedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.euid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.executablePath</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.executableSha256</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.euid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.name</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.pid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.userId</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.name</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.pid</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.pwd</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.user</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.userId</p> </li> <li> <p>service.runtimeDetails.context.modifyingProcess.uuid</p> </li> <li> <p>service.runtimeDetails.context.moduleFilePath</p> </li> <li> <p>service.runtimeDetails.context.moduleName</p> </li> <li> <p>service.runtimeDetails.context.moduleSha256</p> </li> <li> <p>service.runtimeDetails.context.mountSource</p> </li> <li> <p>service.runtimeDetails.context.mountTarget</p> </li> <li> <p>service.runtimeDetails.context.relatedFilePaths</p> </li> <li> <p>service.runtimeDetails.context.releaseAgentPath</p> </li> <li> <p>service.runtimeDetails.context.runcBinaryPath</p> </li> <li> <p>service.runtimeDetails.context.scriptPath</p> </li> <li> <p>service.runtimeDetails.context.serviceName</p> </li> <li> <p>service.runtimeDetails.context.shellHistoryFilePath</p> </li> <li> <p>service.runtimeDetails.context.socketPath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.euid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.executablePath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.executableSha256</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.euid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.name</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.pid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.userId</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.name</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.namespacePid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.parentUuid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.pid</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.pwd</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.user</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.userId</p> </li> <li> <p>service.runtimeDetails.context.targetProcess.uuid</p> </li> <li> <p>service.runtimeDetails.context.threatFilePath</p> </li> <li> <p>service.runtimeDetails.context.toolCategory</p> </li> <li> <p>service.runtimeDetails.context.toolName</p> </li> <li> <p>service.runtimeDetails.process.euid</p> </li> <li> <p>service.runtimeDetails.process.executablePath</p> </li> <li> <p>service.runtimeDetails.process.executableSha256</p> </li> <li> <p>service.runtimeDetails.process.lineage.euid</p> </li> <li> <p>service.runtimeDetails.process.lineage.executablePath</p> </li> <li> <p>service.runtimeDetails.process.lineage.name</p> </li> <li> <p>service.runtimeDetails.process.lineage.namespacePid</p> </li> <li> <p>service.runtimeDetails.process.lineage.parentUuid</p> </li> <li> <p>service.runtimeDetails.process.lineage.pid</p> </li> <li> <p>service.runtimeDetails.process.lineage.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.process.lineage.userId</p> </li> <li> <p>service.runtimeDetails.process.lineage.uuid</p> </li> <li> <p>service.runtimeDetails.process.name</p> </li> <li> <p>service.runtimeDetails.process.namespacePid</p> </li> <li> <p>service.runtimeDetails.process.parentUuid</p> </li> <li> <p>service.runtimeDetails.process.pid</p> </li> <li> <p>service.runtimeDetails.process.pwd</p> </li> <li> <p>service.runtimeDetails.process.startTime</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> <li> <p>service.runtimeDetails.process.user</p> </li> <li> <p>service.runtimeDetails.process.userId</p> </li> <li> <p>service.runtimeDetails.process.uuid</p> </li> <li> <p>service.serviceName</p> </li> <li> <p>service.userFeedback</p> </li> <li> <p>severity</p> <p>To configure severity based filters, use the following for the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html">FindingCriteria</a> condition:</p> <ul> <li> <p> <b>Low</b>: <code>["1", "2", "3"]</code> </p> </li> <li> <p> <b>Medium</b>: <code>["4", "5", "6"]</code> </p> </li> <li> <p> <b>High</b>: <code>["7", "8"]</code> </p> </li> <li> <p> <b>Critical</b>: <code>["9", "10"]</code> </p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html">Findings severity levels</a> in the <i>Amazon GuardDuty User Guide</i>.</p> </li> <li> <p>type</p> </li> <li> <p>updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format. Ex: 1486685375000</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #     description: "FilterDescription",
    #     action: "NOOP" # One of: ["NOOP", "ARCHIVE"],
    #     rank: 1,
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #           matches: ["Match"],
    #           not_matches: ["NotMatch"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_filter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "FilterName", # required
    #   }
    # @return [Types::UpdateFilterResponse]
    def update_filter(params = {}, options = {})
      request = build_request(:update_filter, params)
      request.send_request(options)
    end

    # <p>Marks the specified GuardDuty findings as useful or not useful.</p>
    # @param [Hash, Types::UpdateFindingsFeedbackRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that is associated with the findings for which you want to update the feedback.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :finding_ids
    #   <p>The IDs of the findings that you want to mark as useful or not useful.</p>
    # @option params [String] :feedback
    #   <p>The feedback for the finding.</p>
    # @option params [String] :comments
    #   <p>Additional feedback about the GuardDuty findings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     feedback: "USEFUL" # One of: ["USEFUL", "NOT_USEFUL"], # required
    #     comments: "SensitiveString"
    #   }
    #   options = {}
    #   response = client.update_findings_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFindingsFeedbackResponse]
    def update_findings_feedback(params = {}, options = {})
      request = build_request(:update_findings_feedback, params)
      request.send_request(options)
    end

    # <p>Updates the IPSet specified by the IPSet ID.</p>
    # @param [Hash, Types::UpdateIPSetRequest] params
    # @option params [String] :detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :ip_set_id
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    # @option params [String] :name
    #   <p>The unique ID that specifies the IPSet that you want to update.</p>
    # @option params [String] :location
    #   <p>The updated URI of the file that contains the IPSet. </p>
    # @option params [Boolean] :activate
    #   <p>The updated Boolean value that specifies whether the IPSet is active or not.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #     expected_bucket_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIPSetResponse]
    def update_ip_set(params = {}, options = {})
      request = build_request(:update_ip_set, params)
      request.send_request(options)
    end

    # <p>Updates an existing Malware Protection plan resource.</p>
    # @param [Hash, Types::UpdateMalwareProtectionPlanRequest] params
    # @option params [String] :malware_protection_plan_id
    #   <p>A unique identifier associated with the Malware Protection plan.</p>
    # @option params [String] :role
    #   <p>Amazon Resource Name (ARN) of the IAM role with permissions to scan and add tags to the associated protected resource.</p>
    # @option params [Types::MalwareProtectionPlanActions] :actions
    #   <p>Information about whether the tags will be added to the S3 object after scanning.</p>
    # @option params [Types::UpdateProtectedResource] :protected_resource
    #   <p>Information about the protected resource that is associated with the created Malware Protection plan. Presently, <code>S3Bucket</code> is the only supported protected resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     malware_protection_plan_id: "String", # required
    #     role: "String",
    #     actions: {
    #       tagging: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     protected_resource: {
    #       s3_bucket: {
    #         object_prefixes: ["String"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_malware_protection_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_malware_protection_plan(params = {}, options = {})
      request = build_request(:update_malware_protection_plan, params)
      request.send_request(options)
    end

    # <p>Updates the malware scan settings.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::UpdateMalwareScanSettingsRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the detector that specifies the GuardDuty service where you want to update scan settings.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Types::ScanResourceCriteria] :scan_resource_criteria
    #   <p>Represents the criteria to be used in the filter for selecting resources to scan.</p>
    # @option params [String] :ebs_snapshot_preservation
    #   <p>An enum value representing possible snapshot preservation settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     scan_resource_criteria: {
    #       include: {
    #         "ScanCriterionKey" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ]
    #         }
    #       },
    #       exclude: {
    #         "ScanCriterionKey" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue"
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     ebs_snapshot_preservation: "NO_RETENTION" # One of: ["NO_RETENTION", "RETENTION_WITH_FINDING"]
    #   }
    #   options = {}
    #   response = client.update_malware_scan_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateMalwareScanSettingsResponse]
    def update_malware_scan_settings(params = {}, options = {})
      request = build_request(:update_malware_scan_settings, params)
      request.send_request(options)
    end

    # <p>Contains information on member accounts to be updated.</p> <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>) and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. You can add only one of these two features because Runtime Monitoring already includes the threat detection for Amazon EKS resources. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::UpdateMemberDetectorsRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID of the administrator account.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Array<String>] :account_ids
    #   <p>A list of member account IDs to be updated.</p>
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p>
    # @option params [Array<Types::MemberFeaturesConfiguration>] :features
    #   <p>A list of features that will be updated for the specified member accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false
    #         }
    #       }
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION"],
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_member_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_accounts: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         result: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::UpdateMemberDetectorsResponse]
    def update_member_detectors(params = {}, options = {})
      request = build_request(:update_member_detectors, params)
      request.send_request(options)
    end

    # <p>Configures the delegated administrator account with the provided values. You must provide a value for either <code>autoEnableOrganizationMembers</code> or <code>autoEnable</code>, but not both. </p> <p>Specifying both EKS Runtime Monitoring (<code>EKS_RUNTIME_MONITORING</code>) and Runtime Monitoring (<code>RUNTIME_MONITORING</code>) will cause an error. You can add only one of these two features because Runtime Monitoring already includes the threat detection for Amazon EKS resources. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html">Runtime Monitoring</a>.</p> <p>There might be regional differences because some data sources might not be available in all the Amazon Web Services Regions where GuardDuty is presently supported. For more information, see <a href="https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html">Regions and endpoints</a>.</p>
    # @param [Hash, Types::UpdateOrganizationConfigurationRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector that configures the delegated administrator.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [Boolean] :auto_enable
    #   <p>Represents whether to automatically enable member accounts in the organization. This applies to only new member accounts, not the existing member accounts. When a new account joins the organization, the chosen features will be enabled for them by default.</p> <p>Even though this is still supported, we recommend using <code>AutoEnableOrganizationMembers</code> to achieve the similar results. You must provide a value for either <code>autoEnableOrganizationMembers</code> or <code>autoEnable</code>.</p>
    # @option params [Types::OrganizationDataSourceConfigurations] :data_sources
    #   <p>Describes which data sources will be updated.</p>
    # @option params [Array<Types::OrganizationFeatureConfiguration>] :features
    #   <p>A list of features that will be configured for the organization.</p>
    # @option params [String] :auto_enable_organization_members
    #   <p>Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization. You must provide a value for either <code>autoEnableOrganizationMembers</code> or <code>autoEnable</code>. </p> <p>Use one of the following configuration values for <code>autoEnableOrganizationMembers</code>:</p> <ul> <li> <p> <code>NEW</code>: Indicates that when a new account joins the organization, they will have GuardDuty enabled automatically. </p> </li> <li> <p> <code>ALL</code>: Indicates that all accounts in the organization have GuardDuty enabled automatically. This includes <code>NEW</code> accounts that join the organization and accounts that may have been suspended or removed from the organization in GuardDuty.</p> <p>It may take up to 24 hours to update the configuration for all the member accounts.</p> </li> <li> <p> <code>NONE</code>: Indicates that GuardDuty will not be automatically enabled for any account in the organization. The administrator must manage GuardDuty for each account in the organization individually.</p> <p>When you update the auto-enable setting from <code>ALL</code> or <code>NEW</code> to <code>NONE</code>, this action doesn't disable the corresponding option for your existing accounts. This configuration will apply to the new accounts that join the organization. After you update the auto-enable settings, no new account will have the corresponding option as enabled.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     auto_enable: false,
    #     data_sources: {
    #       s3_logs: {
    #         auto_enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           auto_enable: false, # required
    #         }
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: {
    #             auto_enable: false
    #           }
    #         }
    #       }
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS" # One of: ["S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "RUNTIME_MONITORING", "AI_PROTECTION"],
    #         auto_enable: "NEW" # One of: ["NEW", "NONE", "ALL"],
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT" # One of: ["EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT", "RDS_DATA_RISK"],
    #             auto_enable: "NEW" # One of: ["NEW", "NONE", "ALL"]
    #           }
    #         ]
    #       }
    #     ],
    #     auto_enable_organization_members: "NEW" # One of: ["NEW", "ALL", "NONE"]
    #   }
    #   options = {}
    #   response = client.update_organization_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateOrganizationConfigurationResponse]
    def update_organization_configuration(params = {}, options = {})
      request = build_request(:update_organization_configuration, params)
      request.send_request(options)
    end

    # <p>Updates information about the publishing destination specified by the <code>destinationId</code>.</p>
    # @param [Hash, Types::UpdatePublishingDestinationRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector associated with the publishing destinations to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :destination_id
    #   <p>The ID of the publishing destination to update.</p>
    # @option params [Types::DestinationProperties] :destination_properties
    #   <p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code> and <code>KmsKeyArn</code> of the publishing destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #     destination_properties: {
    #       destination_arn: "String",
    #       kms_key_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_publishing_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePublishingDestinationResponse]
    def update_publishing_destination(params = {}, options = {})
      request = build_request(:update_publishing_destination, params)
      request.send_request(options)
    end

    # <p>Updates the threat entity set associated with the specified <code>threatEntitySetId</code>.</p>
    # @param [Hash, Types::UpdateThreatEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector associated with the threat entity set that you want to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_entity_set_id
    #   <p>The ID returned by GuardDuty after updating the threat entity set resource.</p>
    # @option params [String] :name
    #   <p>A user-friendly name to identify the trusted entity set.</p> <p>The name of your list can include lowercase letters, uppercase letters, numbers, dash (-), and underscore (_).</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the trusted entity set.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @option params [Boolean] :activate
    #   <p>A boolean value that indicates whether GuardDuty is to start using this updated threat entity set. After you update an entity set, you will need to activate it again. It might take up to 15 minutes for the updated entity set to be effective.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false
    #   }
    #   options = {}
    #   response = client.update_threat_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThreatEntitySetResponse]
    def update_threat_entity_set(params = {}, options = {})
      request = build_request(:update_threat_entity_set, params)
      request.send_request(options)
    end

    # <p>Updates the ThreatIntelSet specified by the ThreatIntelSet ID.</p>
    # @param [Hash, Types::UpdateThreatIntelSetRequest] params
    # @option params [String] :detector_id
    #   <p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :threat_intel_set_id
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    # @option params [String] :name
    #   <p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>
    # @option params [String] :location
    #   <p>The updated URI of the file that contains the ThreateIntelSet.</p>
    # @option params [Boolean] :activate
    #   <p>The updated Boolean value that specifies whether the ThreateIntelSet is active or not.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #     expected_bucket_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_threat_intel_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThreatIntelSetResponse]
    def update_threat_intel_set(params = {}, options = {})
      request = build_request(:update_threat_intel_set, params)
      request.send_request(options)
    end

    # <p>Updates the trusted entity set associated with the specified <code>trustedEntitySetId</code>.</p>
    # @param [Hash, Types::UpdateTrustedEntitySetRequest] params
    # @option params [String] :detector_id
    #   <p>The unique ID of the GuardDuty detector associated with the threat entity set that you want to update.</p> <p>To find the <code>detectorId</code> in the current Region, see the Settings page in the GuardDuty console, or run the <a href="https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html">ListDetectors</a> API.</p>
    # @option params [String] :trusted_entity_set_id
    #   <p>The ID returned by GuardDuty after updating the trusted entity set resource.</p>
    # @option params [String] :name
    #   <p>A user-friendly name to identify the trusted entity set.</p> <p>The name of your list can include lowercase letters, uppercase letters, numbers, dash (-), and underscore (_).</p>
    # @option params [String] :location
    #   <p>The URI of the file that contains the trusted entity set.</p>
    # @option params [String] :expected_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the Amazon S3 bucket specified in the <b>location</b> parameter.</p>
    # @option params [Boolean] :activate
    #   <p>A boolean value that indicates whether GuardDuty is to start using this updated trusted entity set. After you update an entity set, you will need to activate it again. It might take up to 15 minutes for the updated entity set to be effective.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false
    #   }
    #   options = {}
    #   response = client.update_trusted_entity_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTrustedEntitySetResponse]
    def update_trusted_entity_set(params = {}, options = {})
      request = build_request(:update_trusted_entity_set, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-guardduty'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
