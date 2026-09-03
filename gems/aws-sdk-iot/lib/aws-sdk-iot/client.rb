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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iot)

module Aws::IoT
  # An API client for Aws::IoT.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSIotService
    @identifier = :iot

    add_plugin(::Aws::IoT::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoT::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Accepts a pending certificate transfer. The default state of the certificate is
    #          INACTIVE.</p>
    #          <p>To check for pending certificate transfers, call <a>ListCertificates</a>
    #          to enumerate your certificates.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AcceptCertificateTransfer</a> action.</p>
    # @param [Hash, Types::AcceptCertificateTransferRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     set_as_active: false
    #   }
    #   options = {}
    #   response = client.accept_certificate_transfer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def accept_certificate_transfer(params = {}, options = {})
      request = build_request(:accept_certificate_transfer, params)
      request.send_request(options)
    end

    # <p>Adds a thing to a billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AddThingToBillingGroup</a> action.</p>
    # @param [Hash, Types::AddThingToBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    #            <note>
    #               <p>This call is asynchronous. It might take several seconds for the detachment to propagate.</p>
    #            </note>
    # @option params [String] :billing_group_arn
    #   <p>The ARN of the billing group.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing to be added to the billing group.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to be added to the billing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName",
    #     billing_group_arn: "BillingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn"
    #   }
    #   options = {}
    #   response = client.add_thing_to_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddThingToBillingGroupResponse]
    def add_thing_to_billing_group(params = {}, options = {})
      request = build_request(:add_thing_to_billing_group, params)
      request.send_request(options)
    end

    # <p>Adds a thing to a thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AddThingToThingGroup</a> action.</p>
    # @param [Hash, Types::AddThingToThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The name of the group to which you are adding a thing.</p>
    # @option params [String] :thing_group_arn
    #   <p>The ARN of the group to which you are adding a thing.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing to add to a group.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to add to a group.</p>
    # @option params [Boolean] :override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #     override_dynamic_groups: false
    #   }
    #   options = {}
    #   response = client.add_thing_to_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddThingToThingGroupResponse]
    def add_thing_to_thing_group(params = {}, options = {})
      request = build_request(:add_thing_to_thing_group, params)
      request.send_request(options)
    end

    # <p>Associates the selected software bill of materials (SBOM) with a specific software package version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AssociateSbomWithPackageVersion</a> action.</p>
    # @param [Hash, Types::AssociateSbomWithPackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the new software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the new package version.</p>
    # @option params [Types::Sbom] :sbom
    #   <p>A specific software bill of matrerials associated with a software
    #            package version.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     sbom: { # required
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_sbom_with_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_name: "PackageName",
    #     version_name: "VersionName",
    #     sbom: {
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     sbom_validation_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   }
    # @return [Types::AssociateSbomWithPackageVersionResponse]
    def associate_sbom_with_package_version(params = {}, options = {})
      request = build_request(:associate_sbom_with_package_version, params)
      request.send_request(options)
    end

    # <p>Associates a group with a continuous job. The following criteria must be met: </p>
    #          <ul>
    #             <li>
    #                <p>The job must have been created with the <code>targetSelection</code> field
    #                     set to "CONTINUOUS".</p>
    #             </li>
    #             <li>
    #                <p>The job status must currently be "IN_PROGRESS".</p>
    #             </li>
    #             <li>
    #                <p>The total number of targets associated with a job must not exceed
    #                     100.</p>
    #             </li>
    #          </ul>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AssociateTargetsWithJob</a> action.</p>
    # @param [Hash, Types::AssociateTargetsWithJobRequest] params
    # @option params [Array<String>] :targets
    #   <p>A list of thing group ARNs that define the targets of the job.</p>
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [String] :comment
    #   <p>An optional comment string describing why the job was associated with the
    #               targets.</p>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     targets: ["TargetArn"], # required
    #     job_id: "JobId", # required
    #     comment: "Comment",
    #     namespace_id: "NamespaceId"
    #   }
    #   options = {}
    #   response = client.associate_targets_with_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn",
    #     job_id: "JobId",
    #     description: "JobDescription"
    #   }
    # @return [Types::AssociateTargetsWithJobResponse]
    def associate_targets_with_job(params = {}, options = {})
      request = build_request(:associate_targets_with_job, params)
      request.send_request(options)
    end

    # <p>Attaches the specified policy to the specified principal (certificate or other
    #          credential).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachPolicy</a> action.</p>
    # @param [Hash, Types::AttachPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy to attach.</p>
    # @option params [String] :target
    #   <p>The <a href="https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html">identity</a> to which the policy is attached. For example, a thing group or a certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   }
    #   options = {}
    #   response = client.attach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def attach_policy(params = {}, options = {})
      request = build_request(:attach_policy, params)
      request.send_request(options)
    end

    # <p>Attaches the specified policy to the specified principal (certificate or other
    #          credential).</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated and works as
    #          expected for backward compatibility, but we won't add enhancements. Use <a>AttachPolicy</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachPrincipalPolicy</a> action.</p>
    # @param [Hash, Types::AttachPrincipalPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :principal
    #   <p>The principal, which can be a certificate ARN (as returned from the CreateCertificate
    #            operation) or an Amazon Cognito ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   }
    #   options = {}
    #   response = client.attach_principal_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    # @return [Smithy::Schema::EmptyStructure]
    def attach_principal_policy(params = {}, options = {})
      request = build_request(:attach_principal_policy, params)
      request.send_request(options)
    end

    # <p>Associates a Device Defender security profile with a thing group or this account. Each 
    #         thing group or account can have up to five security profiles associated with it.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachSecurityProfile</a> action.</p>
    # @param [Hash, Types::AttachSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The security profile that is attached.</p>
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the target (thing group) to which the security profile is attached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   }
    #   options = {}
    #   response = client.attach_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachSecurityProfileResponse]
    def attach_security_profile(params = {}, options = {})
      request = build_request(:attach_security_profile, params)
      request.send_request(options)
    end

    # <p>Attaches the specified principal to the specified thing. A principal can be X.509
    # 			certificates, Amazon Cognito identities or federated identities.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">AttachThingPrincipal</a> action.</p>
    # @param [Hash, Types::AttachThingPrincipalRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :principal
    #   <p>The principal, which can be a certificate ARN (as returned from the
    #   			CreateCertificate operation) or an Amazon Cognito ID.</p>
    # @option params [String] :thing_principal_type
    #   <p>The type of the relation you want to specify when you attach a principal to a thing.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #     thing_principal_type: "EXCLUSIVE_THING" # One of: ["EXCLUSIVE_THING", "NON_EXCLUSIVE_THING"]
    #   }
    #   options = {}
    #   response = client.attach_thing_principal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AttachThingPrincipalResponse]
    def attach_thing_principal(params = {}, options = {})
      request = build_request(:attach_thing_principal, params)
      request.send_request(options)
    end

    # <p>Cancels a mitigation action task that is in progress. If the task
    #       is not
    #       in progress, an InvalidRequestException occurs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelAuditMitigationActionsTask</a> action.</p>
    # @param [Hash, Types::CancelAuditMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>The unique identifier for the task that you want to cancel. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_audit_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelAuditMitigationActionsTaskResponse]
    def cancel_audit_mitigation_actions_task(params = {}, options = {})
      request = build_request(:cancel_audit_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>Cancels an audit that is in progress. The audit can be either scheduled or on demand. If the audit isn't in progress, an "InvalidRequestException" occurs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelAuditTask</a> action.</p>
    # @param [Hash, Types::CancelAuditTaskRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the audit you want to cancel. You can only cancel an
    #                 audit that is "IN_PROGRESS".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "AuditTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_audit_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelAuditTaskResponse]
    def cancel_audit_task(params = {}, options = {})
      request = build_request(:cancel_audit_task, params)
      request.send_request(options)
    end

    # <p>Cancels a pending transfer for the specified certificate.</p>
    #          <p>
    #             <b>Note</b> Only the transfer source account can use this
    #          operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, IoT returns the
    #          certificate to the source account in the INACTIVE state. After the destination account has
    #          accepted the transfer, the transfer cannot be cancelled.</p>
    #          <p>After a certificate transfer is cancelled, the status of the certificate changes from
    #          PENDING_TRANSFER to INACTIVE.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelCertificateTransfer</a> action.</p>
    # @param [Hash, Types::CancelCertificateTransferRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.cancel_certificate_transfer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_certificate_transfer(params = {}, options = {})
      request = build_request(:cancel_certificate_transfer, params)
      request.send_request(options)
    end

    # <p>
    #         Cancels a Device Defender ML Detect mitigation action.
    #       </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelDetectMitigationActionsTask</a> action.</p>
    # @param [Hash, Types::CancelDetectMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #   }
    #   options = {}
    #   response = client.cancel_detect_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelDetectMitigationActionsTaskResponse]
    def cancel_detect_mitigation_actions_task(params = {}, options = {})
      request = build_request(:cancel_detect_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>Cancels a job.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelJob</a> action.</p>
    # @param [Hash, Types::CancelJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [String] :reason_code
    #   <p>(Optional)A reason code string that explains why the job was canceled.</p>
    # @option params [String] :comment
    #   <p>An optional comment string describing why the job was canceled.</p>
    # @option params [Boolean] :force
    #   <p>(Optional) If <code>true</code> job executions with status "IN_PROGRESS" and
    #               "QUEUED" are canceled, otherwise only job executions with status "QUEUED" are canceled.
    #               The default is <code>false</code>.</p>
    #            <p>Canceling a job which is "IN_PROGRESS", will cause a device which is executing the
    #               job to be unable to update the job execution status. Use caution and ensure that each
    #               device executing a job which is canceled is able to recover to a valid state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     reason_code: "ReasonCode",
    #     comment: "Comment",
    #     force: false
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn",
    #     job_id: "JobId",
    #     description: "JobDescription"
    #   }
    # @return [Types::CancelJobResponse]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>Cancels the execution of a job for a given thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CancelJobExecution</a> action.</p>
    # @param [Hash, Types::CancelJobExecutionRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the job to be canceled.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing whose execution of the job will be canceled.</p>
    # @option params [Boolean] :force
    #   <p>(Optional) If <code>true</code> the job execution will be canceled if it has status
    #               IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has
    #               status QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do
    #               not set <code>force</code> to <code>true</code>, then an
    #                   <code>InvalidStateTransitionException</code> will be thrown. The default is
    #                   <code>false</code>.</p>
    #            <p>Canceling a job execution which is "IN_PROGRESS", will cause the device to be
    #               unable to update the job execution status. Use caution and ensure that the device is
    #               able to recover to a valid state.</p>
    # @option params [Integer] :expected_version
    #   <p>(Optional) The expected current version of the job execution. Each time you update
    #               the job execution, its version is incremented. If the version of the job execution
    #               stored in Jobs does not match, the update is rejected with a VersionMismatch error, and
    #               an ErrorResponse that contains the current job execution status data is returned. (This
    #               makes it unnecessary to perform a separate DescribeJobExecution request in order to
    #               obtain the job execution status data.)</p>
    # @option params [Hash<String, String>] :status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If
    #               not specified, the statusDetails are unchanged. You can specify at most 10 name/value
    #               pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     force: false,
    #     expected_version: 1,
    #     status_details: {
    #       "DetailsKey" => "DetailsValue"
    #     }
    #   }
    #   options = {}
    #   response = client.cancel_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_job_execution(params = {}, options = {})
      request = build_request(:cancel_job_execution, params)
      request.send_request(options)
    end

    # <p>Clears the default authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ClearDefaultAuthorizer</a> action.</p>
    # @param [Hash, Types::ClearDefaultAuthorizerRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.clear_default_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ClearDefaultAuthorizerResponse]
    def clear_default_authorizer(params = {}, options = {})
      request = build_request(:clear_default_authorizer, params)
      request.send_request(options)
    end

    # <p>Confirms a topic rule destination. When you create a rule requiring a destination, IoT
    #          sends a confirmation message to the endpoint or base address you specify. The message
    #          includes a token which you pass back when calling <code>ConfirmTopicRuleDestination</code>
    #          to confirm that you own or have access to the endpoint.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ConfirmTopicRuleDestination</a> action.</p>
    # @param [Hash, Types::ConfirmTopicRuleDestinationRequest] params
    # @option params [String] :confirmation_token
    #   <p>The token used to confirm ownership or access to the topic rule confirmation URL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     confirmation_token: "ConfirmationToken", # required
    #   }
    #   options = {}
    #   response = client.confirm_topic_rule_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ConfirmTopicRuleDestinationResponse]
    def confirm_topic_rule_destination(params = {}, options = {})
      request = build_request(:confirm_topic_rule_destination, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a Device Defender audit suppression.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateAuditSuppression</a> action.</p>
    # @param [Hash, Types::CreateAuditSuppressionRequest] params
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    # @option params [Time] :expiration_date
    #   <p>
    #         The epoch timestamp in seconds at which this suppression expires.
    #       </p>
    # @option params [Boolean] :suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    # @option params [String] :client_request_token
    #   <p>
    #         Each audit supression must have a unique client request token. If you try to create a new audit
    #         suppression with the same token as one that already exists, an exception occurs. If you omit this
    #         value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     },
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: "AuditDescription",
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_audit_suppression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateAuditSuppressionResponse]
    def create_audit_suppression(params = {}, options = {})
      request = build_request(:create_audit_suppression, params)
      request.send_request(options)
    end

    # <p>Creates an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateAuthorizer</a> action.</p>
    # @param [Hash, Types::CreateAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    # @option params [String] :authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    # @option params [String] :token_key_name
    #   <p>The name of the token key used to extract the token from the HTTP headers.</p>
    # @option params [Hash<String, String>] :token_signing_public_keys
    #   <p>The public keys used to verify the digital signature returned by your custom
    #            authentication service.</p>
    # @option params [String] :status
    #   <p>The status of the create authorizer request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the custom authorizer.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @option params [Boolean] :signing_disabled
    #   <p>Specifies whether IoT validates the token signature in an authorization request.</p>
    # @option params [Boolean] :enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for clients that use persistent HTTP connections. The results are cached for the time
    #   	  specified by the Lambda function in <code>refreshAfterInSeconds</code>. This value
    #        does not affect authorization of clients that use MQTT connections.</p>
    #            <p>The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn", # required
    #     token_key_name: "TokenKeyName",
    #     token_signing_public_keys: {
    #       "KeyName" => "KeyValue"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     signing_disabled: false,
    #     enable_caching_for_http: false
    #   }
    #   options = {}
    #   response = client.create_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_name: "AuthorizerName",
    #     authorizer_arn: "AuthorizerArn"
    #   }
    # @return [Types::CreateAuthorizerResponse]
    def create_authorizer(params = {}, options = {})
      request = build_request(:create_authorizer, params)
      request.send_request(options)
    end

    # <p>Creates a billing group. If this call is made multiple times using
    # 			the same billing group name and configuration, the call will succeed. If this call is made with
    # 			the same billing group name but different configuration a <code>ResourceAlreadyExistsException</code> is thrown.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateBillingGroup</a> action.</p>
    # @param [Hash, Types::CreateBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name you wish to give to the billing group.</p>
    # @option params [Types::BillingGroupProperties] :billing_group_properties
    #   <p>The properties of the billing group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the billing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName", # required
    #     billing_group_properties: {
    #       billing_group_description: "BillingGroupDescription"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_group_name: "BillingGroupName",
    #     billing_group_arn: "BillingGroupArn",
    #     billing_group_id: "BillingGroupId"
    #   }
    # @return [Types::CreateBillingGroupResponse]
    def create_billing_group(params = {}, options = {})
      request = build_request(:create_billing_group, params)
      request.send_request(options)
    end

    # <p>Creates an X.509 certificate using the specified certificate signing
    #          request.
    #       </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateCertificateFromCsr</a> action.
    #       </p>
    #          <note>
    #             <p>The CSR must include a public key that is either an RSA key with a length of at least
    #             2048 bits or an ECC key from NIST P-256, NIST P-384, or NIST P-521 curves. For supported
    #             certificates, consult <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms"> Certificate signing algorithms supported by IoT</a>. </p>
    #          </note>
    #          <note>
    #             <p>Reusing the same certificate signing request (CSR)
    #             results in a distinct certificate.</p>
    #          </note>
    #          <p>You can create multiple certificates in a batch by creating a directory, copying
    #          multiple <code>.csr</code> files into that directory, and then specifying that directory on the command
    #          line. The following commands show how to create a batch of certificates given a batch of
    #          CSRs. In the following commands, we assume that a set of CSRs are located inside of the
    #          directory my-csr-directory:</p>
    #          <p>On Linux and OS X, the command is: </p>
    #          <p>
    #             <code>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
    #             --certificate-signing-request file://my-csr-directory/{}</code>
    #          </p>
    #          <p>This command lists all of the CSRs in my-csr-directory and pipes each CSR file name
    #          to the <code>aws iot create-certificate-from-csr</code> Amazon Web Services CLI command to create a certificate for
    #          the corresponding CSR. </p>
    #          <p>You can also run the <code>aws iot create-certificate-from-csr</code> part of the
    #          command in parallel to speed up the certificate creation process:</p>
    #          <p>
    #             <code>$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr
    #             --certificate-signing-request file://my-csr-directory/{}
    #          </code>
    #          </p>
    #          <p>On Windows PowerShell, the command to create certificates for all CSRs in
    #          my-csr-directory is:</p>
    #          <p>
    #             <code>> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
    #             --certificate-signing-request file://my-csr-directory/$_}
    #          </code>
    #          </p>
    #          <p>On a Windows command prompt, the command to create certificates for all CSRs in
    #          my-csr-directory is:</p>
    #          <p>
    #             <code>> forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr
    #             --certificate-signing-request file://@path"
    #          </code>
    #          </p>
    # @param [Hash, Types::CreateCertificateFromCsrRequest] params
    # @option params [String] :certificate_signing_request
    #   <p>The certificate signing request (CSR).</p>
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_signing_request: "CertificateSigningRequest", # required
    #     set_as_active: false
    #   }
    #   options = {}
    #   response = client.create_certificate_from_csr(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "CertificateArn",
    #     certificate_id: "CertificateId",
    #     certificate_pem: "CertificatePem"
    #   }
    # @return [Types::CreateCertificateFromCsrResponse]
    def create_certificate_from_csr(params = {}, options = {})
      request = build_request(:create_certificate_from_csr, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services IoT Core certificate provider. You can use Amazon Web Services IoT Core certificate provider to
    #          customize how to sign a certificate signing request (CSR) in IoT fleet provisioning. For
    #          more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provisioning-cert-provider.html">Customizing certificate
    #             signing using Amazon Web Services IoT Core certificate provider</a> from <i>Amazon Web Services IoT Core Developer
    #             Guide</i>.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateCertificateProvider</a> action.</p>
    #          <important>
    #             <p>After you create a certificate provider, the behavior of <a href="https://docs.aws.amazon.com/iot/latest/developerguide/fleet-provision-api.html#create-cert-csr">
    #                   <code>CreateCertificateFromCsr</code> API for fleet provisioning</a> will
    #             change and all API calls to <code>CreateCertificateFromCsr</code> will invoke the
    #             certificate provider to create the certificates. It can take up to a few minutes for
    #             this behavior to change after a certificate provider is created.</p>
    #          </important>
    # @param [Hash, Types::CreateCertificateProviderRequest] params
    # @option params [String] :certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    # @option params [String] :lambda_function_arn
    #   <p>The ARN of the Lambda function that defines the authentication logic.</p>
    # @option params [Array<String>] :account_default_for_operations
    #   <p>A list of the operations that the certificate provider will use to generate certificates. 
    #            Valid value: <code>CreateCertificateFromCsr</code>.</p>
    # @option params [String] :client_token
    #   <p>A string that you can optionally pass in the <code>CreateCertificateProvider</code> request to make sure 
    #            the request is idempotent.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the certificate provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_provider_name: "CertificateProviderName", # required
    #     lambda_function_arn: "CertificateProviderFunctionArn", # required
    #     account_default_for_operations: ["CreateCertificateFromCsr" # One of: ["CreateCertificateFromCsr"]], # required
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_certificate_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_provider_name: "CertificateProviderName",
    #     certificate_provider_arn: "CertificateProviderArn"
    #   }
    # @return [Types::CreateCertificateProviderResponse]
    def create_certificate_provider(params = {}, options = {})
      request = build_request(:create_certificate_provider, params)
      request.send_request(options)
    end

    # <p>Creates a command. A command contains reusable configurations that can be applied
    #             before they are sent to the devices.</p>
    # @param [Hash, Types::CreateCommandRequest] params
    # @option params [String] :command_id
    #   <p>A unique identifier for the command. We recommend using UUID. Alpha-numeric
    #               characters, hyphens, and underscores are valid for use here.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the command. The MQTT reserved topics and validations will be used
    #               for command executions according to the namespace setting.</p>
    # @option params [String] :display_name
    #   <p>The user-friendly name in the console for the command. This name doesn't have to be
    #               unique. You can update the user-friendly name after you define it.</p>
    # @option params [String] :description
    #   <p>A short text decription of the command.</p>
    # @option params [Types::CommandPayload] :payload
    #   <p>The payload object for the command. You must specify this information when using
    #           the <code>AWS-IoT</code> namespace.</p>
    #            <p>You can upload a static payload file from your local storage that contains the 
    #           instructions for the device to process. The payload file can use any format. To
    #           make sure that the device correctly interprets the payload, we recommend you to
    #           specify the payload content type.</p>
    # @option params [Array<Types::CommandParameter>] :mandatory_parameters
    #   <p>A list of parameters that are required by the <code>StartCommandExecution</code> API.
    #               These parameters need to be specified only when using the <code>AWS-IoT-FleetWise</code>
    #               namespace. You can either specify them here or when running the command using the
    #                   <code>StartCommandExecution</code> API.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role that you must provide when using the <code>AWS-IoT-FleetWise</code> namespace.
    #           The role grants IoT Device Management the permission to access IoT FleetWise resources 
    #           for generating the payload for the command. This field is not required when you use the
    #           <code>AWS-IoT</code> namespace.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Name-value pairs that are used as metadata to manage a command.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #     namespace: "AWS-IoT" # One of: ["AWS-IoT", "AWS-IoT-FleetWise"],
    #     display_name: "DisplayName",
    #     description: "CommandDescription",
    #     payload: {
    #       content: "data",
    #       content_type: "MimeType"
    #     },
    #     mandatory_parameters: [
    #       {
    #         name: "CommandParameterName", # required
    #         value: {
    #           s: "StringParameterValue",
    #           b: false,
    #           i: 1,
    #           l: 1,
    #           d: 1.0,
    #           bin: "data",
    #           ul: "UnsignedLongParameterValue"
    #         },
    #         default_value: {
    #           s: "StringParameterValue",
    #           b: false,
    #           i: 1,
    #           l: 1,
    #           d: 1.0,
    #           bin: "data",
    #           ul: "UnsignedLongParameterValue"
    #         },
    #         description: "CommandParameterDescription"
    #       }
    #     ],
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_id: "CommandId",
    #     command_arn: "CommandArn"
    #   }
    # @return [Types::CreateCommandResponse]
    def create_command(params = {}, options = {})
      request = build_request(:create_command, params)
      request.send_request(options)
    end

    # <p> Use this API to define a
    #       Custom
    #       Metric
    #       published by your devices to Device Defender. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateCustomMetric</a> action.</p>
    # @param [Hash, Types::CreateCustomMetricRequest] params
    # @option params [String] :metric_name
    #   <p> The name of the custom metric. This will be used in the metric report submitted from the
    #         device/thing. The name can't begin with <code>aws:</code>. You can't change the name after you
    #         define it.</p>
    # @option params [String] :display_name
    #   <p> The friendly name in the console for the custom metric. This name doesn't have to be
    #         unique. Don't use this name as the metric identifier in the device metric report. You can
    #         update the friendly name after you define it.</p>
    # @option params [String] :metric_type
    #   <p> The type of the custom metric. </p>
    #            <important>
    #               <p>The type <code>number</code> only takes a single metric value as an input, but when you
    #           submit the metrics value in the DeviceMetrics report, you must pass it as an array with a
    #           single value.</p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #         Metadata that can be used to manage the custom metric.
    #       </p>
    # @option params [String] :client_request_token
    #   <p>Each custom
    #         metric must have a unique client request token. If you try to create a new custom metric that
    #         already exists with a different token,
    #         an exception
    #         occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "MetricName", # required
    #     display_name: "CustomMetricDisplayName",
    #     metric_type: "string-list" # One of: ["string-list", "ip-address-list", "number-list", "number"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_custom_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "MetricName",
    #     metric_arn: "CustomMetricArn"
    #   }
    # @return [Types::CreateCustomMetricResponse]
    def create_custom_metric(params = {}, options = {})
      request = build_request(:create_custom_metric, params)
      request.send_request(options)
    end

    # <p>Create a dimension that you can use to limit the scope of a metric used in a security profile for IoT Device Defender. 
    #       For example, using a <code>TOPIC_FILTER</code> dimension, you can narrow down the scope of the metric only to MQTT topics whose name match the pattern specified in the dimension.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDimension</a> action.</p>
    # @param [Hash, Types::CreateDimensionRequest] params
    # @option params [String] :name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    # @option params [String] :type
    #   <p>Specifies the type of dimension. Supported types: <code>TOPIC_FILTER.</code>
    #            </p>
    # @option params [Array<String>] :string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the dimension.</p>
    # @option params [String] :client_request_token
    #   <p>Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs. 
    #         If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DimensionName", # required
    #     type: "TOPIC_FILTER" # One of: ["TOPIC_FILTER"], # required
    #     string_values: ["DimensionStringValue"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.create_dimension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DimensionName",
    #     arn: "DimensionArn"
    #   }
    # @return [Types::CreateDimensionResponse]
    def create_dimension(params = {}, options = {})
      request = build_request(:create_dimension, params)
      request.send_request(options)
    end

    # <p>Creates a domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDomainConfiguration</a> action.</p>
    # @param [Hash, Types::CreateDomainConfigurationRequest] params
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration. This value must be unique to a region.</p>
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    # @option params [Array<String>] :server_certificate_arns
    #   <p>The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. 
    #         This value is not required for Amazon Web Services-managed domains.</p>
    # @option params [String] :validation_certificate_arn
    #   <p>The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. 
    #            This value is not required for Amazon Web Services-managed domains.</p>
    # @option params [Types::AuthorizerConfig] :authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    # @option params [String] :service_type
    #   <p>The type of service delivered by the endpoint.</p>
    #            <note>
    #               <p>Amazon Web Services IoT Core currently supports only the <code>DATA</code> service type.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the domain configuration.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @option params [Types::TlsConfig] :tls_config
    #   <p>An object that specifies the TLS configuration for a domain.</p>
    # @option params [Types::ServerCertificateConfig] :server_certificate_config
    #   <p>The server certificate configuration.</p>
    # @option params [String] :authentication_type
    #   <p>An enumerated string that speciﬁes the authentication type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH_X509</code> - Use custom authentication and authorization with additional details from the X.509 client certificate.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH</code> - Use custom authentication and authorization. For more
    #                  information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">Custom authentication and authorization</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_X509</code> - Use X.509 client certificates without custom authentication and authorization. For more information,
    #                  see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html">X.509 client certificates</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SIGV4</code> - Use Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">IAM users, groups, and roles</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify authentication type.
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :application_protocol
    #   <p>An enumerated string that speciﬁes the application-layer protocol.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SECURE_MQTT</code> - MQTT over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MQTT_WSS</code> - MQTT over WebSocket.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTPS</code> - HTTP over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify application_layer protocol. 
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ClientCertificateConfig] :client_certificate_config
    #   <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_configuration_name: "DomainConfigurationName", # required
    #     domain_name: "DomainName",
    #     server_certificate_arns: ["AcmCertificateArn"],
    #     validation_certificate_arn: "AcmCertificateArn",
    #     authorizer_config: {
    #       default_authorizer_name: "AuthorizerName",
    #       allow_authorizer_override: false
    #     },
    #     service_type: "DATA" # One of: ["DATA", "CREDENTIAL_PROVIDER", "JOBS"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     tls_config: {
    #       security_policy: "SecurityPolicy"
    #     },
    #     server_certificate_config: {
    #       enable_ocsp_check: false,
    #       ocsp_lambda_arn: "OCSPLambdaArn",
    #       ocsp_authorized_responder_arn: "AcmCertificateArn"
    #     },
    #     authentication_type: "CUSTOM_AUTH_X509" # One of: ["CUSTOM_AUTH_X509", "CUSTOM_AUTH", "AWS_X509", "AWS_SIGV4", "DEFAULT"],
    #     application_protocol: "SECURE_MQTT" # One of: ["SECURE_MQTT", "MQTT_WSS", "HTTPS", "DEFAULT"],
    #     client_certificate_config: {
    #       client_certificate_callback_arn: "ClientCertificateCallbackArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_configuration_name: "DomainConfigurationName",
    #     domain_configuration_arn: "DomainConfigurationArn"
    #   }
    # @return [Types::CreateDomainConfigurationResponse]
    def create_domain_configuration(params = {}, options = {})
      request = build_request(:create_domain_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a dynamic thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateDynamicThingGroup</a> action.</p>
    # @param [Hash, Types::CreateDynamicThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The dynamic thing group name to create.</p>
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   <p>The dynamic thing group properties.</p>
    # @option params [String] :index_name
    #   <p>The dynamic thing group index name.</p>
    #            <note>
    #               <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #            </note>
    # @option params [String] :query_string
    #   <p>The dynamic thing group search query string.</p>
    #            <p>See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html">Query Syntax</a> for information about query string syntax.</p>
    # @option params [String] :query_version
    #   <p>The dynamic thing group query version.</p>
    #            <note>
    #               <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the dynamic thing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         merge: false
    #       }
    #     },
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     query_version: "QueryVersion",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dynamic_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_group_id: "ThingGroupId",
    #     index_name: "IndexName",
    #     query_string: "QueryString",
    #     query_version: "QueryVersion"
    #   }
    # @return [Types::CreateDynamicThingGroupResponse]
    def create_dynamic_thing_group(params = {}, options = {})
      request = build_request(:create_dynamic_thing_group, params)
      request.send_request(options)
    end

    # <p>Creates a fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateFleetMetric</a> action.</p>
    # @param [Hash, Types::CreateFleetMetricRequest] params
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to create.</p>
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    # @option params [Types::AggregationType] :aggregation_type
    #   <p>The type of the aggregation query.</p>
    # @option params [Integer] :period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    # @option params [String] :description
    #   <p>The fleet metric description.</p>
    # @option params [String] :query_version
    #   <p>The query version.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    # @option params [String] :unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>. Default to null.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata, which can be used to manage the fleet metric.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "FleetMetricName", # required
    #     query_string: "QueryString", # required
    #     aggregation_type: { # required
    #       name: "Statistics" # One of: ["Statistics", "Percentiles", "Cardinality"], # required
    #       values: ["AggregationTypeValue"]
    #     },
    #     period: 1, # required
    #     aggregation_field: "AggregationField", # required
    #     description: "FleetMetricDescription",
    #     query_version: "QueryVersion",
    #     index_name: "IndexName",
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_fleet_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "FleetMetricName",
    #     metric_arn: "FleetMetricArn"
    #   }
    # @return [Types::CreateFleetMetricResponse]
    def create_fleet_metric(params = {}, options = {})
      request = build_request(:create_fleet_metric, params)
      request.send_request(options)
    end

    # <p>Creates a job.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateJob</a> action.</p>
    # @param [Hash, Types::CreateJobRequest] params
    # @option params [String] :job_id
    #   <p>A job identifier which must be unique for your account. We recommend using a UUID.
    #               Alpha-numeric characters, "-" and "_" are valid for use here.</p>
    # @option params [Array<String>] :targets
    #   <p>A list of things and thing groups to which the job should be sent.</p>
    # @option params [String] :document_source
    #   <p>An S3 link, or S3 object URL, to the job document. The link is an Amazon S3 object URL
    #               and is required if you don't specify a value for <code>document</code>.</p>
    #            <p>For example, <code>--document-source
    #                   https://s3.<i>region-code</i>.amazonaws.com/example-firmware/device-firmware.1.0</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html">Methods for accessing a
    #                   bucket</a>.</p>
    # @option params [String] :document
    #   <p>The job document. Required if you don't specify a value for
    #                   <code>documentSource</code>.</p>
    # @option params [String] :description
    #   <p>A short text description of the job.</p>
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    # @option params [String] :target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a thing when the thing is added to a target group, even
    #               after the job was completed by all things originally in the group.</p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    # @option params [Types::AbortConfig] :abort_config
    #   <p>Allows you to create the criteria to abort a job.</p>
    # @option params [Types::TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the time expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the job.</p>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @option params [String] :job_template_arn
    #   <p>The ARN of the job template used to create the job.</p>
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    # @option params [Hash<String, String>] :document_parameters
    #   <p>Parameters of an Amazon Web Services managed template that you can specify to create the job
    #               document.</p>
    #            <note>
    #               <p>
    #                  <code>documentParameters</code> can only be used when creating jobs from Amazon Web Services
    #                   managed templates. This parameter can't be used with custom job templates or to
    #                   create jobs from them.</p>
    #            </note>
    # @option params [Types::SchedulingConfig] :scheduling_config
    #   <p>The configuration that allows you to schedule a job for a future date and time in
    #               addition to specifying the end behavior for each job execution.</p>
    # @option params [Array<String>] :destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>. </p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     targets: ["TargetArn"], # required
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     description: "JobDescription",
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1
    #     },
    #     target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         }
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #           action: "CANCEL" # One of: ["CANCEL"], # required
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         }
    #       ]
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     namespace_id: "NamespaceId",
    #     job_template_arn: "JobTemplateArn",
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"], # required
    #           number_of_retries: 1, # required
    #         }
    #       ]
    #     },
    #     document_parameters: {
    #       "ParameterKey" => "ParameterValue"
    #     },
    #     scheduling_config: {
    #       start_time: "StringDateTime",
    #       end_time: "StringDateTime",
    #       end_behavior: "STOP_ROLLOUT" # One of: ["STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"],
    #       maintenance_windows: [
    #         {
    #           start_time: "CronExpression", # required
    #           duration_in_minutes: 1, # required
    #         }
    #       ]
    #     },
    #     destination_package_versions: ["PackageVersionArn"]
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn",
    #     job_id: "JobId",
    #     description: "JobDescription"
    #   }
    # @return [Types::CreateJobResponse]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>Creates a job template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateJobTemplate</a> action.</p>
    # @param [Hash, Types::CreateJobTemplateRequest] params
    # @option params [String] :job_template_id
    #   <p>A unique identifier for the job template. We recommend using a UUID. Alpha-numeric
    #               characters, "-", and "_" are valid for use here.</p>
    # @option params [String] :job_arn
    #   <p>The ARN of the job to use as the basis for the job template.</p>
    # @option params [String] :document_source
    #   <p>An S3 link, or S3 object URL, to the job document. The link is an Amazon S3 object URL
    #               and is required if you don't specify a value for <code>document</code>.</p>
    #            <p>For example, <code>--document-source
    #                   https://s3.<i>region-code</i>.amazonaws.com/example-firmware/device-firmware.1.0</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-bucket-intro.html">Methods for accessing a
    #                   bucket</a>.</p>
    # @option params [String] :document
    #   <p>The job document. Required if you don't specify a value for
    #                   <code>documentSource</code>.</p>
    # @option params [String] :description
    #   <p>A description of the job document.</p>
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration for pre-signed S3 URLs.</p>
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of a job.</p>
    # @option params [Types::AbortConfig] :abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    # @option params [Types::TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. A
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the timer expires,
    #               it will be automatically set to <code>TIMED_OUT</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the job template.</p>
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    # @option params [Array<Types::MaintenanceWindow>] :maintenance_windows
    #   <p>Allows you to configure an optional maintenance window for the rollout of a job
    #               document to all devices in the target group for a job.</p>
    # @option params [Array<String>] :destination_package_versions
    #   <p>The package version Amazon Resource Names (ARNs) that are installed on the device when the job
    #               successfully completes. The package version must be in either the Published or
    #               Deprecated state when the job deploys. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    #            <p>
    #               <b>Note:</b>The following Length Constraints relates to a
    #               single ARN. Up to 25 package version ARNs are allowed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_template_id: "JobTemplateId", # required
    #     job_arn: "JobArn",
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     description: "JobDescription", # required
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         }
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #           action: "CANCEL" # One of: ["CANCEL"], # required
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         }
    #       ]
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"], # required
    #           number_of_retries: 1, # required
    #         }
    #       ]
    #     },
    #     maintenance_windows: [
    #       {
    #         start_time: "CronExpression", # required
    #         duration_in_minutes: 1, # required
    #       }
    #     ],
    #     destination_package_versions: ["PackageVersionArn"]
    #   }
    #   options = {}
    #   response = client.create_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_template_arn: "JobTemplateArn",
    #     job_template_id: "JobTemplateId"
    #   }
    # @return [Types::CreateJobTemplateResponse]
    def create_job_template(params = {}, options = {})
      request = build_request(:create_job_template, params)
      request.send_request(options)
    end

    # <p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued
    #          public key. You can also call <code>CreateKeysAndCertificate</code> over MQTT from a
    #          device, for more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html#provision-mqtt-api">Provisioning MQTT API</a>.</p>
    #          <p>
    #             <b>Note</b> This is the only time IoT issues the private key
    #          for this certificate, so it is important to keep it in a secure location.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateKeysAndCertificate</a> action.</p>
    # @param [Hash, Types::CreateKeysAndCertificateRequest] params
    # @option params [Boolean] :set_as_active
    #   <p>Specifies whether the certificate is active.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     set_as_active: false
    #   }
    #   options = {}
    #   response = client.create_keys_and_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "CertificateArn",
    #     certificate_id: "CertificateId",
    #     certificate_pem: "CertificatePem",
    #     key_pair: {
    #       public_key: "PublicKey",
    #       private_key: "PrivateKey"
    #     }
    #   }
    # @return [Types::CreateKeysAndCertificateResponse]
    def create_keys_and_certificate(params = {}, options = {})
      request = build_request(:create_keys_and_certificate, params)
      request.send_request(options)
    end

    # <p>Defines an action that can be applied to audit findings by using StartAuditMitigationActionsTask. Only certain types of mitigation actions can be applied to specific check names. 
    #       For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/device-defender-mitigation-actions.html">Mitigation actions</a>. Each mitigation action can apply only one type of change.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateMitigationAction</a> action.</p>
    # @param [Hash, Types::CreateMitigationActionRequest] params
    # @option params [String] :action_name
    #   <p>A friendly name for the action. Choose a friendly name that accurately describes the action (for example, <code>EnableLoggingAction</code>).</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    # @option params [Types::MitigationActionParams] :action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the mitigation action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_name: "MitigationActionName", # required
    #     role_arn: "RoleArn", # required
    #     action_params: { # required
    #       update_device_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       update_ca_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_mitigation_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_arn: "MitigationActionArn",
    #     action_id: "MitigationActionId"
    #   }
    # @return [Types::CreateMitigationActionResponse]
    def create_mitigation_action(params = {}, options = {})
      request = build_request(:create_mitigation_action, params)
      request.send_request(options)
    end

    # <p>Creates an IoT OTA update on a target group of things or groups.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateOTAUpdate</a> action.</p>
    # @param [Hash, Types::CreateOTAUpdateRequest] params
    # @option params [String] :ota_update_id
    #   <p>The ID of the OTA update to be created.</p>
    # @option params [String] :description
    #   <p>The description of the OTA update.</p>
    # @option params [Array<String>] :targets
    #   <p>The devices targeted to receive OTA updates.</p>
    # @option params [Array<String>] :protocols
    #   <p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
    #              HTTP and MQTT are specified, the target device can choose the protocol.</p>
    # @option params [String] :target_selection
    #   <p>Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things
    #               specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a
    #               thing when a change is detected in a target. For example, an update will run on a thing when the thing is
    #               added to a target group, even after the update was completed by all things originally in the group. Valid
    #               values: CONTINUOUS | SNAPSHOT.</p>
    # @option params [Types::AwsJobExecutionsRolloutConfig] :aws_job_executions_rollout_config
    #   <p>Configuration for the rollout of OTA updates.</p>
    # @option params [Types::AwsJobPresignedUrlConfig] :aws_job_presigned_url_config
    #   <p>Configuration information for pre-signed URLs.</p>
    # @option params [Types::AwsJobAbortConfig] :aws_job_abort_config
    #   <p>The criteria that determine when and how a job abort takes place.</p>
    # @option params [Types::AwsJobTimeoutConfig] :aws_job_timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job.  A timer is 
    #               started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution 
    #               status is not set to another terminal state before the timer expires, it will be automatically 
    #               set to <code>TIMED_OUT</code>.</p>
    # @option params [Array<Types::OTAUpdateFile>] :files
    #   <p>The files to be streamed by the OTA update.</p>
    # @option params [String] :role_arn
    #   <p>The IAM role that grants Amazon Web Services IoT Core access to the Amazon S3, IoT jobs and Amazon Web Services Code Signing resources 
    #               to create an OTA update job.</p>
    # @option params [Hash<String, String>] :additional_parameters
    #   <p>A list of additional OTA update parameters, which are name-value pairs. 
    #               They won't be sent to devices as a part of the Job document.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage updates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ota_update_id: "OTAUpdateId", # required
    #     description: "OTAUpdateDescription",
    #     targets: ["Target"], # required
    #     protocols: ["MQTT" # One of: ["MQTT", "HTTP"]],
    #     target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #     aws_job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         }
    #       }
    #     },
    #     aws_job_presigned_url_config: {
    #       expires_in_sec: 1
    #     },
    #     aws_job_abort_config: {
    #       abort_criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #           action: "CANCEL" # One of: ["CANCEL"], # required
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         }
    #       ]
    #     },
    #     aws_job_timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     files: [ # required
    #       {
    #         file_name: "FileName",
    #         file_type: 1,
    #         file_version: "OTAUpdateFileVersion",
    #         file_location: {
    #           stream: {
    #             stream_id: "StreamId",
    #             file_id: 1
    #           },
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             version: "S3Version"
    #           }
    #         },
    #         code_signing: {
    #           aws_signer_job_id: "SigningJobId",
    #           start_signing_job_parameter: {
    #             signing_profile_parameter: {
    #               certificate_arn: "CertificateArn",
    #               platform: "Platform",
    #               certificate_path_on_device: "CertificatePathOnDevice"
    #             },
    #             signing_profile_name: "SigningProfileName",
    #             destination: {
    #               s3_destination: {
    #                 bucket: "S3Bucket",
    #                 prefix: "Prefix"
    #               }
    #             }
    #           },
    #           custom_code_signing: {
    #             signature: {
    #               inline_document: "data"
    #             },
    #             certificate_chain: {
    #               certificate_name: "CertificateName",
    #               inline_document: "InlineDocument"
    #             },
    #             hash_algorithm: "HashAlgorithm",
    #             signature_algorithm: "SignatureAlgorithm"
    #           }
    #         },
    #         attributes: {
    #           "AttributeKey" => "Value"
    #         }
    #       }
    #     ],
    #     role_arn: "RoleArn", # required
    #     additional_parameters: {
    #       "AttributeKey" => "Value"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ota_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ota_update_id: "OTAUpdateId",
    #     aws_iot_job_id: "AwsIotJobId",
    #     ota_update_arn: "OTAUpdateArn",
    #     aws_iot_job_arn: "AwsIotJobArn",
    #     ota_update_status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"]
    #   }
    # @return [Types::CreateOTAUpdateResponse]
    def create_ota_update(params = {}, options = {})
      request = build_request(:create_ota_update, params)
      request.send_request(options)
    end

    # <p>Creates an IoT software package that can be deployed to your fleet.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePackage</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> actions.</p>
    # @param [Hash, Types::CreatePackageRequest] params
    # @option params [String] :package_name
    #   <p>The name of the new software package.</p>
    # @option params [String] :description
    #   <p>A summary of the package being created. This can be used to outline the package's contents or purpose.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that can be used to manage the package.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_name: "PackageName",
    #     package_arn: "PackageArn",
    #     description: "ResourceDescription"
    #   }
    # @return [Types::CreatePackageResponse]
    def create_package(params = {}, options = {})
      request = build_request(:create_package, params)
      request.send_request(options)
    end

    # <p>Creates a new version for an existing IoT software package.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePackageVersion</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> actions.</p>
    # @param [Hash, Types::CreatePackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the associated software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the new package version.</p>
    # @option params [String] :description
    #   <p>A summary of the package version being created. This can be used to outline the package's contents or purpose.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Metadata that can be used to define a package version’s configuration. For example, the S3 file location, configuration options that are being sent to the device or fleet.</p>
    #            <p>The combined size of all the attributes on a package version is limited to 3KB.</p>
    # @option params [Types::PackageVersionArtifact] :artifact
    #   <p>The various build components created during the build process such as libraries and
    #            configuration files that make up a software package version.</p>
    # @option params [String] :recipe
    #   <p>The inline job document associated with a software package version used for a quick job
    #            deployment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that can be used to manage the package version.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue"
    #     },
    #     artifact: {
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     recipe: "PackageVersionRecipe",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_version_arn: "PackageVersionArn",
    #     package_name: "PackageName",
    #     version_name: "VersionName",
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue"
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DEPRECATED"],
    #     error_reason: "PackageVersionErrorReason"
    #   }
    # @return [Types::CreatePackageVersionResponse]
    def create_package_version(params = {}, options = {})
      request = build_request(:create_package_version, params)
      request.send_request(options)
    end

    # <p>Creates an IoT policy.</p>
    #          <p>The created policy is the default version for the policy. This operation creates a
    #          policy version with a version identifier of <b>1</b> and sets
    #             <b>1</b> as the policy's default version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePolicy</a> action.</p>
    # @param [Hash, Types::CreatePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :policy_document
    #   <p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of
    #            2048, excluding whitespace.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the policy.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_name: "PolicyName",
    #     policy_arn: "PolicyArn",
    #     policy_document: "PolicyDocument",
    #     policy_version_id: "PolicyVersionId"
    #   }
    # @return [Types::CreatePolicyResponse]
    def create_policy(params = {}, options = {})
      request = build_request(:create_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new version of the specified IoT policy. To update a policy, create a
    #          new policy version. A managed policy can have up to five versions. If the policy has five
    #          versions, you must use <a>DeletePolicyVersion</a> to delete an existing version
    #          before you create a new one.</p>
    #          <p>Optionally, you can set the new version as the policy's default version. The default
    #          version is the operative version (that is, the version that is in effect for the
    #          certificates to which the policy is attached).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreatePolicyVersion</a> action.</p>
    # @param [Hash, Types::CreatePolicyVersionRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :policy_document
    #   <p>The JSON document that describes the policy. Minimum length of 1. Maximum length of
    #            2048, excluding whitespace.</p>
    # @option params [Boolean] :set_as_default
    #   <p>Specifies whether the policy version is set as the default. When this parameter is
    #            true, the new policy version becomes the operative version (that is, the version that is in
    #            effect for the certificates to which the policy is attached).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     set_as_default: false
    #   }
    #   options = {}
    #   response = client.create_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "PolicyArn",
    #     policy_document: "PolicyDocument",
    #     policy_version_id: "PolicyVersionId",
    #     is_default_version: false
    #   }
    # @return [Types::CreatePolicyVersionResponse]
    def create_policy_version(params = {}, options = {})
      request = build_request(:create_policy_version, params)
      request.send_request(options)
    end

    # <p>Creates a provisioning claim.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningClaim</a> action.</p>
    # @param [Hash, Types::CreateProvisioningClaimRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template to use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.create_provisioning_claim(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_id: "CertificateId",
    #     certificate_pem: "CertificatePem",
    #     key_pair: {
    #       public_key: "PublicKey",
    #       private_key: "PrivateKey"
    #     },
    #     expiration: Time.now
    #   }
    # @return [Types::CreateProvisioningClaimResponse]
    def create_provisioning_claim(params = {}, options = {})
      request = build_request(:create_provisioning_claim, params)
      request.send_request(options)
    end

    # <p>Creates a provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningTemplate</a> action.</p>
    # @param [Hash, Types::CreateProvisioningTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @option params [String] :description
    #   <p>The description of the provisioning template.</p>
    # @option params [String] :template_body
    #   <p>The JSON formatted contents of the provisioning template.</p>
    # @option params [Boolean] :enabled
    #   <p>True to enable the provisioning template, otherwise false.</p>
    # @option params [String] :provisioning_role_arn
    #   <p>The role ARN for the role associated with the provisioning template. This IoT role
    #            grants permission to provision a device.</p>
    # @option params [Types::ProvisioningHook] :pre_provisioning_hook
    #   <p>Creates a pre-provisioning hook template. Only supports template of type
    #               <code>FLEET_PROVISIONING</code>. For more information about provisioning template types,
    #            see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type">type</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the provisioning template.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @option params [String] :type
    #   <p>The type you define in a provisioning template. You can create a template with only one type.
    #            You can't change the template type after its creation. The default value is <code>FLEET_PROVISIONING</code>.
    #            For more information about provisioning template, see: <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning template</a>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     template_body: "TemplateBody", # required
    #     enabled: false,
    #     provisioning_role_arn: "RoleArn", # required
    #     pre_provisioning_hook: {
    #       payload_version: "PayloadVersion",
    #       target_arn: "TargetArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITP"]
    #   }
    #   options = {}
    #   response = client.create_provisioning_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     template_name: "TemplateName",
    #     default_version_id: 1
    #   }
    # @return [Types::CreateProvisioningTemplateResponse]
    def create_provisioning_template(params = {}, options = {})
      request = build_request(:create_provisioning_template, params)
      request.send_request(options)
    end

    # <p>Creates a new version of a provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateProvisioningTemplateVersion</a> action.</p>
    # @param [Hash, Types::CreateProvisioningTemplateVersionRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @option params [String] :template_body
    #   <p>The JSON formatted contents of the provisioning template.</p>
    # @option params [Boolean] :set_as_default
    #   <p>Sets a fleet provision template version as the default version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     template_body: "TemplateBody", # required
    #     set_as_default: false
    #   }
    #   options = {}
    #   response = client.create_provisioning_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     template_name: "TemplateName",
    #     version_id: 1,
    #     is_default_version: false
    #   }
    # @return [Types::CreateProvisioningTemplateVersionResponse]
    def create_provisioning_template_version(params = {}, options = {})
      request = build_request(:create_provisioning_template_version, params)
      request.send_request(options)
    end

    # <p>Creates a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateRoleAlias</a> action.</p>
    #          <important>
    #             <p>The value of <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CreateRoleAlias.html#iot-CreateRoleAlias-request-credentialDurationSeconds">
    #                   <code>credentialDurationSeconds</code>
    #                </a> must be less than or equal to the maximum session 
    #             duration of the IAM role that the role alias references. For more information, see 
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api">
    #                Modifying a role maximum session duration (Amazon Web Services API)</a> from the Amazon Web Services Identity and Access Management User Guide.</p>
    #          </important>
    # @param [Hash, Types::CreateRoleAliasRequest] params
    # @option params [String] :role_alias
    #   <p>The role alias that points to a role ARN. This allows you to change the role without
    #            having to update the device.</p>
    # @option params [String] :role_arn
    #   <p>The role ARN.</p>
    # @option params [Integer] :credential_duration_seconds
    #   <p>How long (in seconds) the credentials will be valid. The default value is 3,600 seconds.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #         that the role alias references.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the role alias.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn", # required
    #     credential_duration_seconds: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_role_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_alias: "RoleAlias",
    #     role_alias_arn: "RoleAliasArn"
    #   }
    # @return [Types::CreateRoleAliasResponse]
    def create_role_alias(params = {}, options = {})
      request = build_request(:create_role_alias, params)
      request.send_request(options)
    end

    # <p>Creates a scheduled audit that is run at a specified 
    #           time interval.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateScheduledAudit</a> action.</p>
    # @param [Hash, Types::CreateScheduledAuditRequest] params
    # @option params [String] :frequency
    #   <p>How often the scheduled audit takes
    #         place, either
    #         <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code> or <code>MONTHLY</code>. The start time of each audit is
    #         determined by the system.</p>
    # @option params [String] :day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can be "1" through "31" or "LAST". This field is required if the "frequency"
    #         parameter is set to <code>MONTHLY</code>. If days
    #         29
    #         to 31 are specified, and the month
    #         doesn't
    #         have that many days, the audit takes place on the <code>LAST</code> day of the month.</p>
    # @option params [String] :day_of_week
    #   <p>The day of the week on which the scheduled audit takes
    #         place,
    #         either
    #         <code>SUN</code>,
    #         <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the <code>frequency</code>
    #         parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled 
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #               to select which checks are enabled.)</p>
    # @option params [String] :scheduled_audit_name
    #   <p>The name you want to give to the scheduled audit. (Max. 128 chars)</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the scheduled audit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"], # required
    #     day_of_month: "DayOfMonth",
    #     day_of_week: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
    #     target_check_names: ["AuditCheckName"], # required
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_scheduled_audit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_audit_arn: "ScheduledAuditArn"
    #   }
    # @return [Types::CreateScheduledAuditResponse]
    def create_scheduled_audit(params = {}, options = {})
      request = build_request(:create_scheduled_audit, params)
      request.send_request(options)
    end

    # <p>Creates a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateSecurityProfile</a> action.</p>
    # @param [Hash, Types::CreateSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The name you are giving to the security profile.</p>
    # @option params [String] :security_profile_description
    #   <p>A description of the security profile.</p>
    # @option params [Array<Types::Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    # @option params [Hash<String, Types::AlertTarget>] :alert_targets
    #   <p>Specifies the destinations to which alerts are sent. (Alerts are always sent to the 
    #           console.) Alerts are generated when a device (thing) violates a behavior.</p>
    # @option params [Array<String>] :additional_metrics_to_retain
    #   <p>
    #               <i>Please use <a>CreateSecurityProfileRequest$additionalMetricsToRetainV2</a> instead.</i>
    #            </p>
    #            <p>A list of metrics whose data is retained (stored). By default, data is retained 
    #           for any metric used in the profile's <code>behaviors</code>, but it is also retained for 
    #           any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    # @option params [Array<Types::MetricToRetain>] :additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's <code>behaviors</code>, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the security profile.</p>
    # @option params [Types::MetricsExportConfig] :metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic"
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #           }
    #         },
    #         suppress_alerts: false,
    #         export_metric: false
    #       }
    #     ],
    #     alert_targets: {
    #       "AlertTargetType" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         export_metric: false
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     metrics_export_config: {
    #       mqtt_topic: "MqttTopic", # required
    #       role_arn: "RoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_name: "SecurityProfileName",
    #     security_profile_arn: "SecurityProfileArn"
    #   }
    # @return [Types::CreateSecurityProfileResponse]
    def create_security_profile(params = {}, options = {})
      request = build_request(:create_security_profile, params)
      request.send_request(options)
    end

    # <p>Creates a stream for delivering one or more large files in chunks over MQTT. A stream transports data
    #             bytes in chunks or blocks packaged as MQTT messages from a source like S3. You can have one or more files
    #             associated with a stream.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateStream</a> action.</p>
    # @param [Hash, Types::CreateStreamRequest] params
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    # @option params [String] :description
    #   <p>A description of the stream.</p>
    # @option params [Array<Types::StreamFile>] :files
    #   <p>The files to stream.</p>
    # @option params [String] :role_arn
    #   <p>An IAM role that allows the IoT service principal to access your S3 files.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage streams.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [ # required
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version"
    #         }
    #       }
    #     ],
    #     role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_id: "StreamId",
    #     stream_arn: "StreamArn",
    #     description: "StreamDescription",
    #     stream_version: 1
    #   }
    # @return [Types::CreateStreamResponse]
    def create_stream(params = {}, options = {})
      request = build_request(:create_stream, params)
      request.send_request(options)
    end

    # <p>Creates a thing record in the registry. If this call is made multiple times using
    # 			the same thing name and configuration, the call will succeed. If this call is made with
    # 			the same thing name but different configuration a
    # 				<code>ResourceAlreadyExistsException</code> is thrown.</p>
    #          <note>
    #             <p>This is a control plane operation. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a> for
    # 				information about authorizing control plane actions.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThing</a> action.</p>
    # @param [Hash, Types::CreateThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing to create.</p>
    #            <p>You can't change a thing's name after you create it. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type associated with the new thing.</p>
    # @option params [Types::AttributePayload] :attribute_payload
    #   <p>The attribute payload, which consists of up to three name/value pairs in a JSON
    #   			document. For example:</p>
    #            <p>
    #               <code>{\"attributes\":{\"string1\":\"string2\"}}</code>
    #            </p>
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group the thing will be added to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue"
    #       },
    #       merge: false
    #     },
    #     billing_group_name: "BillingGroupName"
    #   }
    #   options = {}
    #   response = client.create_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #     thing_id: "ThingId"
    #   }
    # @return [Types::CreateThingResponse]
    def create_thing(params = {}, options = {})
      request = build_request(:create_thing, params)
      request.send_request(options)
    end

    # <p>Create a thing group.</p>
    #          <note>
    #             <p>This is a control plane operation. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-authorization.html">Authorization</a> for
    # 				information about authorizing control plane actions.</p>
    #             <p>If the <code>ThingGroup</code> that you create has the exact same attributes as an existing
    # 					<code>ThingGroup</code>, you will get a 200 success response.
    # 			</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThingGroup</a> action.</p>
    # @param [Hash, Types::CreateThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The thing group name to create.</p>
    # @option params [String] :parent_group_name
    #   <p>The name of the parent thing group.</p>
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   <p>The thing group properties.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the thing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     parent_group_name: "ThingGroupName",
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         merge: false
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_group_id: "ThingGroupId"
    #   }
    # @return [Types::CreateThingGroupResponse]
    def create_thing_group(params = {}, options = {})
      request = build_request(:create_thing_group, params)
      request.send_request(options)
    end

    # <p>Creates a new thing type. If this call is made multiple times using
    # 			the same thing type name and configuration, the call will succeed. If this call is made with
    # 			the same thing type name but different configuration a <code>ResourceAlreadyExistsException</code> is thrown.
    # 		</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateThingType</a> action.</p>
    # @param [Hash, Types::CreateThingTypeRequest] params
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    # @option params [Types::ThingTypeProperties] :thing_type_properties
    #   <p>The ThingTypeProperties for the thing type to create. It contains information about
    #   			the new thing type including a description, and a list of searchable thing attribute
    #   			names.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the thing type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_type_name: "ThingTypeName", # required
    #     thing_type_properties: {
    #       thing_type_description: "ThingTypeDescription",
    #       searchable_attributes: ["AttributeName"],
    #       mqtt5_configuration: {
    #         propagating_attributes: [
    #           {
    #             user_property_key: "UserPropertyKeyName",
    #             thing_attribute: "AttributeName",
    #             connection_attribute: "ConnectionAttributeName"
    #           }
    #         ]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_thing_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_type_name: "ThingTypeName",
    #     thing_type_arn: "ThingTypeArn",
    #     thing_type_id: "ThingTypeId"
    #   }
    # @return [Types::CreateThingTypeResponse]
    def create_thing_type(params = {}, options = {})
      request = build_request(:create_thing_type, params)
      request.send_request(options)
    end

    # <p>Creates a rule. Creating rules is an administrator-level action. Any user who has
    #          permission to create rules will be able to access data processed by the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateTopicRule</a> action.</p>
    # @param [Hash, Types::CreateTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    # @option params [Types::TopicRulePayload] :topic_rule_payload
    #   <p>The rule payload.</p>
    # @option params [String] :tags
    #   <p>Metadata which can be used to manage the topic rule.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: --tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             payload_field: "PayloadField"
    #           },
    #           dynamo_d_bv2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW" # One of: ["RAW", "JSON"]
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base64: false
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey"
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #             headers: {
    #               payload_format_indicator: "PayloadFormatIndicator",
    #               content_type: "ContentType",
    #               response_topic: "ResponseTopic",
    #               correlation_data: "CorrelationData",
    #               message_expiry: "MessageExpiry",
    #               user_properties: [
    #                 {
    #                   key: "UserPropertyKey", # required
    #                   value: "UserPropertyValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             batch_mode: false
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String"
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #             batch_mode: false
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             batch_mode: false,
    #             role_arn: "AwsArn"
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             batch_mode: false,
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       # One of:
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue"
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                     },
    #                     quality: "AssetPropertyQuality"
    #                   }
    #                 ]
    #               }
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               }
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             }
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               }
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               }
    #             }
    #           },
    #           kafka: {
    #             destination_arn: "AwsArn", # required
    #             topic: "String", # required
    #             key: "String",
    #             partition: "String",
    #             client_properties: { # required
    #               "String" => "String"
    #             },
    #             headers: [
    #               {
    #                 key: "KafkaHeaderKey", # required
    #                 value: "KafkaHeaderValue", # required
    #               }
    #             ]
    #           },
    #           open_search: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           location: {
    #             role_arn: "AwsArn", # required
    #             tracker_name: "String", # required
    #             device_id: "String", # required
    #             timestamp: {
    #               value: "String", # required
    #               unit: "String"
    #             },
    #             latitude: "String", # required
    #             longitude: "String", # required
    #           }
    #         }
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           payload_field: "PayloadField"
    #         },
    #         dynamo_d_bv2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           }
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW" # One of: ["RAW", "JSON"]
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base64: false
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey"
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #           headers: {
    #             payload_format_indicator: "PayloadFormatIndicator",
    #             content_type: "ContentType",
    #             response_topic: "ResponseTopic",
    #             correlation_data: "CorrelationData",
    #             message_expiry: "MessageExpiry",
    #             user_properties: [
    #               {
    #                 key: "UserPropertyKey", # required
    #                 value: "UserPropertyValue", # required
    #               }
    #             ]
    #           }
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           batch_mode: false
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String"
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #           batch_mode: false
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           batch_mode: false,
    #           role_arn: "AwsArn"
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           batch_mode: false,
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     # One of:
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue"
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                   },
    #                   quality: "AssetPropertyQuality"
    #                 }
    #               ]
    #             }
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             }
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           }
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             }
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             }
    #           }
    #         },
    #         kafka: {
    #           destination_arn: "AwsArn", # required
    #           topic: "String", # required
    #           key: "String",
    #           partition: "String",
    #           client_properties: { # required
    #             "String" => "String"
    #           },
    #           headers: [
    #             {
    #               key: "KafkaHeaderKey", # required
    #               value: "KafkaHeaderValue", # required
    #             }
    #           ]
    #         },
    #         open_search: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         location: {
    #           role_arn: "AwsArn", # required
    #           tracker_name: "String", # required
    #           device_id: "String", # required
    #           timestamp: {
    #             value: "String", # required
    #             unit: "String"
    #           },
    #           latitude: "String", # required
    #           longitude: "String", # required
    #         }
    #       }
    #     },
    #     tags: "String"
    #   }
    #   options = {}
    #   response = client.create_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_topic_rule(params = {}, options = {})
      request = build_request(:create_topic_rule, params)
      request.send_request(options)
    end

    # <p>Creates a topic rule destination. The destination must be confirmed prior to use.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">CreateTopicRuleDestination</a> action.</p>
    # @param [Hash, Types::CreateTopicRuleDestinationRequest] params
    # @option params [Types::TopicRuleDestinationConfiguration] :destination_configuration
    #   <p>The topic rule destination configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_configuration: { # required
    #       http_url_configuration: {
    #         confirmation_url: "Url", # required
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["SubnetId"], # required
    #         security_groups: ["SecurityGroupId"],
    #         vpc_id: "VpcId", # required
    #         role_arn: "AwsArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_topic_rule_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topic_rule_destination: {
    #       arn: "AwsArn",
    #       status: "ENABLED" # One of: ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       status_reason: "String",
    #       http_url_properties: {
    #         confirmation_url: "Url"
    #       },
    #       vpc_properties: {
    #         subnet_ids: ["SubnetId"],
    #         security_groups: ["SecurityGroupId"],
    #         vpc_id: "VpcId",
    #         role_arn: "AwsArn"
    #       }
    #     }
    #   }
    # @return [Types::CreateTopicRuleDestinationResponse]
    def create_topic_rule_destination(params = {}, options = {})
      request = build_request(:create_topic_rule_destination, params)
      request.send_request(options)
    end

    # <p>Restores the default settings for Device Defender audits for this account. Any
    #           configuration data you entered is deleted and all audit checks are reset to 
    #           disabled.  </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAccountAuditConfiguration</a> action.</p>
    # @param [Hash, Types::DeleteAccountAuditConfigurationRequest] params
    # @option params [Boolean] :delete_scheduled_audits
    #   <p>If true, all scheduled audits are deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delete_scheduled_audits: false
    #   }
    #   options = {}
    #   response = client.delete_account_audit_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccountAuditConfigurationResponse]
    def delete_account_audit_configuration(params = {}, options = {})
      request = build_request(:delete_account_audit_configuration, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a Device Defender audit suppression.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAuditSuppression</a> action.</p>
    # @param [Hash, Types::DeleteAuditSuppressionRequest] params
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_audit_suppression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAuditSuppressionResponse]
    def delete_audit_suppression(params = {}, options = {})
      request = build_request(:delete_audit_suppression, params)
      request.send_request(options)
    end

    # <p>Deletes an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteAuthorizer</a> action.</p>
    # @param [Hash, Types::DeleteAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The name of the authorizer to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #   }
    #   options = {}
    #   response = client.delete_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAuthorizerResponse]
    def delete_authorizer(params = {}, options = {})
      request = build_request(:delete_authorizer, params)
      request.send_request(options)
    end

    # <p>Deletes the billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteBillingGroup</a> action.</p>
    # @param [Hash, Types::DeleteBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>DeleteBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBillingGroupResponse]
    def delete_billing_group(params = {}, options = {})
      request = build_request(:delete_billing_group, params)
      request.send_request(options)
    end

    # <p>Deletes a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCACertificate</a> action.</p>
    # @param [Hash, Types::DeleteCACertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate to delete. (The last part of the certificate ARN contains
    #            the certificate ID.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.delete_ca_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCACertificateResponse]
    def delete_ca_certificate(params = {}, options = {})
      request = build_request(:delete_ca_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes the specified certificate.</p>
    #          <p>A certificate cannot be deleted if it has a policy or IoT thing attached to it or if
    #          its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPolicy</a> action to detach all policies. Next, use the <a>UpdateCertificate</a> action to set the certificate to the INACTIVE
    #          status.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCertificate</a> action.</p>
    # @param [Hash, Types::DeleteCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @option params [Boolean] :force_delete
    #   <p>Forces the deletion of a certificate if it is inactive and is not attached to an IoT
    #            thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     force_delete: false
    #   }
    #   options = {}
    #   response = client.delete_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_certificate(params = {}, options = {})
      request = build_request(:delete_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes a certificate provider.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCertificateProvider</a> action.
    #       </p>
    #          <p>If you delete the certificate provider resource, the behavior of
    #             <code>CreateCertificateFromCsr</code> will resume, and IoT will create
    #          certificates signed by IoT from a certificate signing request (CSR).</p>
    # @param [Hash, Types::DeleteCertificateProviderRequest] params
    # @option params [String] :certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_provider_name: "CertificateProviderName", # required
    #   }
    #   options = {}
    #   response = client.delete_certificate_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCertificateProviderResponse]
    def delete_certificate_provider(params = {}, options = {})
      request = build_request(:delete_certificate_provider, params)
      request.send_request(options)
    end

    # <p>Delete a command resource.</p>
    # @param [Hash, Types::DeleteCommandRequest] params
    # @option params [String] :command_id
    #   <p>The unique identifier of the command to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #   }
    #   options = {}
    #   response = client.delete_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1
    #   }
    # @return [Types::DeleteCommandResponse]
    def delete_command(params = {}, options = {})
      request = build_request(:delete_command, params)
      request.send_request(options)
    end

    # <p>Delete a command execution.</p>
    #          <note>
    #             <p>Only command executions that enter a terminal state can be deleted from
    #         your account.</p>
    #          </note>
    # @param [Hash, Types::DeleteCommandExecutionRequest] params
    # @option params [String] :execution_id
    #   <p>The unique identifier of the command execution that you want to delete from your
    #         account.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Number (ARN) of the target device for which you want to delete
    #         command executions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_id: "CommandExecutionId", # required
    #     target_arn: "TargetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_command_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCommandExecutionResponse]
    def delete_command_execution(params = {}, options = {})
      request = build_request(:delete_command_execution, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a Device Defender detect custom metric.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteCustomMetric</a> action.</p>
    #          <note>
    #             <p>Before you can delete a custom metric, you must first remove the custom metric from all
    #       security profiles it's a part of.
    #       The
    #       security
    #       profile associated with the custom metric can be found using the <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_ListSecurityProfiles.html">ListSecurityProfiles</a>
    #       API with <code>metricName</code> set to your custom metric name.</p>
    #          </note>
    # @param [Hash, Types::DeleteCustomMetricRequest] params
    # @option params [String] :metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "MetricName", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomMetricResponse]
    def delete_custom_metric(params = {}, options = {})
      request = build_request(:delete_custom_metric, params)
      request.send_request(options)
    end

    # <p>Removes the specified dimension from your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDimension</a> action.</p>
    # @param [Hash, Types::DeleteDimensionRequest] params
    # @option params [String] :name
    #   <p>The unique identifier for the dimension that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DimensionName", # required
    #   }
    #   options = {}
    #   response = client.delete_dimension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDimensionResponse]
    def delete_dimension(params = {}, options = {})
      request = build_request(:delete_dimension, params)
      request.send_request(options)
    end

    # <p>Deletes the specified domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDomainConfiguration</a> action.</p>
    # @param [Hash, Types::DeleteDomainConfigurationRequest] params
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_configuration_name: "DomainConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDomainConfigurationResponse]
    def delete_domain_configuration(params = {}, options = {})
      request = build_request(:delete_domain_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a dynamic thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteDynamicThingGroup</a> action.</p>
    # @param [Hash, Types::DeleteDynamicThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The name of the dynamic thing group to delete.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the dynamic thing group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_dynamic_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDynamicThingGroupResponse]
    def delete_dynamic_thing_group(params = {}, options = {})
      request = build_request(:delete_dynamic_thing_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified fleet metric. 
    #         Returns successfully with no error if the deletion is successful or you specify a fleet metric that doesn't exist.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteFleetMetric</a> action.</p>
    # @param [Hash, Types::DeleteFleetMetricRequest] params
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to delete.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the fleet metric to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "FleetMetricName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_fleet_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_fleet_metric(params = {}, options = {})
      request = build_request(:delete_fleet_metric, params)
      request.send_request(options)
    end

    # <p>Deletes a job and its related job executions.</p>
    #          <p>Deleting a job may take time, depending on the number of job executions created for
    #             the job and various other factors. While the job is being deleted, the status of the job
    #             will be shown as "DELETION_IN_PROGRESS". Attempting to delete or cancel a job whose
    #             status is already "DELETION_IN_PROGRESS" will result in an error.</p>
    #          <p>Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time, or a
    #             LimitExceededException will occur.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteJob</a> action.</p>
    # @param [Hash, Types::DeleteJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the job to be deleted.</p>
    #            <p>After a job deletion is completed, you may reuse this jobId when you create a new
    #               job. However, this is not recommended, and you must ensure that your devices are not
    #               using the jobId to refer to the deleted job.</p>
    # @option params [Boolean] :force
    #   <p>(Optional) When true, you can delete a job which is "IN_PROGRESS". Otherwise, you
    #               can only delete a job which is in a terminal state ("COMPLETED" or "CANCELED") or an
    #               exception will occur. The default is false.</p>
    #            <note>
    #               <p>Deleting a job which is "IN_PROGRESS", will cause a device which is executing
    #                   the job to be unable to access job information or update the job execution status.
    #                   Use caution and ensure that each device executing a job which is deleted is able to
    #                   recover to a valid state.</p>
    #            </note>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     force: false,
    #     namespace_id: "NamespaceId"
    #   }
    #   options = {}
    #   response = client.delete_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_job(params = {}, options = {})
      request = build_request(:delete_job, params)
      request.send_request(options)
    end

    # <p>Deletes a job execution.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteJobExecution</a> action.</p>
    # @param [Hash, Types::DeleteJobExecutionRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the job whose execution on a particular device will be deleted.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing whose job execution will be deleted.</p>
    # @option params [Integer] :execution_number
    #   <p>The ID of the job execution to be deleted. The <code>executionNumber</code> refers
    #               to the execution of a particular job on a particular device.</p>
    #            <p>Note that once a job execution is deleted, the <code>executionNumber</code> may be
    #               reused by IoT, so be sure you get and use the correct value here.</p>
    # @option params [Boolean] :force
    #   <p>(Optional) When true, you can delete a job execution which is "IN_PROGRESS".
    #               Otherwise, you can only delete a job execution which is in a terminal state
    #               ("SUCCEEDED", "FAILED", "REJECTED", "REMOVED" or "CANCELED") or an exception will occur.
    #               The default is false.</p>
    #            <note>
    #               <p>Deleting a job execution which is "IN_PROGRESS", will cause the device to be
    #                   unable to access job information or update the job execution status. Use caution and
    #                   ensure that the device is able to recover to a valid state.</p>
    #            </note>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     execution_number: 1, # required
    #     force: false,
    #     namespace_id: "NamespaceId"
    #   }
    #   options = {}
    #   response = client.delete_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_job_execution(params = {}, options = {})
      request = build_request(:delete_job_execution, params)
      request.send_request(options)
    end

    # <p>Deletes the specified job template.</p>
    # @param [Hash, Types::DeleteJobTemplateRequest] params
    # @option params [String] :job_template_id
    #   <p>The unique identifier of the job template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_template_id: "JobTemplateId", # required
    #   }
    #   options = {}
    #   response = client.delete_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_job_template(params = {}, options = {})
      request = build_request(:delete_job_template, params)
      request.send_request(options)
    end

    # <p>Deletes a defined mitigation action from your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteMitigationAction</a> action.</p>
    # @param [Hash, Types::DeleteMitigationActionRequest] params
    # @option params [String] :action_name
    #   <p>The name of the mitigation action that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_name: "MitigationActionName", # required
    #   }
    #   options = {}
    #   response = client.delete_mitigation_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMitigationActionResponse]
    def delete_mitigation_action(params = {}, options = {})
      request = build_request(:delete_mitigation_action, params)
      request.send_request(options)
    end

    # <p>Delete an OTA update.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteOTAUpdate</a> action.</p>
    # @param [Hash, Types::DeleteOTAUpdateRequest] params
    # @option params [String] :ota_update_id
    #   <p>The ID of the OTA update to delete.</p>
    # @option params [Boolean] :delete_stream
    #   <p>When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted.
    #               Ignored if the stream specified in the OTAUpdate is supplied by the user.</p>
    # @option params [Boolean] :force_delete_aws_job
    #   <p>When true, deletes the IoT job created by the OTAUpdate process even if it is "IN_PROGRESS". Otherwise, if the 
    #               job is not in a terminal state ("COMPLETED" or "CANCELED") an exception will occur. The default is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ota_update_id: "OTAUpdateId", # required
    #     delete_stream: false,
    #     force_delete_aws_job: false
    #   }
    #   options = {}
    #   response = client.delete_ota_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOTAUpdateResponse]
    def delete_ota_update(params = {}, options = {})
      request = build_request(:delete_ota_update, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version from a software package.</p>
    #          <p>
    #             <b>Note:</b> All package versions must be deleted before deleting the software package.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeletePackageVersion</a> action.</p>
    # @param [Hash, Types::DeletePackageRequest] params
    # @option params [String] :package_name
    #   <p>The name of the target software package.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePackageResponse]
    def delete_package(params = {}, options = {})
      request = build_request(:delete_package, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version from a software package.</p>
    #          <p>
    #             <b>Note:</b> If a package version is designated as default, you must remove the designation from the software package using the <a>UpdatePackage</a> action.</p>
    # @param [Hash, Types::DeletePackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the associated software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the target package version.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePackageVersionResponse]
    def delete_package_version(params = {}, options = {})
      request = build_request(:delete_package_version, params)
      request.send_request(options)
    end

    # <p>Deletes the specified policy.</p>
    #          <p>A policy cannot be deleted if it has non-default versions or it is attached to any
    #          certificate.</p>
    #          <p>To delete a policy, use the <a>DeletePolicyVersion</a> action to delete all non-default
    #          versions of the policy; use the <a>DetachPolicy</a> action to detach the policy from any
    #          certificate; and then use the DeletePolicy action to delete the policy.</p>
    #          <p>When a policy is deleted using DeletePolicy, its default version is deleted with
    #          it.</p>
    #          <note>
    #             <p>Because of the distributed nature of Amazon Web Services, it can take up to five minutes after
    #          a policy is detached before it's ready to be deleted.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeletePolicy</a> action.</p>
    # @param [Hash, Types::DeletePolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.delete_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy(params = {}, options = {})
      request = build_request(:delete_policy, params)
      request.send_request(options)
    end

    # <p>Deletes the specified version of the specified policy. You cannot delete the default
    #          version of a policy using this action. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default
    #          version, use ListPolicyVersions.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeletePolicyVersion</a> action.</p>
    # @param [Hash, Types::DeletePolicyVersionRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_policy_version(params = {}, options = {})
      request = build_request(:delete_policy_version, params)
      request.send_request(options)
    end

    # <p>Deletes a provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteProvisioningTemplate</a> action.</p>
    # @param [Hash, Types::DeleteProvisioningTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the fleet provision template to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.delete_provisioning_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProvisioningTemplateResponse]
    def delete_provisioning_template(params = {}, options = {})
      request = build_request(:delete_provisioning_template, params)
      request.send_request(options)
    end

    # <p>Deletes a provisioning template version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteProvisioningTemplateVersion</a> action.</p>
    # @param [Hash, Types::DeleteProvisioningTemplateVersionRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template version to delete.</p>
    # @option params [Integer] :version_id
    #   <p>The provisioning template version ID to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_provisioning_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProvisioningTemplateVersionResponse]
    def delete_provisioning_template_version(params = {}, options = {})
      request = build_request(:delete_provisioning_template_version, params)
      request.send_request(options)
    end

    # <p>Deletes a CA certificate registration code.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteRegistrationCode</a> action.</p>
    # @param [Hash, Types::DeleteRegistrationCodeRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_registration_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRegistrationCodeResponse]
    def delete_registration_code(params = {}, options = {})
      request = build_request(:delete_registration_code, params)
      request.send_request(options)
    end

    # <p>Deletes a role alias</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteRoleAlias</a> action.</p>
    # @param [Hash, Types::DeleteRoleAliasRequest] params
    # @option params [String] :role_alias
    #   <p>The role alias to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_alias: "RoleAlias", # required
    #   }
    #   options = {}
    #   response = client.delete_role_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRoleAliasResponse]
    def delete_role_alias(params = {}, options = {})
      request = build_request(:delete_role_alias, params)
      request.send_request(options)
    end

    # <p>Deletes a scheduled audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteScheduledAudit</a> action.</p>
    # @param [Hash, Types::DeleteScheduledAuditRequest] params
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_audit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScheduledAuditResponse]
    def delete_scheduled_audit(params = {}, options = {})
      request = build_request(:delete_scheduled_audit, params)
      request.send_request(options)
    end

    # <p>Deletes a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteSecurityProfile</a> action.</p>
    # @param [Hash, Types::DeleteSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile to be deleted.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSecurityProfileResponse]
    def delete_security_profile(params = {}, options = {})
      request = build_request(:delete_security_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a stream.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteStream</a> action.</p>
    # @param [Hash, Types::DeleteStreamRequest] params
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_id: "StreamId", # required
    #   }
    #   options = {}
    #   response = client.delete_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStreamResponse]
    def delete_stream(params = {}, options = {})
      request = build_request(:delete_stream, params)
      request.send_request(options)
    end

    # <p>Deletes the specified thing. Returns successfully with no error if the deletion is
    # 			successful or you specify a thing that doesn't exist.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThing</a> action.</p>
    # @param [Hash, Types::DeleteThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing to delete.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>DeleteThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThingResponse]
    def delete_thing(params = {}, options = {})
      request = build_request(:delete_thing, params)
      request.send_request(options)
    end

    # <p>Deletes a thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingGroup</a> action.</p>
    # @param [Hash, Types::DeleteThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The name of the thing group to delete.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.delete_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThingGroupResponse]
    def delete_thing_group(params = {}, options = {})
      request = build_request(:delete_thing_group, params)
      request.send_request(options)
    end

    # <p>Deletes the specified thing type. You cannot delete a thing type if it has things
    # 			associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and
    # 			finally use <a>DeleteThingType</a> to delete the thing type.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingType</a> action.</p>
    # @param [Hash, Types::DeleteThingTypeRequest] params
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_type_name: "ThingTypeName", # required
    #   }
    #   options = {}
    #   response = client.delete_thing_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteThingTypeResponse]
    def delete_thing_type(params = {}, options = {})
      request = build_request(:delete_thing_type, params)
      request.send_request(options)
    end

    # <p>Deletes the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteTopicRule</a> action.</p>
    # @param [Hash, Types::DeleteTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #   }
    #   options = {}
    #   response = client.delete_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_topic_rule(params = {}, options = {})
      request = build_request(:delete_topic_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a topic rule destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteTopicRuleDestination</a> action.</p>
    # @param [Hash, Types::DeleteTopicRuleDestinationRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AwsArn", # required
    #   }
    #   options = {}
    #   response = client.delete_topic_rule_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTopicRuleDestinationResponse]
    def delete_topic_rule_destination(params = {}, options = {})
      request = build_request(:delete_topic_rule_destination, params)
      request.send_request(options)
    end

    # <p>Deletes a logging level.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteV2LoggingLevel</a> action.</p>
    # @param [Hash, Types::DeleteV2LoggingLevelRequest] params
    # @option params [String] :target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    # @option params [String] :target_name
    #   <p>The name of the resource for which you are configuring logging.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_type: "DEFAULT" # One of: ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"], # required
    #     target_name: "LogTargetName", # required
    #   }
    #   options = {}
    #   response = client.delete_v2_logging_level(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_v2_logging_level(params = {}, options = {})
      request = build_request(:delete_v2_logging_level, params)
      request.send_request(options)
    end

    # <p>Deprecates a thing type. You can not associate new things with deprecated thing
    # 			type.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeprecateThingType</a> action.</p>
    # @param [Hash, Types::DeprecateThingTypeRequest] params
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type to deprecate.</p>
    # @option params [Boolean] :undo_deprecate
    #   <p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can
    #   			associate it with things.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_type_name: "ThingTypeName", # required
    #     undo_deprecate: false
    #   }
    #   options = {}
    #   response = client.deprecate_thing_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeprecateThingTypeResponse]
    def deprecate_thing_type(params = {}, options = {})
      request = build_request(:deprecate_thing_type, params)
      request.send_request(options)
    end

    # <p>Gets information about the Device Defender audit settings for this account.
    #           Settings include how audit notifications are sent and which audit checks are
    #           enabled or disabled.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAccountAuditConfiguration</a> action.</p>
    # @param [Hash, Types::DescribeAccountAuditConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_audit_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "RoleArn",
    #     audit_notification_target_configurations: {
    #       "AuditNotificationType" => {
    #         target_arn: "TargetArn",
    #         role_arn: "RoleArn",
    #         enabled: false
    #       }
    #     },
    #     audit_check_configurations: {
    #       "AuditCheckName" => {
    #         enabled: false,
    #         configuration: {
    #           "ConfigName" => "ConfigValue"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeAccountAuditConfigurationResponse]
    def describe_account_audit_configuration(params = {}, options = {})
      request = build_request(:describe_account_audit_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about a single audit finding. Properties include the reason for
    #       noncompliance, the severity of the issue,
    #       and the start time
    #       when the audit that returned the
    #       finding.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuditFinding</a> action.</p>
    # @param [Hash, Types::DescribeAuditFindingRequest] params
    # @option params [String] :finding_id
    #   <p>A unique identifier for a single audit finding. You can use this identifier to apply mitigation actions to the finding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "FindingId", # required
    #   }
    #   options = {}
    #   response = client.describe_audit_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding: {
    #       finding_id: "FindingId",
    #       task_id: "AuditTaskId",
    #       check_name: "AuditCheckName",
    #       task_start_time: Time.now,
    #       finding_time: Time.now,
    #       severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW"],
    #       non_compliant_resource: {
    #         resource_type: "DEVICE_CERTIFICATE" # One of: ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"],
    #         resource_identifier: {
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId"
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #           issuer_certificate_identifier: {
    #             issuer_certificate_subject: "IssuerCertificateSubject",
    #             issuer_id: "IssuerId",
    #             issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #           },
    #           device_certificate_arn: "CertificateArn"
    #         },
    #         additional_info: {
    #           "String" => "String"
    #         }
    #       },
    #       related_resources: [
    #         {
    #           resource_type: "DEVICE_CERTIFICATE" # One of: ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"],
    #           resource_identifier: {
    #             device_certificate_id: "CertificateId",
    #             ca_certificate_id: "CertificateId",
    #             cognito_identity_pool_id: "CognitoIdentityPoolId",
    #             client_id: "ClientId",
    #             policy_version_identifier: {
    #               policy_name: "PolicyName",
    #               policy_version_id: "PolicyVersionId"
    #             },
    #             account: "AwsAccountId",
    #             iam_role_arn: "RoleArn",
    #             role_alias_arn: "RoleAliasArn",
    #             issuer_certificate_identifier: {
    #               issuer_certificate_subject: "IssuerCertificateSubject",
    #               issuer_id: "IssuerId",
    #               issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #             },
    #             device_certificate_arn: "CertificateArn"
    #           },
    #           additional_info: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       reason_for_non_compliance: "ReasonForNonCompliance",
    #       reason_for_non_compliance_code: "ReasonForNonComplianceCode",
    #       is_suppressed: false
    #     }
    #   }
    # @return [Types::DescribeAuditFindingResponse]
    def describe_audit_finding(params = {}, options = {})
      request = build_request(:describe_audit_finding, params)
      request.send_request(options)
    end

    # <p>Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.</p>
    # @param [Hash, Types::DescribeAuditMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>The unique identifier for the audit mitigation task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #   }
    #   options = {}
    #   response = client.describe_audit_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     task_statistics: {
    #       "AuditCheckName" => {
    #         total_findings_count: 1,
    #         failed_findings_count: 1,
    #         succeeded_findings_count: 1,
    #         skipped_findings_count: 1,
    #         canceled_findings_count: 1
    #       }
    #     },
    #     target: {
    #       audit_task_id: "AuditTaskId",
    #       finding_ids: ["FindingId"],
    #       audit_check_to_reason_code_filter: {
    #         "AuditCheckName" => ["ReasonForNonComplianceCode"]
    #       }
    #     },
    #     audit_check_to_actions_mapping: {
    #       "AuditCheckName" => ["MitigationActionName"]
    #     },
    #     actions_definition: [
    #       {
    #         name: "MitigationActionName",
    #         id: "MitigationActionId",
    #         role_arn: "RoleArn",
    #         action_params: {
    #           update_device_certificate_params: {
    #             action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #           },
    #           update_ca_certificate_params: {
    #             action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #           },
    #           add_things_to_thing_group_params: {
    #             thing_group_names: ["ThingGroupName"], # required
    #             override_dynamic_groups: false
    #           },
    #           replace_default_policy_version_params: {
    #             template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #           },
    #           enable_io_t_logging_params: {
    #             role_arn_for_logging: "RoleArn", # required
    #             log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #           },
    #           publish_finding_to_sns_params: {
    #             topic_arn: "SnsTopicArn", # required
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAuditMitigationActionsTaskResponse]
    def describe_audit_mitigation_actions_task(params = {}, options = {})
      request = build_request(:describe_audit_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>
    #       Gets information about a Device Defender audit suppression.
    #     </p>
    # @param [Hash, Types::DescribeAuditSuppressionRequest] params
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     }
    #   }
    #   options = {}
    #   response = client.describe_audit_suppression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     check_name: "AuditCheckName",
    #     resource_identifier: {
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     },
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: "AuditDescription"
    #   }
    # @return [Types::DescribeAuditSuppressionResponse]
    def describe_audit_suppression(params = {}, options = {})
      request = build_request(:describe_audit_suppression, params)
      request.send_request(options)
    end

    # <p>Gets information about a Device Defender audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuditTask</a> action.</p>
    # @param [Hash, Types::DescribeAuditTaskRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the audit whose information you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "AuditTaskId", # required
    #   }
    #   options = {}
    #   response = client.describe_audit_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"],
    #     task_type: "ON_DEMAND_AUDIT_TASK" # One of: ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"],
    #     task_start_time: Time.now,
    #     task_statistics: {
    #       total_checks: 1,
    #       in_progress_checks: 1,
    #       waiting_for_data_collection_checks: 1,
    #       compliant_checks: 1,
    #       non_compliant_checks: 1,
    #       failed_checks: 1,
    #       canceled_checks: 1
    #     },
    #     scheduled_audit_name: "ScheduledAuditName",
    #     audit_details: {
    #       "AuditCheckName" => {
    #         check_run_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", "FAILED"],
    #         check_compliant: false,
    #         total_resources_count: 1,
    #         non_compliant_resources_count: 1,
    #         suppressed_non_compliant_resources_count: 1,
    #         error_code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DescribeAuditTaskResponse]
    def describe_audit_task(params = {}, options = {})
      request = build_request(:describe_audit_task, params)
      request.send_request(options)
    end

    # <p>Describes an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeAuthorizer</a> action.</p>
    # @param [Hash, Types::DescribeAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The name of the authorizer to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #   }
    #   options = {}
    #   response = client.describe_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_description: {
    #       authorizer_name: "AuthorizerName",
    #       authorizer_arn: "AuthorizerArn",
    #       authorizer_function_arn: "AuthorizerFunctionArn",
    #       token_key_name: "TokenKeyName",
    #       token_signing_public_keys: {
    #         "KeyName" => "KeyValue"
    #       },
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       signing_disabled: false,
    #       enable_caching_for_http: false
    #     }
    #   }
    # @return [Types::DescribeAuthorizerResponse]
    def describe_authorizer(params = {}, options = {})
      request = build_request(:describe_authorizer, params)
      request.send_request(options)
    end

    # <p>Returns information about a billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeBillingGroup</a> action.</p>
    # @param [Hash, Types::DescribeBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName", # required
    #   }
    #   options = {}
    #   response = client.describe_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_group_name: "BillingGroupName",
    #     billing_group_id: "BillingGroupId",
    #     billing_group_arn: "BillingGroupArn",
    #     version: 1,
    #     billing_group_properties: {
    #       billing_group_description: "BillingGroupDescription"
    #     },
    #     billing_group_metadata: {
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeBillingGroupResponse]
    def describe_billing_group(params = {}, options = {})
      request = build_request(:describe_billing_group, params)
      request.send_request(options)
    end

    # <p>Describes a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCACertificate</a> action.</p>
    # @param [Hash, Types::DescribeCACertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The CA certificate identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.describe_ca_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_description: {
    #       certificate_arn: "CertificateArn",
    #       certificate_id: "CertificateId",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       certificate_pem: "CertificatePem",
    #       owned_by: "AwsAccountId",
    #       creation_date: Time.now,
    #       auto_registration_status: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #       last_modified_date: Time.now,
    #       customer_version: 1,
    #       generation_id: "GenerationId",
    #       validity: {
    #         not_before: Time.now,
    #         not_after: Time.now
    #       },
    #       certificate_mode: "DEFAULT" # One of: ["DEFAULT", "SNI_ONLY"]
    #     },
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #       template_name: "TemplateName"
    #     }
    #   }
    # @return [Types::DescribeCACertificateResponse]
    def describe_ca_certificate(params = {}, options = {})
      request = build_request(:describe_ca_certificate, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCertificate</a> action.</p>
    # @param [Hash, Types::DescribeCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_description: {
    #       certificate_arn: "CertificateArn",
    #       certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"],
    #       certificate_pem: "CertificatePem",
    #       owned_by: "AwsAccountId",
    #       previous_owned_by: "AwsAccountId",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       customer_version: 1,
    #       transfer_data: {
    #         transfer_message: "Message",
    #         reject_reason: "Message",
    #         transfer_date: Time.now,
    #         accept_date: Time.now,
    #         reject_date: Time.now
    #       },
    #       generation_id: "GenerationId",
    #       validity: {
    #         not_before: Time.now,
    #         not_after: Time.now
    #       },
    #       certificate_mode: "DEFAULT" # One of: ["DEFAULT", "SNI_ONLY"]
    #     }
    #   }
    # @return [Types::DescribeCertificateResponse]
    def describe_certificate(params = {}, options = {})
      request = build_request(:describe_certificate, params)
      request.send_request(options)
    end

    # <p>Describes a certificate provider.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCertificateProvider</a> action.
    #       </p>
    # @param [Hash, Types::DescribeCertificateProviderRequest] params
    # @option params [String] :certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_provider_name: "CertificateProviderName", # required
    #   }
    #   options = {}
    #   response = client.describe_certificate_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_provider_name: "CertificateProviderName",
    #     certificate_provider_arn: "CertificateProviderArn",
    #     lambda_function_arn: "CertificateProviderFunctionArn",
    #     account_default_for_operations: ["CreateCertificateFromCsr" # One of: ["CreateCertificateFromCsr"]],
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeCertificateProviderResponse]
    def describe_certificate_provider(params = {}, options = {})
      request = build_request(:describe_certificate_provider, params)
      request.send_request(options)
    end

    # <p>
    #       Gets information about a Device Defender detect custom metric.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeCustomMetric</a> action.</p>
    # @param [Hash, Types::DescribeCustomMetricRequest] params
    # @option params [String] :metric_name
    #   <p>
    #         The name of the custom metric.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "MetricName", # required
    #   }
    #   options = {}
    #   response = client.describe_custom_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "MetricName",
    #     metric_arn: "CustomMetricArn",
    #     metric_type: "string-list" # One of: ["string-list", "ip-address-list", "number-list", "number"],
    #     display_name: "CustomMetricDisplayName",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeCustomMetricResponse]
    def describe_custom_metric(params = {}, options = {})
      request = build_request(:describe_custom_metric, params)
      request.send_request(options)
    end

    # <p>Describes the default authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDefaultAuthorizer</a> action.</p>
    # @param [Hash, Types::DescribeDefaultAuthorizerRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_default_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_description: {
    #       authorizer_name: "AuthorizerName",
    #       authorizer_arn: "AuthorizerArn",
    #       authorizer_function_arn: "AuthorizerFunctionArn",
    #       token_key_name: "TokenKeyName",
    #       token_signing_public_keys: {
    #         "KeyName" => "KeyValue"
    #       },
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       signing_disabled: false,
    #       enable_caching_for_http: false
    #     }
    #   }
    # @return [Types::DescribeDefaultAuthorizerResponse]
    def describe_default_authorizer(params = {}, options = {})
      request = build_request(:describe_default_authorizer, params)
      request.send_request(options)
    end

    # <p>
    #       Gets information about a Device Defender ML Detect mitigation action.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDetectMitigationActionsTask</a> action.</p>
    # @param [Hash, Types::DescribeDetectMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #   }
    #   options = {}
    #   response = client.describe_detect_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_summary: {
    #       task_id: "MitigationActionsTaskId",
    #       task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"],
    #       task_start_time: Time.now,
    #       task_end_time: Time.now,
    #       target: {
    #         violation_ids: ["ViolationId"],
    #         security_profile_name: "SecurityProfileName",
    #         behavior_name: "BehaviorName"
    #       },
    #       violation_event_occurrence_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       },
    #       only_active_violations_included: false,
    #       suppressed_alerts_included: false,
    #       actions_definition: [
    #         {
    #           name: "MitigationActionName",
    #           id: "MitigationActionId",
    #           role_arn: "RoleArn",
    #           action_params: {
    #             update_device_certificate_params: {
    #               action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #             },
    #             update_ca_certificate_params: {
    #               action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #             },
    #             add_things_to_thing_group_params: {
    #               thing_group_names: ["ThingGroupName"], # required
    #               override_dynamic_groups: false
    #             },
    #             replace_default_policy_version_params: {
    #               template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #             },
    #             enable_io_t_logging_params: {
    #               role_arn_for_logging: "RoleArn", # required
    #               log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #             },
    #             publish_finding_to_sns_params: {
    #               topic_arn: "SnsTopicArn", # required
    #             }
    #           }
    #         }
    #       ],
    #       task_statistics: {
    #         actions_executed: 1,
    #         actions_skipped: 1,
    #         actions_failed: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeDetectMitigationActionsTaskResponse]
    def describe_detect_mitigation_actions_task(params = {}, options = {})
      request = build_request(:describe_detect_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>Provides details about a dimension that is defined in your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDimension</a> action.</p>
    # @param [Hash, Types::DescribeDimensionRequest] params
    # @option params [String] :name
    #   <p>The unique identifier for the dimension.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DimensionName", # required
    #   }
    #   options = {}
    #   response = client.describe_dimension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DimensionName",
    #     arn: "DimensionArn",
    #     type: "TOPIC_FILTER" # One of: ["TOPIC_FILTER"],
    #     string_values: ["DimensionStringValue"],
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeDimensionResponse]
    def describe_dimension(params = {}, options = {})
      request = build_request(:describe_dimension, params)
      request.send_request(options)
    end

    # <p>Gets summary information about a domain configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeDomainConfiguration</a> action.</p>
    # @param [Hash, Types::DescribeDomainConfigurationRequest] params
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_configuration_name: "ReservedDomainConfigurationName", # required
    #   }
    #   options = {}
    #   response = client.describe_domain_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_configuration_name: "ReservedDomainConfigurationName",
    #     domain_configuration_arn: "DomainConfigurationArn",
    #     domain_name: "DomainName",
    #     server_certificates: [
    #       {
    #         server_certificate_arn: "AcmCertificateArn",
    #         server_certificate_status: "INVALID" # One of: ["INVALID", "VALID"],
    #         server_certificate_status_detail: "ServerCertificateStatusDetail"
    #       }
    #     ],
    #     authorizer_config: {
    #       default_authorizer_name: "AuthorizerName",
    #       allow_authorizer_override: false
    #     },
    #     domain_configuration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     service_type: "DATA" # One of: ["DATA", "CREDENTIAL_PROVIDER", "JOBS"],
    #     domain_type: "ENDPOINT" # One of: ["ENDPOINT", "AWS_MANAGED", "CUSTOMER_MANAGED"],
    #     last_status_change_date: Time.now,
    #     tls_config: {
    #       security_policy: "SecurityPolicy"
    #     },
    #     server_certificate_config: {
    #       enable_ocsp_check: false,
    #       ocsp_lambda_arn: "OCSPLambdaArn",
    #       ocsp_authorized_responder_arn: "AcmCertificateArn"
    #     },
    #     authentication_type: "CUSTOM_AUTH_X509" # One of: ["CUSTOM_AUTH_X509", "CUSTOM_AUTH", "AWS_X509", "AWS_SIGV4", "DEFAULT"],
    #     application_protocol: "SECURE_MQTT" # One of: ["SECURE_MQTT", "MQTT_WSS", "HTTPS", "DEFAULT"],
    #     client_certificate_config: {
    #       client_certificate_callback_arn: "ClientCertificateCallbackArn"
    #     }
    #   }
    # @return [Types::DescribeDomainConfigurationResponse]
    def describe_domain_configuration(params = {}, options = {})
      request = build_request(:describe_domain_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the encryption configuration for resources and data of your Amazon Web Services account in
    #          Amazon Web Services IoT Core. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/key-management.html">Key management in IoT</a> from
    #          the <i>Amazon Web Services IoT Core Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeEncryptionConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"],
    #     kms_key_arn: "KmsKeyArn",
    #     kms_access_role_arn: "KmsAccessRoleArn",
    #     configuration_details: {
    #       configuration_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #       error_code: "ErrorCode",
    #       error_message: "ErrorMessage"
    #     },
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeEncryptionConfigurationResponse]
    def describe_encryption_configuration(params = {}, options = {})
      request = build_request(:describe_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Returns or creates a unique endpoint specific to the Amazon Web Services account making the
    #          call.</p>
    #          <note>
    #             <p>The first time <code>DescribeEndpoint</code> is called, an endpoint is created. All subsequent calls to <code>DescribeEndpoint</code> return the same endpoint.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeEndpoint</a> action.</p>
    # @param [Hash, Types::DescribeEndpointRequest] params
    # @option params [String] :endpoint_type
    #   <p>The endpoint type. Valid endpoint types include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data</code> - Returns a VeriSign signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Data-ATS</code> - Returns an ATS signed data endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:CredentialProvider</code> - Returns an IoT credentials provider API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>iot:Jobs</code> - Returns an IoT device management Jobs API
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #            <p>We strongly recommend that customers use the newer <code>iot:Data-ATS</code> endpoint type to avoid 
    #            issues related to the widespread distrust of Symantec certificate authorities. ATS Signed Certificates
    #            are more secure and are trusted by most popular browsers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_type: "EndpointType"
    #   }
    #   options = {}
    #   response = client.describe_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_address: "EndpointAddress"
    #   }
    # @return [Types::DescribeEndpointResponse]
    def describe_endpoint(params = {}, options = {})
      request = build_request(:describe_endpoint, params)
      request.send_request(options)
    end

    # <p>Describes event configurations.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeEventConfigurations</a> action.</p>
    # @param [Hash, Types::DescribeEventConfigurationsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_event_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_configurations: {
    #       "EventType" => {
    #         enabled: false
    #       }
    #     },
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeEventConfigurationsResponse]
    def describe_event_configurations(params = {}, options = {})
      request = build_request(:describe_event_configurations, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeFleetMetric</a> action.</p>
    # @param [Hash, Types::DescribeFleetMetricRequest] params
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "FleetMetricName", # required
    #   }
    #   options = {}
    #   response = client.describe_fleet_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "FleetMetricName",
    #     query_string: "QueryString",
    #     aggregation_type: {
    #       name: "Statistics" # One of: ["Statistics", "Percentiles", "Cardinality"], # required
    #       values: ["AggregationTypeValue"]
    #     },
    #     period: 1,
    #     aggregation_field: "AggregationField",
    #     description: "FleetMetricDescription",
    #     query_version: "QueryVersion",
    #     index_name: "IndexName",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #     version: 1,
    #     metric_arn: "FleetMetricArn"
    #   }
    # @return [Types::DescribeFleetMetricResponse]
    def describe_fleet_metric(params = {}, options = {})
      request = build_request(:describe_fleet_metric, params)
      request.send_request(options)
    end

    # <p>Describes a search index.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeIndex</a> action.</p>
    # @param [Hash, Types::DescribeIndexRequest] params
    # @option params [String] :index_name
    #   <p>The index name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName", # required
    #   }
    #   options = {}
    #   response = client.describe_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_name: "IndexName",
    #     index_status: "ACTIVE" # One of: ["ACTIVE", "BUILDING", "REBUILDING"],
    #     schema: "IndexSchema"
    #   }
    # @return [Types::DescribeIndexResponse]
    def describe_index(params = {}, options = {})
      request = build_request(:describe_index, params)
      request.send_request(options)
    end

    # <p>Describes a job.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeJob</a> action.</p>
    # @param [Hash, Types::DescribeJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [Boolean] :before_substitution
    #   <p>Provides a view of the job document before and after the substitution parameters have been resolved with their exact values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     before_substitution: false
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_source: "JobDocumentSource",
    #     job: {
    #       job_arn: "JobArn",
    #       job_id: "JobId",
    #       target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"],
    #       force_canceled: false,
    #       reason_code: "ReasonCode",
    #       comment: "Comment",
    #       targets: ["TargetArn"],
    #       description: "JobDescription",
    #       presigned_url_config: {
    #         role_arn: "RoleArn",
    #         expires_in_sec: 1
    #       },
    #       job_executions_rollout_config: {
    #         maximum_per_minute: 1,
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         }
    #       },
    #       abort_config: {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #             action: "CANCEL" # One of: ["CANCEL"], # required
    #             threshold_percentage: 1.0, # required
    #             min_number_of_executed_things: 1, # required
    #           }
    #         ]
    #       },
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       completed_at: Time.now,
    #       job_process_details: {
    #         processing_targets: ["ProcessingTargetName"],
    #         number_of_canceled_things: 1,
    #         number_of_succeeded_things: 1,
    #         number_of_failed_things: 1,
    #         number_of_rejected_things: 1,
    #         number_of_queued_things: 1,
    #         number_of_in_progress_things: 1,
    #         number_of_removed_things: 1,
    #         number_of_timed_out_things: 1
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       },
    #       namespace_id: "NamespaceId",
    #       job_template_arn: "JobTemplateArn",
    #       job_executions_retry_config: {
    #         criteria_list: [ # required
    #           {
    #             failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"], # required
    #             number_of_retries: 1, # required
    #           }
    #         ]
    #       },
    #       document_parameters: {
    #         "ParameterKey" => "ParameterValue"
    #       },
    #       is_concurrent: false,
    #       scheduling_config: {
    #         start_time: "StringDateTime",
    #         end_time: "StringDateTime",
    #         end_behavior: "STOP_ROLLOUT" # One of: ["STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"],
    #         maintenance_windows: [
    #           {
    #             start_time: "CronExpression", # required
    #             duration_in_minutes: 1, # required
    #           }
    #         ]
    #       },
    #       scheduled_job_rollouts: [
    #         {
    #           start_time: "StringDateTime"
    #         }
    #       ],
    #       destination_package_versions: ["PackageVersionArn"]
    #     }
    #   }
    # @return [Types::DescribeJobResponse]
    def describe_job(params = {}, options = {})
      request = build_request(:describe_job, params)
      request.send_request(options)
    end

    # <p>Describes a job execution.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeJobExecution</a> action.</p>
    # @param [Hash, Types::DescribeJobExecutionRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing on which the job execution is running.</p>
    # @option params [Integer] :execution_number
    #   <p>A string (consisting of the digits "0" through "9" which is used to specify a
    #               particular job execution on a particular device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     execution_number: 1
    #   }
    #   options = {}
    #   response = client.describe_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution: {
    #       job_id: "JobId",
    #       status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #       force_canceled: false,
    #       status_details: {
    #         details_map: {
    #           "DetailsKey" => "DetailsValue"
    #         }
    #       },
    #       thing_arn: "ThingArn",
    #       queued_at: Time.now,
    #       started_at: Time.now,
    #       last_updated_at: Time.now,
    #       execution_number: 1,
    #       version_number: 1,
    #       approximate_seconds_before_timed_out: 1
    #     }
    #   }
    # @return [Types::DescribeJobExecutionResponse]
    def describe_job_execution(params = {}, options = {})
      request = build_request(:describe_job_execution, params)
      request.send_request(options)
    end

    # <p>Returns information about a job template.</p>
    # @param [Hash, Types::DescribeJobTemplateRequest] params
    # @option params [String] :job_template_id
    #   <p>The unique identifier of the job template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_template_id: "JobTemplateId", # required
    #   }
    #   options = {}
    #   response = client.describe_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_template_arn: "JobTemplateArn",
    #     job_template_id: "JobTemplateId",
    #     description: "JobDescription",
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     created_at: Time.now,
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         }
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #           action: "CANCEL" # One of: ["CANCEL"], # required
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         }
    #       ]
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"], # required
    #           number_of_retries: 1, # required
    #         }
    #       ]
    #     },
    #     maintenance_windows: [
    #       {
    #         start_time: "CronExpression", # required
    #         duration_in_minutes: 1, # required
    #       }
    #     ],
    #     destination_package_versions: ["PackageVersionArn"]
    #   }
    # @return [Types::DescribeJobTemplateResponse]
    def describe_job_template(params = {}, options = {})
      request = build_request(:describe_job_template, params)
      request.send_request(options)
    end

    # <p>View details of a managed job template.</p>
    # @param [Hash, Types::DescribeManagedJobTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The unique name of a managed job template, which is required.</p>
    # @option params [String] :template_version
    #   <p>An optional parameter to specify version of a managed template. If not specified, the
    #               pre-defined default version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ManagedJobTemplateName", # required
    #     template_version: "ManagedTemplateVersion"
    #   }
    #   options = {}
    #   response = client.describe_managed_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_name: "ManagedJobTemplateName",
    #     template_arn: "JobTemplateArn",
    #     description: "JobDescription",
    #     template_version: "ManagedTemplateVersion",
    #     environments: ["Environment"],
    #     document_parameters: [
    #       {
    #         key: "ParameterKey",
    #         description: "JobDescription",
    #         regex: "Regex",
    #         example: "Example",
    #         optional: false
    #       }
    #     ],
    #     document: "JobDocument"
    #   }
    # @return [Types::DescribeManagedJobTemplateResponse]
    def describe_managed_job_template(params = {}, options = {})
      request = build_request(:describe_managed_job_template, params)
      request.send_request(options)
    end

    # <p>Gets information about a mitigation action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeMitigationAction</a> action.</p>
    # @param [Hash, Types::DescribeMitigationActionRequest] params
    # @option params [String] :action_name
    #   <p>The friendly name that uniquely identifies the mitigation action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_name: "MitigationActionName", # required
    #   }
    #   options = {}
    #   response = client.describe_mitigation_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_name: "MitigationActionName",
    #     action_type: "UPDATE_DEVICE_CERTIFICATE" # One of: ["UPDATE_DEVICE_CERTIFICATE", "UPDATE_CA_CERTIFICATE", "ADD_THINGS_TO_THING_GROUP", "REPLACE_DEFAULT_POLICY_VERSION", "ENABLE_IOT_LOGGING", "PUBLISH_FINDING_TO_SNS"],
    #     action_arn: "MitigationActionArn",
    #     action_id: "MitigationActionId",
    #     role_arn: "RoleArn",
    #     action_params: {
    #       update_device_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       update_ca_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     },
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::DescribeMitigationActionResponse]
    def describe_mitigation_action(params = {}, options = {})
      request = build_request(:describe_mitigation_action, params)
      request.send_request(options)
    end

    # <p>Returns information about a provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeProvisioningTemplate</a> action.</p>
    # @param [Hash, Types::DescribeProvisioningTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #   }
    #   options = {}
    #   response = client.describe_provisioning_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     template_arn: "TemplateArn",
    #     template_name: "TemplateName",
    #     description: "TemplateDescription",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     default_version_id: 1,
    #     template_body: "TemplateBody",
    #     enabled: false,
    #     provisioning_role_arn: "RoleArn",
    #     pre_provisioning_hook: {
    #       payload_version: "PayloadVersion",
    #       target_arn: "TargetArn", # required
    #     },
    #     type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITP"]
    #   }
    # @return [Types::DescribeProvisioningTemplateResponse]
    def describe_provisioning_template(params = {}, options = {})
      request = build_request(:describe_provisioning_template, params)
      request.send_request(options)
    end

    # <p>Returns information about a provisioning template version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeProvisioningTemplateVersion</a> action.</p>
    # @param [Hash, Types::DescribeProvisioningTemplateVersionRequest] params
    # @option params [String] :template_name
    #   <p>The template name.</p>
    # @option params [Integer] :version_id
    #   <p>The provisioning template version ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.describe_provisioning_template_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_id: 1,
    #     creation_date: Time.now,
    #     template_body: "TemplateBody",
    #     is_default_version: false
    #   }
    # @return [Types::DescribeProvisioningTemplateVersionResponse]
    def describe_provisioning_template_version(params = {}, options = {})
      request = build_request(:describe_provisioning_template_version, params)
      request.send_request(options)
    end

    # <p>Describes a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeRoleAlias</a> action.</p>
    # @param [Hash, Types::DescribeRoleAliasRequest] params
    # @option params [String] :role_alias
    #   <p>The role alias to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_alias: "RoleAlias", # required
    #   }
    #   options = {}
    #   response = client.describe_role_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_alias_description: {
    #       role_alias: "RoleAlias",
    #       role_alias_arn: "RoleAliasArn",
    #       role_arn: "RoleArn",
    #       owner: "AwsAccountId",
    #       credential_duration_seconds: 1,
    #       creation_date: Time.now,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeRoleAliasResponse]
    def describe_role_alias(params = {}, options = {})
      request = build_request(:describe_role_alias, params)
      request.send_request(options)
    end

    # <p>Gets information about a scheduled audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeScheduledAudit</a> action.</p>
    # @param [Hash, Types::DescribeScheduledAuditRequest] params
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit whose information you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   }
    #   options = {}
    #   response = client.describe_scheduled_audit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"],
    #     day_of_month: "DayOfMonth",
    #     day_of_week: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
    #     target_check_names: ["AuditCheckName"],
    #     scheduled_audit_name: "ScheduledAuditName",
    #     scheduled_audit_arn: "ScheduledAuditArn"
    #   }
    # @return [Types::DescribeScheduledAuditResponse]
    def describe_scheduled_audit(params = {}, options = {})
      request = build_request(:describe_scheduled_audit, params)
      request.send_request(options)
    end

    # <p>Gets information about a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeSecurityProfile</a> action.</p>
    # @param [Hash, Types::DescribeSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile
    #         whose information you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #   }
    #   options = {}
    #   response = client.describe_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_name: "SecurityProfileName",
    #     security_profile_arn: "SecurityProfileArn",
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic"
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #           }
    #         },
    #         suppress_alerts: false,
    #         export_metric: false
    #       }
    #     ],
    #     alert_targets: {
    #       "AlertTargetType" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         export_metric: false
    #       }
    #     ],
    #     version: 1,
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     metrics_export_config: {
    #       mqtt_topic: "MqttTopic", # required
    #       role_arn: "RoleArn", # required
    #     }
    #   }
    # @return [Types::DescribeSecurityProfileResponse]
    def describe_security_profile(params = {}, options = {})
      request = build_request(:describe_security_profile, params)
      request.send_request(options)
    end

    # <p>Gets information about a stream.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeStream</a> action.</p>
    # @param [Hash, Types::DescribeStreamRequest] params
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_id: "StreamId", # required
    #   }
    #   options = {}
    #   response = client.describe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_info: {
    #       stream_id: "StreamId",
    #       stream_arn: "StreamArn",
    #       stream_version: 1,
    #       description: "StreamDescription",
    #       files: [
    #         {
    #           file_id: 1,
    #           s3_location: {
    #             bucket: "S3Bucket",
    #             key: "S3Key",
    #             version: "S3Version"
    #           }
    #         }
    #       ],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::DescribeStreamResponse]
    def describe_stream(params = {}, options = {})
      request = build_request(:describe_stream, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThing</a> action.</p>
    # @param [Hash, Types::DescribeThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #   }
    #   options = {}
    #   response = client.describe_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_client_id: "ClientId",
    #     thing_name: "ThingName",
    #     thing_id: "ThingId",
    #     thing_arn: "ThingArn",
    #     thing_type_name: "ThingTypeName",
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     version: 1,
    #     billing_group_name: "BillingGroupName"
    #   }
    # @return [Types::DescribeThingResponse]
    def describe_thing(params = {}, options = {})
      request = build_request(:describe_thing, params)
      request.send_request(options)
    end

    # <p>Describe a thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingGroup</a> action.</p>
    # @param [Hash, Types::DescribeThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The name of the thing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #   }
    #   options = {}
    #   response = client.describe_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_group_name: "ThingGroupName",
    #     thing_group_id: "ThingGroupId",
    #     thing_group_arn: "ThingGroupArn",
    #     version: 1,
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         merge: false
    #       }
    #     },
    #     thing_group_metadata: {
    #       parent_group_name: "ThingGroupName",
    #       root_to_parent_thing_groups: [
    #         {
    #           group_name: "ThingGroupName",
    #           group_arn: "ThingGroupArn"
    #         }
    #       ],
    #       creation_date: Time.now
    #     },
    #     index_name: "IndexName",
    #     query_string: "QueryString",
    #     query_version: "QueryVersion",
    #     status: "ACTIVE" # One of: ["ACTIVE", "BUILDING", "REBUILDING"]
    #   }
    # @return [Types::DescribeThingGroupResponse]
    def describe_thing_group(params = {}, options = {})
      request = build_request(:describe_thing_group, params)
      request.send_request(options)
    end

    # <p>Describes a bulk thing provisioning task.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingRegistrationTask</a> action.</p>
    # @param [Hash, Types::DescribeThingRegistrationTaskRequest] params
    # @option params [String] :task_id
    #   <p>The task ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.describe_thing_registration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskId",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     template_body: "TemplateBody",
    #     input_file_bucket: "RegistryS3BucketName",
    #     input_file_key: "RegistryS3KeyName",
    #     role_arn: "RoleArn",
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Cancelled", "Cancelling"],
    #     message: "ErrorMessage",
    #     success_count: 1,
    #     failure_count: 1,
    #     percentage_progress: 1
    #   }
    # @return [Types::DescribeThingRegistrationTaskResponse]
    def describe_thing_registration_task(params = {}, options = {})
      request = build_request(:describe_thing_registration_task, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified thing type.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DescribeThingType</a> action.</p>
    # @param [Hash, Types::DescribeThingTypeRequest] params
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_type_name: "ThingTypeName", # required
    #   }
    #   options = {}
    #   response = client.describe_thing_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_type_name: "ThingTypeName",
    #     thing_type_id: "ThingTypeId",
    #     thing_type_arn: "ThingTypeArn",
    #     thing_type_properties: {
    #       thing_type_description: "ThingTypeDescription",
    #       searchable_attributes: ["AttributeName"],
    #       mqtt5_configuration: {
    #         propagating_attributes: [
    #           {
    #             user_property_key: "UserPropertyKeyName",
    #             thing_attribute: "AttributeName",
    #             connection_attribute: "ConnectionAttributeName"
    #           }
    #         ]
    #       }
    #     },
    #     thing_type_metadata: {
    #       deprecated: false,
    #       deprecation_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeThingTypeResponse]
    def describe_thing_type(params = {}, options = {})
      request = build_request(:describe_thing_type, params)
      request.send_request(options)
    end

    # <p>Detaches a policy from the specified target.</p>
    #          <note>
    #             <p>Because of the distributed nature of Amazon Web Services, it can take up to five minutes after
    #          a policy is detached before it's ready to be deleted.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachPolicy</a> action.</p>
    # @param [Hash, Types::DetachPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The policy to detach.</p>
    # @option params [String] :target
    #   <p>The target from which the policy will be detached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   }
    #   options = {}
    #   response = client.detach_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def detach_policy(params = {}, options = {})
      request = build_request(:detach_policy, params)
      request.send_request(options)
    end

    # <p>Removes the specified policy from the specified certificate.</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated and works as
    #          expected for backward compatibility, but we won't add enhancements. Use <a>DetachPolicy</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachPrincipalPolicy</a> action.</p>
    # @param [Hash, Types::DetachPrincipalPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy to detach.</p>
    # @option params [String] :principal
    #   <p>The principal.</p>
    #            <p>Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   }
    #   options = {}
    #   response = client.detach_principal_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    # @return [Smithy::Schema::EmptyStructure]
    def detach_principal_policy(params = {}, options = {})
      request = build_request(:detach_principal_policy, params)
      request.send_request(options)
    end

    # <p>Disassociates a Device Defender security profile from a thing group or from this account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachSecurityProfile</a> action.</p>
    # @param [Hash, Types::DetachSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The security profile that is detached.</p>
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the thing group from which the security profile is detached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   }
    #   options = {}
    #   response = client.detach_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachSecurityProfileResponse]
    def detach_security_profile(params = {}, options = {})
      request = build_request(:detach_security_profile, params)
      request.send_request(options)
    end

    # <p>Detaches the specified principal from the specified thing. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities.</p>
    #          <note>
    #             <p>This call is asynchronous. It might take several seconds for the detachment to
    # 				propagate.</p>
    #          </note>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DetachThingPrincipal</a> action.</p>
    # @param [Hash, Types::DetachThingPrincipalRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :principal
    #   <p>If the principal is a certificate, this value must be ARN of the certificate. If
    #   			the principal is an Amazon Cognito identity, this value must be the ID of the Amazon
    #   			Cognito identity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #   }
    #   options = {}
    #   response = client.detach_thing_principal(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DetachThingPrincipalResponse]
    def detach_thing_principal(params = {}, options = {})
      request = build_request(:detach_thing_principal, params)
      request.send_request(options)
    end

    # <p>Disables the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DisableTopicRule</a> action.</p>
    # @param [Hash, Types::DisableTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the rule to disable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #   }
    #   options = {}
    #   response = client.disable_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_topic_rule(params = {}, options = {})
      request = build_request(:disable_topic_rule, params)
      request.send_request(options)
    end

    # <p>Disassociates the selected software bill of materials (SBOM) from a specific software package version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DisassociateSbomWithPackageVersion</a> action.</p>
    # @param [Hash, Types::DisassociateSbomFromPackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the new software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the new package version.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_sbom_from_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateSbomFromPackageVersionResponse]
    def disassociate_sbom_from_package_version(params = {}, options = {})
      request = build_request(:disassociate_sbom_from_package_version, params)
      request.send_request(options)
    end

    # <p>Enables the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">EnableTopicRule</a> action.</p>
    # @param [Hash, Types::EnableTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the topic rule to enable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #   }
    #   options = {}
    #   response = client.enable_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_topic_rule(params = {}, options = {})
      request = build_request(:enable_topic_rule, params)
      request.send_request(options)
    end

    # <p>
    #       Returns a Device Defender's ML Detect Security Profile training model's status.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetBehaviorModelTrainingSummaries</a> action.</p>
    # @param [Hash, Types::GetBehaviorModelTrainingSummariesRequest] params
    # @option params [String] :security_profile_name
    #   <p>
    #         The name of the security profile.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 10.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_behavior_model_training_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summaries: [
    #       {
    #         security_profile_name: "SecurityProfileName",
    #         behavior_name: "BehaviorName",
    #         training_data_collection_start_date: Time.now,
    #         model_status: "PENDING_BUILD" # One of: ["PENDING_BUILD", "ACTIVE", "EXPIRED"],
    #         datapoints_collection_percentage: 1.0,
    #         last_model_refresh_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBehaviorModelTrainingSummariesResponse]
    def get_behavior_model_training_summaries(params = {}, options = {})
      request = build_request(:get_behavior_model_training_summaries, params)
      request.send_request(options)
    end

    # <p>Aggregates on indexed data with search queries pertaining to particular fields. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetBucketsAggregation</a> action.</p>
    # @param [Hash, Types::GetBucketsAggregationRequest] params
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    # @option params [String] :aggregation_field
    #   <p>The aggregation field.</p>
    # @option params [String] :query_version
    #   <p>The version of the query.</p>
    # @option params [Types::BucketsAggregationType] :buckets_aggregation_type
    #   <p>The basic control of the response shape and the bucket aggregation type to perform. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField", # required
    #     query_version: "QueryVersion",
    #     buckets_aggregation_type: { # required
    #       terms_aggregation: {
    #         max_buckets: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_buckets_aggregation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total_count: 1,
    #     buckets: [
    #       {
    #         key_value: "BucketKeyValue",
    #         count: 1
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketsAggregationResponse]
    def get_buckets_aggregation(params = {}, options = {})
      request = build_request(:get_buckets_aggregation, params)
      request.send_request(options)
    end

    # <p>Returns the approximate count of unique values that match the query.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetCardinality</a> action.</p>
    # @param [Hash, Types::GetCardinalityRequest] params
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    # @option params [String] :query_version
    #   <p>The query version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion"
    #   }
    #   options = {}
    #   response = client.get_cardinality(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cardinality: 1
    #   }
    # @return [Types::GetCardinalityResponse]
    def get_cardinality(params = {}, options = {})
      request = build_request(:get_cardinality, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified command.</p>
    # @param [Hash, Types::GetCommandRequest] params
    # @option params [String] :command_id
    #   <p>The unique identifier of the command for which you want to retrieve
    #               information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #   }
    #   options = {}
    #   response = client.get_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_id: "CommandId",
    #     command_arn: "CommandArn",
    #     namespace: "AWS-IoT" # One of: ["AWS-IoT", "AWS-IoT-FleetWise"],
    #     display_name: "DisplayName",
    #     description: "CommandDescription",
    #     mandatory_parameters: [
    #       {
    #         name: "CommandParameterName", # required
    #         value: {
    #           s: "StringParameterValue",
    #           b: false,
    #           i: 1,
    #           l: 1,
    #           d: 1.0,
    #           bin: "data",
    #           ul: "UnsignedLongParameterValue"
    #         },
    #         default_value: {
    #           s: "StringParameterValue",
    #           b: false,
    #           i: 1,
    #           l: 1,
    #           d: 1.0,
    #           bin: "data",
    #           ul: "UnsignedLongParameterValue"
    #         },
    #         description: "CommandParameterDescription"
    #       }
    #     ],
    #     payload: {
    #       content: "data",
    #       content_type: "MimeType"
    #     },
    #     role_arn: "RoleArn",
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     deprecated: false,
    #     pending_deletion: false
    #   }
    # @return [Types::GetCommandResponse]
    def get_command(params = {}, options = {})
      request = build_request(:get_command, params)
      request.send_request(options)
    end

    # <p>Gets information about the specific command execution on a single device.</p>
    # @param [Hash, Types::GetCommandExecutionRequest] params
    # @option params [String] :execution_id
    #   <p>The unique identifier for the command execution. This information is returned as a
    #               response of the <code>StartCommandExecution</code> API request.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Number (ARN) of the device on which the command execution is being
    #               performed.</p>
    # @option params [Boolean] :include_result
    #   <p>Can be used to specify whether to include the result of the command execution
    #               in the <code>GetCommandExecution</code> API response. Your device can use this
    #               field to provide additional information about the command execution. You only
    #               need to specify this field when using the <code>AWS-IoT</code> namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     execution_id: "CommandExecutionId", # required
    #     target_arn: "TargetArn", # required
    #     include_result: false
    #   }
    #   options = {}
    #   response = client.get_command_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "CommandExecutionId",
    #     command_arn: "CommandArn",
    #     target_arn: "TargetArn",
    #     status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "TIMED_OUT"],
    #     status_reason: {
    #       reason_code: "StatusReasonCode", # required
    #       reason_description: "StatusReasonDescription"
    #     },
    #     result: {
    #       "CommandExecutionResultName" => {
    #         s: "StringCommandExecutionResult",
    #         b: false,
    #         bin: "data"
    #       }
    #     },
    #     parameters: {
    #       "CommandParameterName" => {
    #         s: "StringParameterValue",
    #         b: false,
    #         i: 1,
    #         l: 1,
    #         d: 1.0,
    #         bin: "data",
    #         ul: "UnsignedLongParameterValue"
    #       }
    #     },
    #     execution_timeout_seconds: 1,
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     started_at: Time.now,
    #     completed_at: Time.now,
    #     time_to_live: Time.now
    #   }
    # @return [Types::GetCommandExecutionResponse]
    def get_command_execution(params = {}, options = {})
      request = build_request(:get_command_execution, params)
      request.send_request(options)
    end

    # <p>Gets a list of the policies that have an effect on the authorization behavior of the
    #          specified device when it connects to the IoT device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetEffectivePolicies</a> action.</p>
    # @param [Hash, Types::GetEffectivePoliciesRequest] params
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    # @option params [String] :cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     thing_name: "ThingName"
    #   }
    #   options = {}
    #   response = client.get_effective_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_arn: "PolicyArn",
    #         policy_document: "PolicyDocument"
    #       }
    #     ]
    #   }
    # @return [Types::GetEffectivePoliciesResponse]
    def get_effective_policies(params = {}, options = {})
      request = build_request(:get_effective_policies, params)
      request.send_request(options)
    end

    # <p>Gets the indexing configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> action.</p>
    # @param [Hash, Types::GetIndexingConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_indexing_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_indexing_configuration: {
    #       thing_indexing_mode: "OFF" # One of: ["OFF", "REGISTRY", "REGISTRY_AND_SHADOW"], # required
    #       thing_connectivity_indexing_mode: "OFF" # One of: ["OFF", "STATUS"],
    #       device_defender_indexing_mode: "OFF" # One of: ["OFF", "VIOLATIONS"],
    #       named_shadow_indexing_mode: "OFF" # One of: ["OFF", "ON"],
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       filter: {
    #         named_shadow_names: ["ShadowName"],
    #         geo_locations: [
    #           {
    #             name: "TargetFieldName",
    #             order: "LatLon" # One of: ["LatLon", "LonLat"]
    #           }
    #         ]
    #       }
    #     },
    #     thing_group_indexing_configuration: {
    #       thing_group_indexing_mode: "OFF" # One of: ["OFF", "ON"], # required
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetIndexingConfigurationResponse]
    def get_indexing_configuration(params = {}, options = {})
      request = build_request(:get_indexing_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a job document.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetJobDocument</a> action.</p>
    # @param [Hash, Types::GetJobDocumentRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [Boolean] :before_substitution
    #   <p>Provides a view of the job document before and after the substitution parameters have been resolved with their exact values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     before_substitution: false
    #   }
    #   options = {}
    #   response = client.get_job_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document: "JobDocument"
    #   }
    # @return [Types::GetJobDocumentResponse]
    def get_job_document(params = {}, options = {})
      request = build_request(:get_job_document, params)
      request.send_request(options)
    end

    # <p>Gets the logging options.</p>
    #          <p>NOTE: use of this command is not recommended. Use <code>GetV2LoggingOptions</code>
    #          instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetLoggingOptions</a> action.</p>
    # @param [Hash, Types::GetLoggingOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "AwsArn",
    #     log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #   }
    # @return [Types::GetLoggingOptionsResponse]
    def get_logging_options(params = {}, options = {})
      request = build_request(:get_logging_options, params)
      request.send_request(options)
    end

    # <p>Gets an OTA update.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetOTAUpdate</a> action.</p>
    # @param [Hash, Types::GetOTAUpdateRequest] params
    # @option params [String] :ota_update_id
    #   <p>The OTA update ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ota_update_id: "OTAUpdateId", # required
    #   }
    #   options = {}
    #   response = client.get_ota_update(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ota_update_info: {
    #       ota_update_id: "OTAUpdateId",
    #       ota_update_arn: "OTAUpdateArn",
    #       creation_date: Time.now,
    #       last_modified_date: Time.now,
    #       description: "OTAUpdateDescription",
    #       targets: ["Target"],
    #       protocols: ["MQTT" # One of: ["MQTT", "HTTP"]],
    #       aws_job_executions_rollout_config: {
    #         maximum_per_minute: 1,
    #         exponential_rate: {
    #           base_rate_per_minute: 1, # required
    #           increment_factor: 1.0, # required
    #           rate_increase_criteria: { # required
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         }
    #       },
    #       aws_job_presigned_url_config: {
    #         expires_in_sec: 1
    #       },
    #       target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #       ota_update_files: [
    #         {
    #           file_name: "FileName",
    #           file_type: 1,
    #           file_version: "OTAUpdateFileVersion",
    #           file_location: {
    #             stream: {
    #               stream_id: "StreamId",
    #               file_id: 1
    #             },
    #             s3_location: {
    #               bucket: "S3Bucket",
    #               key: "S3Key",
    #               version: "S3Version"
    #             }
    #           },
    #           code_signing: {
    #             aws_signer_job_id: "SigningJobId",
    #             start_signing_job_parameter: {
    #               signing_profile_parameter: {
    #                 certificate_arn: "CertificateArn",
    #                 platform: "Platform",
    #                 certificate_path_on_device: "CertificatePathOnDevice"
    #               },
    #               signing_profile_name: "SigningProfileName",
    #               destination: {
    #                 s3_destination: {
    #                   bucket: "S3Bucket",
    #                   prefix: "Prefix"
    #                 }
    #               }
    #             },
    #             custom_code_signing: {
    #               signature: {
    #                 inline_document: "data"
    #               },
    #               certificate_chain: {
    #                 certificate_name: "CertificateName",
    #                 inline_document: "InlineDocument"
    #               },
    #               hash_algorithm: "HashAlgorithm",
    #               signature_algorithm: "SignatureAlgorithm"
    #             }
    #           },
    #           attributes: {
    #             "AttributeKey" => "Value"
    #           }
    #         }
    #       ],
    #       ota_update_status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"],
    #       aws_iot_job_id: "AwsIotJobId",
    #       aws_iot_job_arn: "AwsIotJobArn",
    #       error_info: {
    #         code: "Code",
    #         message: "OTAUpdateErrorMessage"
    #       },
    #       additional_parameters: {
    #         "AttributeKey" => "Value"
    #       }
    #     }
    #   }
    # @return [Types::GetOTAUpdateResponse]
    def get_ota_update(params = {}, options = {})
      request = build_request(:get_ota_update, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified software package.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPackage</a> action.</p>
    # @param [Hash, Types::GetPackageRequest] params
    # @option params [String] :package_name
    #   <p>The name of the target software package.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #   }
    #   options = {}
    #   response = client.get_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_name: "PackageName",
    #     package_arn: "PackageArn",
    #     description: "ResourceDescription",
    #     default_version_name: "VersionName",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::GetPackageResponse]
    def get_package(params = {}, options = {})
      request = build_request(:get_package, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified software package's configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPackageConfiguration</a> action.</p>
    # @param [Hash, Types::GetPackageConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_package_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_update_by_jobs_config: {
    #       enabled: false,
    #       role_arn: "RoleArn"
    #     }
    #   }
    # @return [Types::GetPackageConfigurationResponse]
    def get_package_configuration(params = {}, options = {})
      request = build_request(:get_package_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified package version. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPackageVersion</a> action.</p>
    # @param [Hash, Types::GetPackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the associated package.</p>
    # @option params [String] :version_name
    #   <p>The name of the target package version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #   }
    #   options = {}
    #   response = client.get_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_version_arn: "PackageVersionArn",
    #     package_name: "PackageName",
    #     version_name: "VersionName",
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue"
    #     },
    #     artifact: {
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DEPRECATED"],
    #     error_reason: "PackageVersionErrorReason",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     sbom: {
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     sbom_validation_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"],
    #     recipe: "PackageVersionRecipe"
    #   }
    # @return [Types::GetPackageVersionResponse]
    def get_package_version(params = {}, options = {})
      request = build_request(:get_package_version, params)
      request.send_request(options)
    end

    # <p>Groups the aggregated values that match the query into percentile groupings. The default 
    #         percentile groupings are: 1,5,25,50,75,95,99, although you can specify your own 
    #         when you call <code>GetPercentiles</code>. This function returns a value for each 
    #         percentile group specified (or the default percentile groupings). The percentile group 
    #         "1" contains the aggregated field value that occurs in approximately one percent of the 
    #         values that match the query. The percentile group "5" contains the aggregated field value 
    #         that occurs in approximately five percent of the values that match the query, and so on. 
    #         The result is an approximation, the more values that match the query, the more accurate 
    #         the percentile values.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPercentiles</a> action.</p>
    # @param [Hash, Types::GetPercentilesRequest] params
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    # @option params [String] :query_version
    #   <p>The query version.</p>
    # @option params [Array<Float>] :percents
    #   <p>The percentile groups returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion",
    #     percents: [1.0]
    #   }
    #   options = {}
    #   response = client.get_percentiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     percentiles: [
    #       {
    #         percent: 1.0,
    #         value: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::GetPercentilesResponse]
    def get_percentiles(params = {}, options = {})
      request = build_request(:get_percentiles, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified policy with the policy document of the default
    #          version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPolicy</a> action.</p>
    # @param [Hash, Types::GetPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_name: "PolicyName",
    #     policy_arn: "PolicyArn",
    #     policy_document: "PolicyDocument",
    #     default_version_id: "PolicyVersionId",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     generation_id: "GenerationId"
    #   }
    # @return [Types::GetPolicyResponse]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified policy version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetPolicyVersion</a> action.</p>
    # @param [Hash, Types::GetPolicyVersionRequest] params
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   }
    #   options = {}
    #   response = client.get_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_arn: "PolicyArn",
    #     policy_name: "PolicyName",
    #     policy_document: "PolicyDocument",
    #     policy_version_id: "PolicyVersionId",
    #     is_default_version: false,
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     generation_id: "GenerationId"
    #   }
    # @return [Types::GetPolicyVersionResponse]
    def get_policy_version(params = {}, options = {})
      request = build_request(:get_policy_version, params)
      request.send_request(options)
    end

    # <p>Gets a registration code used to register a CA certificate with IoT.</p>
    #          <p>IoT will create a registration code as part of this API call if the registration
    #          code doesn't exist or has been deleted. If you already have a registration code, this API
    #          call will return the same registration code.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetRegistrationCode</a> action.</p>
    # @param [Hash, Types::GetRegistrationCodeRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_registration_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_code: "RegistrationCode"
    #   }
    # @return [Types::GetRegistrationCodeResponse]
    def get_registration_code(params = {}, options = {})
      request = build_request(:get_registration_code, params)
      request.send_request(options)
    end

    # <p>Returns the count, average, sum, minimum, maximum, sum of squares, variance,
    #       and standard deviation for the specified aggregated field. If the aggregation field is of type
    #       <code>String</code>, only the count statistic is returned.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetStatistics</a> action.</p>
    # @param [Hash, Types::GetStatisticsRequest] params
    # @option params [String] :index_name
    #   <p>The name of the index to search. The default value is <code>AWS_Things</code>.</p>
    # @option params [String] :query_string
    #   <p>The query used to search. You can specify "*" for the query string to get the count of all
    #         indexed things in your Amazon Web Services account.</p>
    # @option params [String] :aggregation_field
    #   <p>The aggregation field name.</p>
    # @option params [String] :query_version
    #   <p>The version of the query used to search.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     aggregation_field: "AggregationField",
    #     query_version: "QueryVersion"
    #   }
    #   options = {}
    #   response = client.get_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statistics: {
    #       count: 1,
    #       average: 1.0,
    #       sum: 1.0,
    #       minimum: 1.0,
    #       maximum: 1.0,
    #       sum_of_squares: 1.0,
    #       variance: 1.0,
    #       std_deviation: 1.0
    #     }
    #   }
    # @return [Types::GetStatisticsResponse]
    def get_statistics(params = {}, options = {})
      request = build_request(:get_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves the live connectivity status per device.</p>
    # @param [Hash, Types::GetThingConnectivityDataRequest] params
    # @option params [String] :thing_name
    #   <p>The name of your IoT thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ConnectivityApiThingName", # required
    #   }
    #   options = {}
    #   response = client.get_thing_connectivity_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_name: "ConnectivityApiThingName",
    #     connected: false,
    #     timestamp: Time.now,
    #     disconnect_reason: "AUTH_ERROR" # One of: ["AUTH_ERROR", "CLIENT_INITIATED_DISCONNECT", "CLIENT_ERROR", "CONNECTION_LOST", "DUPLICATE_CLIENTID", "FORBIDDEN_ACCESS", "MQTT_KEEP_ALIVE_TIMEOUT", "SERVER_ERROR", "SERVER_INITIATED_DISCONNECT", "THROTTLED", "WEBSOCKET_TTL_EXPIRATION", "CUSTOMAUTH_TTL_EXPIRATION", "UNKNOWN", "NONE"]
    #   }
    # @return [Types::GetThingConnectivityDataResponse]
    def get_thing_connectivity_data(params = {}, options = {})
      request = build_request(:get_thing_connectivity_data, params)
      request.send_request(options)
    end

    # <p>Gets information about the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetTopicRule</a> action.</p>
    # @param [Hash, Types::GetTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #   }
    #   options = {}
    #   response = client.get_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "RuleArn",
    #     rule: {
    #       rule_name: "RuleName",
    #       sql: "SQL",
    #       description: "Description",
    #       created_at: Time.now,
    #       actions: [
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             payload_field: "PayloadField"
    #           },
    #           dynamo_d_bv2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW" # One of: ["RAW", "JSON"]
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base64: false
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey"
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #             headers: {
    #               payload_format_indicator: "PayloadFormatIndicator",
    #               content_type: "ContentType",
    #               response_topic: "ResponseTopic",
    #               correlation_data: "CorrelationData",
    #               message_expiry: "MessageExpiry",
    #               user_properties: [
    #                 {
    #                   key: "UserPropertyKey", # required
    #                   value: "UserPropertyValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             batch_mode: false
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String"
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #             batch_mode: false
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             batch_mode: false,
    #             role_arn: "AwsArn"
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             batch_mode: false,
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       # One of:
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue"
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                     },
    #                     quality: "AssetPropertyQuality"
    #                   }
    #                 ]
    #               }
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               }
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             }
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               }
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               }
    #             }
    #           },
    #           kafka: {
    #             destination_arn: "AwsArn", # required
    #             topic: "String", # required
    #             key: "String",
    #             partition: "String",
    #             client_properties: { # required
    #               "String" => "String"
    #             },
    #             headers: [
    #               {
    #                 key: "KafkaHeaderKey", # required
    #                 value: "KafkaHeaderValue", # required
    #               }
    #             ]
    #           },
    #           open_search: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           location: {
    #             role_arn: "AwsArn", # required
    #             tracker_name: "String", # required
    #             device_id: "String", # required
    #             timestamp: {
    #               value: "String", # required
    #               unit: "String"
    #             },
    #             latitude: "String", # required
    #             longitude: "String", # required
    #           }
    #         }
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           payload_field: "PayloadField"
    #         },
    #         dynamo_d_bv2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           }
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW" # One of: ["RAW", "JSON"]
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base64: false
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey"
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #           headers: {
    #             payload_format_indicator: "PayloadFormatIndicator",
    #             content_type: "ContentType",
    #             response_topic: "ResponseTopic",
    #             correlation_data: "CorrelationData",
    #             message_expiry: "MessageExpiry",
    #             user_properties: [
    #               {
    #                 key: "UserPropertyKey", # required
    #                 value: "UserPropertyValue", # required
    #               }
    #             ]
    #           }
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           batch_mode: false
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String"
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #           batch_mode: false
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           batch_mode: false,
    #           role_arn: "AwsArn"
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           batch_mode: false,
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     # One of:
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue"
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                   },
    #                   quality: "AssetPropertyQuality"
    #                 }
    #               ]
    #             }
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             }
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           }
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             }
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             }
    #           }
    #         },
    #         kafka: {
    #           destination_arn: "AwsArn", # required
    #           topic: "String", # required
    #           key: "String",
    #           partition: "String",
    #           client_properties: { # required
    #             "String" => "String"
    #           },
    #           headers: [
    #             {
    #               key: "KafkaHeaderKey", # required
    #               value: "KafkaHeaderValue", # required
    #             }
    #           ]
    #         },
    #         open_search: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         location: {
    #           role_arn: "AwsArn", # required
    #           tracker_name: "String", # required
    #           device_id: "String", # required
    #           timestamp: {
    #             value: "String", # required
    #             unit: "String"
    #           },
    #           latitude: "String", # required
    #           longitude: "String", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetTopicRuleResponse]
    def get_topic_rule(params = {}, options = {})
      request = build_request(:get_topic_rule, params)
      request.send_request(options)
    end

    # <p>Gets information about a topic rule destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetTopicRuleDestination</a> action.</p>
    # @param [Hash, Types::GetTopicRuleDestinationRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AwsArn", # required
    #   }
    #   options = {}
    #   response = client.get_topic_rule_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topic_rule_destination: {
    #       arn: "AwsArn",
    #       status: "ENABLED" # One of: ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       status_reason: "String",
    #       http_url_properties: {
    #         confirmation_url: "Url"
    #       },
    #       vpc_properties: {
    #         subnet_ids: ["SubnetId"],
    #         security_groups: ["SecurityGroupId"],
    #         vpc_id: "VpcId",
    #         role_arn: "AwsArn"
    #       }
    #     }
    #   }
    # @return [Types::GetTopicRuleDestinationResponse]
    def get_topic_rule_destination(params = {}, options = {})
      request = build_request(:get_topic_rule_destination, params)
      request.send_request(options)
    end

    # <p>Gets the fine grained logging options.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetV2LoggingOptions</a> action.</p>
    # @param [Hash, Types::GetV2LoggingOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_v2_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_arn: "AwsArn",
    #     default_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"],
    #     disable_all_logs: false
    #   }
    # @return [Types::GetV2LoggingOptionsResponse]
    def get_v2_logging_options(params = {}, options = {})
      request = build_request(:get_v2_logging_options, params)
      request.send_request(options)
    end

    # <p>Lists the active violations for a given Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListActiveViolations</a> action.</p>
    # @param [Hash, Types::ListActiveViolationsRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing whose active violations are listed.</p>
    # @option params [String] :security_profile_name
    #   <p>The name of the Device Defender security profile for which violations are listed.</p>
    # @option params [String] :behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    # @option params [Boolean] :list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    # @option params [String] :verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "DeviceDefenderThingName",
    #     security_profile_name: "SecurityProfileName",
    #     behavior_criteria_type: "STATIC" # One of: ["STATIC", "STATISTICAL", "MACHINE_LEARNING"],
    #     list_suppressed_alerts: false,
    #     verification_state: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_active_violations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     active_violations: [
    #       {
    #         violation_id: "ViolationId",
    #         thing_name: "DeviceDefenderThingName",
    #         security_profile_name: "SecurityProfileName",
    #         behavior: {
    #           name: "BehaviorName", # required
    #           metric: "BehaviorMetric",
    #           metric_dimension: {
    #             dimension_name: "DimensionName", # required
    #             operator: "IN" # One of: ["IN", "NOT_IN"]
    #           },
    #           criteria: {
    #             comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #             value: {
    #               count: 1,
    #               cidrs: ["Cidr"],
    #               ports: [1],
    #               number: 1.0,
    #               numbers: [1.0],
    #               strings: ["stringValue"]
    #             },
    #             duration_seconds: 1,
    #             consecutive_datapoints_to_alarm: 1,
    #             consecutive_datapoints_to_clear: 1,
    #             statistical_threshold: {
    #               statistic: "EvaluationStatistic"
    #             },
    #             ml_detection_config: {
    #               confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #             }
    #           },
    #           suppress_alerts: false,
    #           export_metric: false
    #         },
    #         last_violation_value: {
    #           count: 1,
    #           cidrs: ["Cidr"],
    #           ports: [1],
    #           number: 1.0,
    #           numbers: [1.0],
    #           strings: ["stringValue"]
    #         },
    #         violation_event_additional_info: {
    #           confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #         },
    #         verification_state: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"],
    #         verification_state_description: "VerificationStateDescription",
    #         last_violation_time: Time.now,
    #         violation_start_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListActiveViolationsResponse]
    def list_active_violations(params = {}, options = {})
      request = build_request(:list_active_violations, params)
      request.send_request(options)
    end

    # <p>Lists the policies attached to the specified thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAttachedPolicies</a> action.</p>
    # @param [Hash, Types::ListAttachedPoliciesRequest] params
    # @option params [String] :target
    #   <p>The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    # @option params [Boolean] :recursive
    #   <p>When true, recursively list attached policies.</p>
    # @option params [String] :marker
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target: "PolicyTarget", # required
    #     recursive: false,
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_attached_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_arn: "PolicyArn"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListAttachedPoliciesResponse]
    def list_attached_policies(params = {}, options = {})
      request = build_request(:list_attached_policies, params)
      request.send_request(options)
    end

    # <p>Lists the findings (results) of a Device Defender audit or of the audits
    #         performed during a specified time period. (Findings are retained for 90 days.)</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditFindings</a> action.</p>
    # @param [Hash, Types::ListAuditFindingsRequest] params
    # @option params [String] :task_id
    #   <p>A filter to limit results to the audit with the specified ID. You must
    #               specify either the taskId or the startTime and endTime, but not both.</p>
    # @option params [String] :check_name
    #   <p>A filter to limit results to the findings for the specified audit check.</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information identifying the noncompliant resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Time] :start_time
    #   <p>A filter to limit results to those found after the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    # @option params [Time] :end_time
    #   <p>A filter to limit results to those found before the specified time. You must
    #               specify either the startTime and endTime or the taskId, but not both.</p>
    # @option params [Boolean] :list_suppressed_findings
    #   <p>
    #         Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "AuditTaskId",
    #     check_name: "AuditCheckName",
    #     resource_identifier: {
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     list_suppressed_findings: false
    #   }
    #   options = {}
    #   response = client.list_audit_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [
    #       {
    #         finding_id: "FindingId",
    #         task_id: "AuditTaskId",
    #         check_name: "AuditCheckName",
    #         task_start_time: Time.now,
    #         finding_time: Time.now,
    #         severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW"],
    #         non_compliant_resource: {
    #           resource_type: "DEVICE_CERTIFICATE" # One of: ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"],
    #           resource_identifier: {
    #             device_certificate_id: "CertificateId",
    #             ca_certificate_id: "CertificateId",
    #             cognito_identity_pool_id: "CognitoIdentityPoolId",
    #             client_id: "ClientId",
    #             policy_version_identifier: {
    #               policy_name: "PolicyName",
    #               policy_version_id: "PolicyVersionId"
    #             },
    #             account: "AwsAccountId",
    #             iam_role_arn: "RoleArn",
    #             role_alias_arn: "RoleAliasArn",
    #             issuer_certificate_identifier: {
    #               issuer_certificate_subject: "IssuerCertificateSubject",
    #               issuer_id: "IssuerId",
    #               issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #             },
    #             device_certificate_arn: "CertificateArn"
    #           },
    #           additional_info: {
    #             "String" => "String"
    #           }
    #         },
    #         related_resources: [
    #           {
    #             resource_type: "DEVICE_CERTIFICATE" # One of: ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"],
    #             resource_identifier: {
    #               device_certificate_id: "CertificateId",
    #               ca_certificate_id: "CertificateId",
    #               cognito_identity_pool_id: "CognitoIdentityPoolId",
    #               client_id: "ClientId",
    #               policy_version_identifier: {
    #                 policy_name: "PolicyName",
    #                 policy_version_id: "PolicyVersionId"
    #               },
    #               account: "AwsAccountId",
    #               iam_role_arn: "RoleArn",
    #               role_alias_arn: "RoleAliasArn",
    #               issuer_certificate_identifier: {
    #                 issuer_certificate_subject: "IssuerCertificateSubject",
    #                 issuer_id: "IssuerId",
    #                 issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #               },
    #               device_certificate_arn: "CertificateArn"
    #             },
    #             additional_info: {
    #               "String" => "String"
    #             }
    #           }
    #         ],
    #         reason_for_non_compliance: "ReasonForNonCompliance",
    #         reason_for_non_compliance_code: "ReasonForNonComplianceCode",
    #         is_suppressed: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditFindingsResponse]
    def list_audit_findings(params = {}, options = {})
      request = build_request(:list_audit_findings, params)
      request.send_request(options)
    end

    # <p>Gets the status of audit mitigation action tasks that were
    #       executed.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditMitigationActionsExecutions</a> action.</p>
    # @param [Hash, Types::ListAuditMitigationActionsExecutionsRequest] params
    # @option params [String] :task_id
    #   <p>Specify this filter to limit results to actions for a specific audit mitigation actions task.</p>
    # @option params [String] :action_status
    #   <p>Specify this filter to limit results to those with a specific status.</p>
    # @option params [String] :finding_id
    #   <p>Specify this filter to limit results to those that were applied to a specific audit finding.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #     action_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED", "SKIPPED", "PENDING"],
    #     finding_id: "FindingId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_audit_mitigation_actions_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions_executions: [
    #       {
    #         task_id: "MitigationActionsTaskId",
    #         finding_id: "FindingId",
    #         action_name: "MitigationActionName",
    #         action_id: "MitigationActionId",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED", "SKIPPED", "PENDING"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         error_code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditMitigationActionsExecutionsResponse]
    def list_audit_mitigation_actions_executions(params = {}, options = {})
      request = build_request(:list_audit_mitigation_actions_executions, params)
      request.send_request(options)
    end

    # <p>Gets a list of audit mitigation action tasks that match the specified filters.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditMitigationActionsTasks</a> action.</p>
    # @param [Hash, Types::ListAuditMitigationActionsTasksRequest] params
    # @option params [String] :audit_task_id
    #   <p>Specify this filter to limit results to tasks that were applied to results for a specific audit.</p>
    # @option params [String] :finding_id
    #   <p>Specify this filter to limit results to tasks that were applied to a specific audit finding.</p>
    # @option params [String] :task_status
    #   <p>Specify this filter to limit results to tasks that are in a specific state.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Time] :start_time
    #   <p>Specify this filter to limit results to tasks that began on or after a specific date and time.</p>
    # @option params [Time] :end_time
    #   <p>Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     audit_task_id: "AuditTaskId",
    #     finding_id: "FindingId",
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.list_audit_mitigation_actions_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_id: "MitigationActionsTaskId",
    #         start_time: Time.now,
    #         task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditMitigationActionsTasksResponse]
    def list_audit_mitigation_actions_tasks(params = {}, options = {})
      request = build_request(:list_audit_mitigation_actions_tasks, params)
      request.send_request(options)
    end

    # <p>
    #       Lists your Device Defender audit listings.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditSuppressions</a> action.</p>
    # @param [Hash, Types::ListAuditSuppressionsRequest] params
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    # @option params [Boolean] :ascending_order
    #   <p>
    #         Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, <code>ascendingOrder=true</code>.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_name: "AuditCheckName",
    #     resource_identifier: {
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     },
    #     ascending_order: false,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_audit_suppressions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suppressions: [
    #       {
    #         check_name: "AuditCheckName", # required
    #         resource_identifier: { # required
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId"
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #           issuer_certificate_identifier: {
    #             issuer_certificate_subject: "IssuerCertificateSubject",
    #             issuer_id: "IssuerId",
    #             issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #           },
    #           device_certificate_arn: "CertificateArn"
    #         },
    #         expiration_date: Time.now,
    #         suppress_indefinitely: false,
    #         description: "AuditDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditSuppressionsResponse]
    def list_audit_suppressions(params = {}, options = {})
      request = build_request(:list_audit_suppressions, params)
      request.send_request(options)
    end

    # <p>Lists the Device Defender audits that have been performed during a given
    #           time period.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuditTasks</a> action.</p>
    # @param [Hash, Types::ListAuditTasksRequest] params
    # @option params [Time] :start_time
    #   <p>The beginning of the time period. Audit information is retained for a 
    #                 limited time (90 days). Requesting a start time prior to what is retained 
    #                 results in an "InvalidRequestException".</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period.</p>
    # @option params [String] :task_type
    #   <p>A filter to limit the output to the specified type of audit: can be one of
    #               "ON_DEMAND_AUDIT_TASK" or "SCHEDULED__AUDIT_TASK".</p>
    # @option params [String] :task_status
    #   <p>A filter to limit the output to audits with the specified completion
    #               status: can be one of "IN_PROGRESS", "COMPLETED", "FAILED", or "CANCELED".</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     task_type: "ON_DEMAND_AUDIT_TASK" # One of: ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"],
    #     task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_audit_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_id: "AuditTaskId",
    #         task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "CANCELED"],
    #         task_type: "ON_DEMAND_AUDIT_TASK" # One of: ["ON_DEMAND_AUDIT_TASK", "SCHEDULED_AUDIT_TASK"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditTasksResponse]
    def list_audit_tasks(params = {}, options = {})
      request = build_request(:list_audit_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the authorizers registered in your account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListAuthorizers</a> action.</p>
    # @param [Hash, Types::ListAuthorizersRequest] params
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Return the list of authorizers in ascending alphabetical order.</p>
    # @option params [String] :status
    #   <p>The status of the list authorizers request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"]
    #   }
    #   options = {}
    #   response = client.list_authorizers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizers: [
    #       {
    #         authorizer_name: "AuthorizerName",
    #         authorizer_arn: "AuthorizerArn"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListAuthorizersResponse]
    def list_authorizers(params = {}, options = {})
      request = build_request(:list_authorizers, params)
      request.send_request(options)
    end

    # <p>Lists the billing groups you have created.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListBillingGroups</a> action.</p>
    # @param [Hash, Types::ListBillingGroupsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    # @option params [String] :name_prefix_filter
    #   <p>Limit the results to billing groups whose names have the given prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_prefix_filter: "BillingGroupName"
    #   }
    #   options = {}
    #   response = client.list_billing_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     billing_groups: [
    #       {
    #         group_name: "ThingGroupName",
    #         group_arn: "ThingGroupArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBillingGroupsResponse]
    def list_billing_groups(params = {}, options = {})
      request = build_request(:list_billing_groups, params)
      request.send_request(options)
    end

    # <p>Lists the CA certificates registered for your Amazon Web Services account.</p>
    #          <p>The results are paginated with a default page size of 25. You can use the returned
    #          marker to retrieve additional results.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCACertificates</a> action.</p>
    # @param [Hash, Types::ListCACertificatesRequest] params
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Determines the order of the results.</p>
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #     template_name: "TemplateName"
    #   }
    #   options = {}
    #   response = client.list_ca_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         certificate_id: "CertificateId",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListCACertificatesResponse]
    def list_ca_certificates(params = {}, options = {})
      request = build_request(:list_ca_certificates, params)
      request.send_request(options)
    end

    # <p>Lists all your certificate providers in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCertificateProviders</a> action.
    #       </p>
    # @param [Hash, Types::ListCertificateProvidersRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no more results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Returns the list of certificate providers in ascending alphabetical order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Marker",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_certificate_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_providers: [
    #       {
    #         certificate_provider_name: "CertificateProviderName",
    #         certificate_provider_arn: "CertificateProviderArn"
    #       }
    #     ],
    #     next_token: "Marker"
    #   }
    # @return [Types::ListCertificateProvidersResponse]
    def list_certificate_providers(params = {}, options = {})
      request = build_request(:list_certificate_providers, params)
      request.send_request(options)
    end

    # <p>Lists the certificates registered in your Amazon Web Services account.</p>
    #          <p>The results are paginated with a default page size of 25. You can use the returned
    #          marker to retrieve additional results.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCertificates</a> action.</p>
    # @param [Hash, Types::ListCertificatesRequest] params
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         certificate_id: "CertificateId",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"],
    #         certificate_mode: "DEFAULT" # One of: ["DEFAULT", "SNI_ONLY"],
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListCertificatesResponse]
    def list_certificates(params = {}, options = {})
      request = build_request(:list_certificates, params)
      request.send_request(options)
    end

    # <p>List the device certificates signed by the specified CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCertificatesByCA</a> action.</p>
    # @param [Hash, Types::ListCertificatesByCARequest] params
    # @option params [String] :ca_certificate_id
    #   <p>The ID of the CA certificate. This operation will list all registered device
    #            certificate that were signed by this CA certificate.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ca_certificate_id: "CertificateId", # required
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_certificates_by_ca(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         certificate_id: "CertificateId",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"],
    #         certificate_mode: "DEFAULT" # One of: ["DEFAULT", "SNI_ONLY"],
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListCertificatesByCAResponse]
    def list_certificates_by_ca(params = {}, options = {})
      request = build_request(:list_certificates_by_ca, params)
      request.send_request(options)
    end

    # <p>List all command executions.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>You must provide only the <code>startedTimeFilter</code> or 
    #                     the <code>completedTimeFilter</code> information. If you provide 
    #                     both time filters, the API will generate an error. You can use 
    #                     this information to retrieve a list of command executions 
    #                     within a specific timeframe.</p>
    #                </li>
    #                <li>
    #                   <p>You must provide only the <code>commandArn</code> or 
    #                     the <code>thingArn</code> information depending on whether you want
    #                     to list executions for a specific command or an IoT thing. If you provide 
    #                     both fields, the API will generate an error.</p>
    #                </li>
    #             </ul>
    #             <p>For more information about considerations for using this API, see
    #                 <a href="https://docs.aws.amazon.com/iot/latest/developerguide/iot-remote-command-execution-start-monitor.html#iot-remote-command-execution-list-cli">List
    #                 command executions in your account (CLI)</a>.</p>
    #          </important>
    # @param [Hash, Types::ListCommandExecutionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the command.</p>
    # @option params [String] :status
    #   <p>List all command executions for the device that have a particular status. For example,
    #               you can filter the list to display only command executions that have failed or timed
    #               out.</p>
    # @option params [String] :sort_order
    #   <p>Specify whether to list the command executions that were created in the
    #               ascending or descending order. By default, the API returns all commands in the
    #               descending order based on the start time or completion time of the executions, that are
    #               determined by the <code>startTimeFilter</code> and <code>completeTimeFilter</code>
    #               parameters.</p>
    # @option params [Types::TimeFilter] :started_time_filter
    #   <p>List all command executions that started any time before or after the
    #               date and time that you specify. The date and time uses the format
    #                   <code>yyyy-MM-dd'T'HH:mm</code>.</p>
    # @option params [Types::TimeFilter] :completed_time_filter
    #   <p>List all command executions that completed any time before or after the
    #               date and time that you specify. The date and time uses the format
    #                   <code>yyyy-MM-dd'T'HH:mm</code>.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Number (ARN) of the target device. You can use this information to
    #               list all command executions for a particular device.</p>
    # @option params [String] :command_arn
    #   <p>The Amazon Resource Number (ARN) of the command. You can use this information to
    #               list all command executions for a particular command.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     namespace: "AWS-IoT" # One of: ["AWS-IoT", "AWS-IoT-FleetWise"],
    #     status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "TIMED_OUT"],
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     started_time_filter: {
    #       after: "StringDateTime",
    #       before: "StringDateTime"
    #     },
    #     completed_time_filter: {
    #       after: "StringDateTime",
    #       before: "StringDateTime"
    #     },
    #     target_arn: "TargetArn",
    #     command_arn: "CommandArn"
    #   }
    #   options = {}
    #   response = client.list_command_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_executions: [
    #       {
    #         command_arn: "CommandArn",
    #         execution_id: "CommandExecutionId",
    #         target_arn: "TargetArn",
    #         status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "TIMED_OUT"],
    #         created_at: Time.now,
    #         started_at: Time.now,
    #         completed_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCommandExecutionsResponse]
    def list_command_executions(params = {}, options = {})
      request = build_request(:list_command_executions, params)
      request.send_request(options)
    end

    # <p>List all commands in your account.</p>
    # @param [Hash, Types::ListCommandsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation. By default, the API returns
    #               up to a maximum of 25 results. You can override this default value to return up to a
    #               maximum of 100 results for this operation.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the command. By default, the API returns all commands that have been
    #               created for both <code>AWS-IoT</code> and <code>AWS-IoT-FleetWise</code> namespaces. You
    #               can override this default value if you want to return all commands that have been
    #               created only for a specific namespace.</p>
    # @option params [String] :command_parameter_name
    #   <p>A filter that can be used to display the list of commands that have a specific command
    #               parameter name.</p>
    # @option params [String] :sort_order
    #   <p>Specify whether to list the commands that you have created in the ascending or
    #               descending order. By default, the API returns all commands in the descending order based
    #               on the time that they were created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     namespace: "AWS-IoT" # One of: ["AWS-IoT", "AWS-IoT-FleetWise"],
    #     command_parameter_name: "CommandParameterName",
    #     sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #   }
    #   options = {}
    #   response = client.list_commands(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     commands: [
    #       {
    #         command_arn: "CommandArn",
    #         command_id: "CommandId",
    #         display_name: "DisplayName",
    #         deprecated: false,
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         pending_deletion: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCommandsResponse]
    def list_commands(params = {}, options = {})
      request = build_request(:list_commands, params)
      request.send_request(options)
    end

    # <p>
    #       Lists your Device Defender detect custom metrics.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListCustomMetrics</a> action.</p>
    # @param [Hash, Types::ListCustomMetricsRequest] params
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_custom_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_names: ["MetricName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCustomMetricsResponse]
    def list_custom_metrics(params = {}, options = {})
      request = build_request(:list_custom_metrics, params)
      request.send_request(options)
    end

    # <p>
    #       Lists mitigation actions executions for a Device Defender ML Detect Security Profile.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDetectMitigationActionsExecutions</a> action.</p>
    # @param [Hash, Types::ListDetectMitigationActionsExecutionsRequest] params
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    # @option params [String] :violation_id
    #   <p>
    #         The unique identifier of the violation.
    #       </p>
    # @option params [String] :thing_name
    #   <p>
    #         The name of the thing whose mitigation actions are listed.
    #       </p>
    # @option params [Time] :start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    # @option params [Time] :end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions executions are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return at one time. The default is 25.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId",
    #     violation_id: "ViolationId",
    #     thing_name: "DeviceDefenderThingName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_detect_mitigation_actions_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions_executions: [
    #       {
    #         task_id: "MitigationActionsTaskId",
    #         violation_id: "ViolationId",
    #         action_name: "MitigationActionName",
    #         thing_name: "DeviceDefenderThingName",
    #         execution_start_date: Time.now,
    #         execution_end_date: Time.now,
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "SKIPPED"],
    #         error_code: "DetectMitigationActionExecutionErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDetectMitigationActionsExecutionsResponse]
    def list_detect_mitigation_actions_executions(params = {}, options = {})
      request = build_request(:list_detect_mitigation_actions_executions, params)
      request.send_request(options)
    end

    # <p>
    #       List of Device Defender ML Detect mitigation actions tasks.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDetectMitigationActionsTasks</a> action.</p>
    # @param [Hash, Types::ListDetectMitigationActionsTasksRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>
    #         The token for the next set of results.
    #       </p>
    # @option params [Time] :start_time
    #   <p>
    #         A filter to limit results to those found after the specified time. You must
    #         specify either the startTime and endTime or the taskId, but not both.
    #       </p>
    # @option params [Time] :end_time
    #   <p>
    #         The end of the time period for which ML Detect mitigation actions tasks are returned.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.list_detect_mitigation_actions_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_id: "MitigationActionsTaskId",
    #         task_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCESSFUL", "FAILED", "CANCELED"],
    #         task_start_time: Time.now,
    #         task_end_time: Time.now,
    #         target: {
    #           violation_ids: ["ViolationId"],
    #           security_profile_name: "SecurityProfileName",
    #           behavior_name: "BehaviorName"
    #         },
    #         violation_event_occurrence_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         },
    #         only_active_violations_included: false,
    #         suppressed_alerts_included: false,
    #         actions_definition: [
    #           {
    #             name: "MitigationActionName",
    #             id: "MitigationActionId",
    #             role_arn: "RoleArn",
    #             action_params: {
    #               update_device_certificate_params: {
    #                 action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #               },
    #               update_ca_certificate_params: {
    #                 action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #               },
    #               add_things_to_thing_group_params: {
    #                 thing_group_names: ["ThingGroupName"], # required
    #                 override_dynamic_groups: false
    #               },
    #               replace_default_policy_version_params: {
    #                 template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #               },
    #               enable_io_t_logging_params: {
    #                 role_arn_for_logging: "RoleArn", # required
    #                 log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #               },
    #               publish_finding_to_sns_params: {
    #                 topic_arn: "SnsTopicArn", # required
    #               }
    #             }
    #           }
    #         ],
    #         task_statistics: {
    #           actions_executed: 1,
    #           actions_skipped: 1,
    #           actions_failed: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDetectMitigationActionsTasksResponse]
    def list_detect_mitigation_actions_tasks(params = {}, options = {})
      request = build_request(:list_detect_mitigation_actions_tasks, params)
      request.send_request(options)
    end

    # <p>List the set of dimensions that are defined for your Amazon Web Services accounts.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDimensions</a> action.</p>
    # @param [Hash, Types::ListDimensionsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dimensions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dimension_names: ["DimensionName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDimensionsResponse]
    def list_dimensions(params = {}, options = {})
      request = build_request(:list_dimensions, params)
      request.send_request(options)
    end

    # <p>Gets a list of domain configurations for the user. This list is sorted
    #          alphabetically by domain configuration name.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListDomainConfigurations</a> action.</p>
    # @param [Hash, Types::ListDomainConfigurationsRequest] params
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [String] :service_type
    #   <p>The type of service delivered by the endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker",
    #     page_size: 1,
    #     service_type: "DATA" # One of: ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
    #   }
    #   options = {}
    #   response = client.list_domain_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_configurations: [
    #       {
    #         domain_configuration_name: "ReservedDomainConfigurationName",
    #         domain_configuration_arn: "DomainConfigurationArn",
    #         service_type: "DATA" # One of: ["DATA", "CREDENTIAL_PROVIDER", "JOBS"]
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListDomainConfigurationsResponse]
    def list_domain_configurations(params = {}, options = {})
      request = build_request(:list_domain_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all your fleet metrics. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListFleetMetrics</a> action.</p>
    # @param [Hash, Types::ListFleetMetricsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; 
    #          otherwise <code>null</code> to receive the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fleet_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fleet_metrics: [
    #       {
    #         metric_name: "FleetMetricName",
    #         metric_arn: "FleetMetricArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFleetMetricsResponse]
    def list_fleet_metrics(params = {}, options = {})
      request = build_request(:list_fleet_metrics, params)
      request.send_request(options)
    end

    # <p>Lists the search indices.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListIndices</a> action.</p>
    # @param [Hash, Types::ListIndicesRequest] params
    # @option params [String] :next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_indices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_names: ["IndexName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIndicesResponse]
    def list_indices(params = {}, options = {})
      request = build_request(:list_indices, params)
      request.send_request(options)
    end

    # <p>Lists the job executions for a job.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobExecutionsForJob</a> action.</p>
    # @param [Hash, Types::ListJobExecutionsForJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @option params [String] :status
    #   <p>The status of the job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_job_executions_for_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_summaries: [
    #       {
    #         thing_arn: "ThingArn",
    #         job_execution_summary: {
    #           status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #           queued_at: Time.now,
    #           started_at: Time.now,
    #           last_updated_at: Time.now,
    #           execution_number: 1,
    #           retry_attempt: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobExecutionsForJobResponse]
    def list_job_executions_for_job(params = {}, options = {})
      request = build_request(:list_job_executions_for_job, params)
      request.send_request(options)
    end

    # <p>Lists the job executions for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobExecutionsForThing</a> action.</p>
    # @param [Hash, Types::ListJobExecutionsForThingRequest] params
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    # @option params [String] :status
    #   <p>An optional filter that lets you search for jobs that have the specified
    #               status.</p>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [String] :job_id
    #   <p>The unique identifier you assigned to this job when it was created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #     namespace_id: "NamespaceId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     job_id: "JobId"
    #   }
    #   options = {}
    #   response = client.list_job_executions_for_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_summaries: [
    #       {
    #         job_id: "JobId",
    #         job_execution_summary: {
    #           status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"],
    #           queued_at: Time.now,
    #           started_at: Time.now,
    #           last_updated_at: Time.now,
    #           execution_number: 1,
    #           retry_attempt: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobExecutionsForThingResponse]
    def list_job_executions_for_thing(params = {}, options = {})
      request = build_request(:list_job_executions_for_thing, params)
      request.send_request(options)
    end

    # <p>Returns a list of job templates.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobTemplates</a> action.</p>
    # @param [Hash, Types::ListJobTemplatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the list.</p>
    # @option params [String] :next_token
    #   <p>The token to use to return the next set of results in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_job_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_templates: [
    #       {
    #         job_template_arn: "JobTemplateArn",
    #         job_template_id: "JobTemplateId",
    #         description: "JobDescription",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobTemplatesResponse]
    def list_job_templates(params = {}, options = {})
      request = build_request(:list_job_templates, params)
      request.send_request(options)
    end

    # <p>Lists jobs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListJobs</a> action.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :status
    #   <p>An optional filter that lets you search for jobs that have the specified
    #               status.</p>
    # @option params [String] :target_selection
    #   <p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete
    #               after all those things specified as targets have completed the job (SNAPSHOT). If
    #               continuous, the job may also be run on a thing when a change is detected in a target.
    #               For example, a job will run on a thing when the thing is added to a target group, even
    #               after the job was completed by all things originally in the group. </p>
    #            <note>
    #               <p>We recommend that you use continuous jobs instead of snapshot jobs for dynamic
    #                   thing group targets. By using continuous jobs, devices that join the group receive
    #                   the job execution even after the job has been created.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [String] :thing_group_name
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    # @option params [String] :thing_group_id
    #   <p>A filter that limits the returned jobs to those for the specified group.</p>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"],
    #     target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     thing_group_name: "ThingGroupName",
    #     thing_group_id: "ThingGroupId",
    #     namespace_id: "NamespaceId"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_arn: "JobArn",
    #         job_id: "JobId",
    #         thing_group_id: "ThingGroupId",
    #         target_selection: "CONTINUOUS" # One of: ["CONTINUOUS", "SNAPSHOT"],
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         completed_at: Time.now,
    #         is_concurrent: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobsResponse]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of managed job templates.</p>
    # @param [Hash, Types::ListManagedJobTemplatesRequest] params
    # @option params [String] :template_name
    #   <p>An optional parameter for template name. If specified, only the versions of the
    #               managed job templates that have the specified template name will be returned.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of entries that can be returned.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "ManagedJobTemplateName",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_job_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_job_templates: [
    #       {
    #         template_arn: "JobTemplateArn",
    #         template_name: "ManagedJobTemplateName",
    #         description: "JobDescription",
    #         environments: ["Environment"],
    #         template_version: "ManagedTemplateVersion"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedJobTemplatesResponse]
    def list_managed_job_templates(params = {}, options = {})
      request = build_request(:list_managed_job_templates, params)
      request.send_request(options)
    end

    # <p>Lists the values reported for an IoT Device Defender metric (device-side metric, cloud-side metric, or custom metric) 
    #       by the given thing during the specified time period.</p>
    # @param [Hash, Types::ListMetricValuesRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing for which security profile metric values are returned.</p>
    # @option params [String] :metric_name
    #   <p>The name of the security profile metric for which values are returned.</p>
    # @option params [String] :dimension_name
    #   <p>The dimension name.</p>
    # @option params [String] :dimension_value_operator
    #   <p>The dimension value operator.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time period for which metric values are returned.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period for which metric values are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "DeviceDefenderThingName", # required
    #     metric_name: "BehaviorMetric", # required
    #     dimension_name: "DimensionName",
    #     dimension_value_operator: "IN" # One of: ["IN", "NOT_IN"],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_metric_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_datum_list: [
    #       {
    #         timestamp: Time.now,
    #         value: {
    #           count: 1,
    #           cidrs: ["Cidr"],
    #           ports: [1],
    #           number: 1.0,
    #           numbers: [1.0],
    #           strings: ["stringValue"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMetricValuesResponse]
    def list_metric_values(params = {}, options = {})
      request = build_request(:list_metric_values, params)
      request.send_request(options)
    end

    # <p>Gets a list of all mitigation actions that match the specified filter criteria.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListMitigationActions</a> action.</p>
    # @param [Hash, Types::ListMitigationActionsRequest] params
    # @option params [String] :action_type
    #   <p>Specify a value to limit the result to mitigation actions with a specific action type.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_type: "UPDATE_DEVICE_CERTIFICATE" # One of: ["UPDATE_DEVICE_CERTIFICATE", "UPDATE_CA_CERTIFICATE", "ADD_THINGS_TO_THING_GROUP", "REPLACE_DEFAULT_POLICY_VERSION", "ENABLE_IOT_LOGGING", "PUBLISH_FINDING_TO_SNS"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_mitigation_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_identifiers: [
    #       {
    #         action_name: "MitigationActionName",
    #         action_arn: "MitigationActionArn",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMitigationActionsResponse]
    def list_mitigation_actions(params = {}, options = {})
      request = build_request(:list_mitigation_actions, params)
      request.send_request(options)
    end

    # <p>Lists OTA updates.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListOTAUpdates</a> action.</p>
    # @param [Hash, Types::ListOTAUpdatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token used to retrieve the next set of results.</p>
    # @option params [String] :ota_update_status
    #   <p>The OTA update job status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ota_update_status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_FAILED"]
    #   }
    #   options = {}
    #   response = client.list_ota_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ota_updates: [
    #       {
    #         ota_update_id: "OTAUpdateId",
    #         ota_update_arn: "OTAUpdateArn",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOTAUpdatesResponse]
    def list_ota_updates(params = {}, options = {})
      request = build_request(:list_ota_updates, params)
      request.send_request(options)
    end

    # <p>Lists certificates that are being transferred but not yet accepted.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListOutgoingCertificates</a> action.</p>
    # @param [Hash, Types::ListOutgoingCertificatesRequest] params
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If True, the results are returned in ascending
    #            order, based on the creation date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_outgoing_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outgoing_certificates: [
    #       {
    #         certificate_arn: "CertificateArn",
    #         certificate_id: "CertificateId",
    #         transferred_to: "AwsAccountId",
    #         transfer_date: Time.now,
    #         transfer_message: "Message",
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListOutgoingCertificatesResponse]
    def list_outgoing_certificates(params = {}, options = {})
      request = build_request(:list_outgoing_certificates, params)
      request.send_request(options)
    end

    # <p>Lists the software package versions associated to the account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPackageVersions</a> action.</p>
    # @param [Hash, Types::ListPackageVersionsRequest] params
    # @option params [String] :package_name
    #   <p>The name of the target software package.</p>
    # @option params [String] :status
    #   <p>The status of the package version. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DEPRECATED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_package_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_version_summaries: [
    #       {
    #         package_name: "PackageName",
    #         version_name: "VersionName",
    #         status: "DRAFT" # One of: ["DRAFT", "PUBLISHED", "DEPRECATED"],
    #         creation_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPackageVersionsResponse]
    def list_package_versions(params = {}, options = {})
      request = build_request(:list_package_versions, params)
      request.send_request(options)
    end

    # <p>Lists the software packages associated to the account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPackages</a> action.</p>
    # @param [Hash, Types::ListPackagesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned at one time.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_summaries: [
    #       {
    #         package_name: "PackageName",
    #         default_version_name: "VersionName",
    #         creation_date: Time.now,
    #         last_modified_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPackagesResponse]
    def list_packages(params = {}, options = {})
      request = build_request(:list_packages, params)
      request.send_request(options)
    end

    # <p>Lists your policies.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicies</a> action.</p>
    # @param [Hash, Types::ListPoliciesRequest] params
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_arn: "PolicyArn"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListPoliciesResponse]
    def list_policies(params = {}, options = {})
      request = build_request(:list_policies, params)
      request.send_request(options)
    end

    # <p>Lists the principals associated with the specified policy.</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated and works as
    #          expected for backward compatibility, but we won't add enhancements. Use <a>ListTargetsForPolicy</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicyPrincipals</a> action.</p>
    # @param [Hash, Types::ListPolicyPrincipalsRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, the results are returned in ascending
    #            creation order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_policy_principals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principals: ["PrincipalArn"],
    #     next_marker: "Marker"
    #   }
    # @deprecated
    # @return [Types::ListPolicyPrincipalsResponse]
    def list_policy_principals(params = {}, options = {})
      request = build_request(:list_policy_principals, params)
      request.send_request(options)
    end

    # <p>Lists the versions of the specified policy and identifies the default
    #          version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPolicyVersions</a> action.</p>
    # @param [Hash, Types::ListPolicyVersionsRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.list_policy_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_versions: [
    #       {
    #         version_id: "PolicyVersionId",
    #         is_default_version: false,
    #         create_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPolicyVersionsResponse]
    def list_policy_versions(params = {}, options = {})
      request = build_request(:list_policy_versions, params)
      request.send_request(options)
    end

    # <p>Lists the policies attached to the specified principal. If you use an Cognito
    #          identity, the ID must be in <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p>
    #          <p>
    #             <b>Note:</b> This action is deprecated and works as
    #          expected for backward compatibility, but we won't add enhancements. Use <a>ListAttachedPolicies</a> instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPrincipalPolicies</a> action.</p>
    # @param [Hash, Types::ListPrincipalPoliciesRequest] params
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Specifies the order for results. If true, results are returned in ascending creation
    #            order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: "Principal", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_principal_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policies: [
    #       {
    #         policy_name: "PolicyName",
    #         policy_arn: "PolicyArn"
    #       }
    #     ],
    #     next_marker: "Marker"
    #   }
    # @deprecated
    # @return [Types::ListPrincipalPoliciesResponse]
    def list_principal_policies(params = {}, options = {})
      request = build_request(:list_principal_policies, params)
      request.send_request(options)
    end

    # <p>Lists the things associated with the specified principal. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPrincipalThings</a> action.</p>
    # @param [Hash, Types::ListPrincipalThingsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :principal
    #   <p>The principal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     principal: "Principal", # required
    #   }
    #   options = {}
    #   response = client.list_principal_things(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     things: ["ThingName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPrincipalThingsResponse]
    def list_principal_things(params = {}, options = {})
      request = build_request(:list_principal_things, params)
      request.send_request(options)
    end

    # <p>Lists the things associated with the specified principal. A principal can be an X.509
    # 			certificate or an Amazon Cognito ID.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListPrincipalThings</a> action.</p>
    # @param [Hash, Types::ListPrincipalThingsV2Request] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   				value from a previous response; otherwise <b>null</b> to receive
    #   				the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :principal
    #   <p>The principal. A principal can be an X.509 certificate or an Amazon Cognito ID.</p>
    # @option params [String] :thing_principal_type
    #   <p>The type of the relation you want to filter in the response. If no value is provided in
    #   			this field, the response will list all things, including both the
    #   				<code>EXCLUSIVE_THING</code> and <code>NON_EXCLUSIVE_THING</code> attachment
    #   			types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     principal: "Principal", # required
    #     thing_principal_type: "EXCLUSIVE_THING" # One of: ["EXCLUSIVE_THING", "NON_EXCLUSIVE_THING"]
    #   }
    #   options = {}
    #   response = client.list_principal_things_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principal_thing_objects: [
    #       {
    #         thing_name: "ThingName", # required
    #         thing_principal_type: "EXCLUSIVE_THING" # One of: ["EXCLUSIVE_THING", "NON_EXCLUSIVE_THING"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPrincipalThingsV2Response]
    def list_principal_things_v2(params = {}, options = {})
      request = build_request(:list_principal_things_v2, params)
      request.send_request(options)
    end

    # <p>A list of provisioning template versions.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListProvisioningTemplateVersions</a> action.</p>
    # @param [Hash, Types::ListProvisioningTemplateVersionsRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_provisioning_template_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: [
    #       {
    #         version_id: 1,
    #         creation_date: Time.now,
    #         is_default_version: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProvisioningTemplateVersionsResponse]
    def list_provisioning_template_versions(params = {}, options = {})
      request = build_request(:list_provisioning_template_versions, params)
      request.send_request(options)
    end

    # <p>Lists the provisioning templates in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListProvisioningTemplates</a> action.</p>
    # @param [Hash, Types::ListProvisioningTemplatesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_provisioning_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates: [
    #       {
    #         template_arn: "TemplateArn",
    #         template_name: "TemplateName",
    #         description: "TemplateDescription",
    #         creation_date: Time.now,
    #         last_modified_date: Time.now,
    #         enabled: false,
    #         type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITP"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProvisioningTemplatesResponse]
    def list_provisioning_templates(params = {}, options = {})
      request = build_request(:list_provisioning_templates, params)
      request.send_request(options)
    end

    # <p>The related resources of an Audit finding. 
    #       The following resources can be returned from calling this API:</p>
    #          <ul>
    #             <li>
    #                <p>DEVICE_CERTIFICATE</p>
    #             </li>
    #             <li>
    #                <p>CA_CERTIFICATE</p>
    #             </li>
    #             <li>
    #                <p>IOT_POLICY</p>
    #             </li>
    #             <li>
    #                <p>COGNITO_IDENTITY_POOL</p>
    #             </li>
    #             <li>
    #                <p>CLIENT_ID</p>
    #             </li>
    #             <li>
    #                <p>ACCOUNT_SETTINGS</p>
    #             </li>
    #             <li>
    #                <p>ROLE_ALIAS</p>
    #             </li>
    #             <li>
    #                <p>IAM_ROLE</p>
    #             </li>
    #             <li>
    #                <p>ISSUER_CERTIFICATE</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>This API is similar to DescribeAuditFinding's <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html">RelatedResources</a>    
    #       but provides pagination and is not limited to 10 resources. 
    #       When calling <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeAuditFinding.html">DescribeAuditFinding</a> for the intermediate CA revoked for 
    #       active device certificates check, RelatedResources will not be populated. You must use this API, ListRelatedResourcesForAuditFinding, to list the certificates.</p>
    #          </note>
    # @param [Hash, Types::ListRelatedResourcesForAuditFindingRequest] params
    # @option params [String] :finding_id
    #   <p>The finding Id.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results, 
    #         or <code>null</code> if there are no additional results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     finding_id: "FindingId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_related_resources_for_audit_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     related_resources: [
    #       {
    #         resource_type: "DEVICE_CERTIFICATE" # One of: ["DEVICE_CERTIFICATE", "CA_CERTIFICATE", "IOT_POLICY", "COGNITO_IDENTITY_POOL", "CLIENT_ID", "ACCOUNT_SETTINGS", "ROLE_ALIAS", "IAM_ROLE", "ISSUER_CERTIFICATE"],
    #         resource_identifier: {
    #           device_certificate_id: "CertificateId",
    #           ca_certificate_id: "CertificateId",
    #           cognito_identity_pool_id: "CognitoIdentityPoolId",
    #           client_id: "ClientId",
    #           policy_version_identifier: {
    #             policy_name: "PolicyName",
    #             policy_version_id: "PolicyVersionId"
    #           },
    #           account: "AwsAccountId",
    #           iam_role_arn: "RoleArn",
    #           role_alias_arn: "RoleAliasArn",
    #           issuer_certificate_identifier: {
    #             issuer_certificate_subject: "IssuerCertificateSubject",
    #             issuer_id: "IssuerId",
    #             issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #           },
    #           device_certificate_arn: "CertificateArn"
    #         },
    #         additional_info: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRelatedResourcesForAuditFindingResponse]
    def list_related_resources_for_audit_finding(params = {}, options = {})
      request = build_request(:list_related_resources_for_audit_finding, params)
      request.send_request(options)
    end

    # <p>Lists the role aliases registered in your account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListRoleAliases</a> action.</p>
    # @param [Hash, Types::ListRoleAliasesRequest] params
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Return the list of role aliases in ascending alphabetical order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_role_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_aliases: ["RoleAlias"],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListRoleAliasesResponse]
    def list_role_aliases(params = {}, options = {})
      request = build_request(:list_role_aliases, params)
      request.send_request(options)
    end

    # <p>The validation results for all software bill of materials (SBOM) attached to a specific software package version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSbomValidationResults</a> action.</p>
    # @param [Hash, Types::ListSbomValidationResultsRequest] params
    # @option params [String] :package_name
    #   <p>The name of the new software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the new package version.</p>
    # @option params [String] :validation_result
    #   <p>The end result of the </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results, or null if there are no additional results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     validation_result: "FAILED" # One of: ["FAILED", "SUCCEEDED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_sbom_validation_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_result_summaries: [
    #       {
    #         file_name: "FileName",
    #         validation_result: "FAILED" # One of: ["FAILED", "SUCCEEDED"],
    #         error_code: "INCOMPATIBLE_FORMAT" # One of: ["INCOMPATIBLE_FORMAT", "FILE_SIZE_LIMIT_EXCEEDED"],
    #         error_message: "SbomValidationErrorMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSbomValidationResultsResponse]
    def list_sbom_validation_results(params = {}, options = {})
      request = build_request(:list_sbom_validation_results, params)
      request.send_request(options)
    end

    # <p>Lists all of your scheduled audits.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListScheduledAudits</a> action.</p>
    # @param [Hash, Types::ListScheduledAuditsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time. The default is 25.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_scheduled_audits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_audits: [
    #       {
    #         scheduled_audit_name: "ScheduledAuditName",
    #         scheduled_audit_arn: "ScheduledAuditArn",
    #         frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"],
    #         day_of_month: "DayOfMonth",
    #         day_of_week: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListScheduledAuditsResponse]
    def list_scheduled_audits(params = {}, options = {})
      request = build_request(:list_scheduled_audits, params)
      request.send_request(options)
    end

    # <p>Lists the Device Defender security profiles
    #       you've
    #       created. You can filter security profiles by dimension or custom metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSecurityProfiles</a> action.</p>
    #          <note>
    #             <p>
    #                <code>dimensionName</code> and <code>metricName</code> cannot be used in the same request.</p>
    #          </note>
    # @param [Hash, Types::ListSecurityProfilesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :dimension_name
    #   <p>A filter to limit results to the security profiles that use the defined dimension.
    #         Cannot be used with <code>metricName</code>
    #            </p>
    # @option params [String] :metric_name
    #   <p> The name of the custom metric.
    #         Cannot be used with <code>dimensionName</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     dimension_name: "DimensionName",
    #     metric_name: "MetricName"
    #   }
    #   options = {}
    #   response = client.list_security_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_identifiers: [
    #       {
    #         name: "SecurityProfileName", # required
    #         arn: "SecurityProfileArn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityProfilesResponse]
    def list_security_profiles(params = {}, options = {})
      request = build_request(:list_security_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the Device Defender security profiles attached to a target (thing group).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListSecurityProfilesForTarget</a> action.</p>
    # @param [Hash, Types::ListSecurityProfilesForTargetRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [Boolean] :recursive
    #   <p>If true, return child groups too.</p>
    # @option params [String] :security_profile_target_arn
    #   <p>The ARN of the target (thing group) whose attached security profiles you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     recursive: false,
    #     security_profile_target_arn: "SecurityProfileTargetArn", # required
    #   }
    #   options = {}
    #   response = client.list_security_profiles_for_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_target_mappings: [
    #       {
    #         security_profile_identifier: {
    #           name: "SecurityProfileName", # required
    #           arn: "SecurityProfileArn", # required
    #         },
    #         target: {
    #           arn: "SecurityProfileTargetArn", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityProfilesForTargetResponse]
    def list_security_profiles_for_target(params = {}, options = {})
      request = build_request(:list_security_profiles_for_target, params)
      request.send_request(options)
    end

    # <p>Lists all of the streams in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListStreams</a> action.</p>
    # @param [Hash, Types::ListStreamsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at a time.</p>
    # @option params [String] :next_token
    #   <p>A token used to get the next set of results.</p>
    # @option params [Boolean] :ascending_order
    #   <p>Set to true to return the list of streams in ascending order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ascending_order: false
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streams: [
    #       {
    #         stream_id: "StreamId",
    #         stream_arn: "StreamArn",
    #         stream_version: 1,
    #         description: "StreamDescription"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListStreamsResponse]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
      request.send_request(options)
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTagsForResource</a> action.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List targets for the specified policy.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTargetsForPolicy</a> action.</p>
    # @param [Hash, Types::ListTargetsForPolicyRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :marker
    #   <p>A marker used to get the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_targets_for_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: ["PolicyTarget"],
    #     next_marker: "Marker"
    #   }
    # @return [Types::ListTargetsForPolicyResponse]
    def list_targets_for_policy(params = {}, options = {})
      request = build_request(:list_targets_for_policy, params)
      request.send_request(options)
    end

    # <p>Lists the targets (thing groups) associated with a given Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTargetsForSecurityProfile</a> action.</p>
    # @param [Hash, Types::ListTargetsForSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The security profile.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_targets_for_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_targets: [
    #       {
    #         arn: "SecurityProfileTargetArn", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetsForSecurityProfileResponse]
    def list_targets_for_security_profile(params = {}, options = {})
      request = build_request(:list_targets_for_security_profile, params)
      request.send_request(options)
    end

    # <p>List the thing groups in your account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingGroups</a> action.</p>
    # @param [Hash, Types::ListThingGroupsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :parent_group
    #   <p>A filter that limits the results to those with the specified parent group.</p>
    # @option params [String] :name_prefix_filter
    #   <p>A filter that limits the results to those with the specified name prefix.</p>
    # @option params [Boolean] :recursive
    #   <p>If true, return child groups as well.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     parent_group: "ThingGroupName",
    #     name_prefix_filter: "ThingGroupName",
    #     recursive: false
    #   }
    #   options = {}
    #   response = client.list_thing_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_groups: [
    #       {
    #         group_name: "ThingGroupName",
    #         group_arn: "ThingGroupArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingGroupsResponse]
    def list_thing_groups(params = {}, options = {})
      request = build_request(:list_thing_groups, params)
      request.send_request(options)
    end

    # <p>List the thing groups to which the specified thing belongs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingGroupsForThing</a> action.</p>
    # @param [Hash, Types::ListThingGroupsForThingRequest] params
    # @option params [String] :thing_name
    #   <p>The thing name.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_thing_groups_for_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_groups: [
    #       {
    #         group_name: "ThingGroupName",
    #         group_arn: "ThingGroupArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingGroupsForThingResponse]
    def list_thing_groups_for_thing(params = {}, options = {})
      request = build_request(:list_thing_groups_for_thing, params)
      request.send_request(options)
    end

    # <p>Lists the principals associated with the specified thing. A principal can be X.509
    # 			certificates, IAM users, groups, and roles, Amazon Cognito identities or federated
    # 			identities.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingPrincipals</a> action.</p>
    # @param [Hash, Types::ListThingPrincipalsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_name: "ThingName", # required
    #   }
    #   options = {}
    #   response = client.list_thing_principals(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     principals: ["PrincipalArn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingPrincipalsResponse]
    def list_thing_principals(params = {}, options = {})
      request = build_request(:list_thing_principals, params)
      request.send_request(options)
    end

    # <p>Lists the principals associated with the specified thing. A principal can be an X.509
    # 			certificate or an Amazon Cognito ID.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingPrincipals</a> action.</p>
    # @param [Hash, Types::ListThingPrincipalsV2Request] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   				value from a previous response; otherwise <b>null</b> to receive
    #   				the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :thing_principal_type
    #   <p>The type of the relation you want to filter in the response. If no value is provided in
    #   			this field, the response will list all principals, including both the
    #   				<code>EXCLUSIVE_THING</code> and <code>NON_EXCLUSIVE_THING</code> attachment
    #   			types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing, exclusively. 
    #   						The thing will be the only thing that’s attached to the principal.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NON_EXCLUSIVE_THING</code> - Attaches the specified principal to the specified thing.
    #   						Multiple things can be attached to the principal.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_name: "ThingName", # required
    #     thing_principal_type: "EXCLUSIVE_THING" # One of: ["EXCLUSIVE_THING", "NON_EXCLUSIVE_THING"]
    #   }
    #   options = {}
    #   response = client.list_thing_principals_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_principal_objects: [
    #       {
    #         principal: "Principal", # required
    #         thing_principal_type: "EXCLUSIVE_THING" # One of: ["EXCLUSIVE_THING", "NON_EXCLUSIVE_THING"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingPrincipalsV2Response]
    def list_thing_principals_v2(params = {}, options = {})
      request = build_request(:list_thing_principals_v2, params)
      request.send_request(options)
    end

    # <p>Information about the thing registration tasks.</p>
    # @param [Hash, Types::ListThingRegistrationTaskReportsRequest] params
    # @option params [String] :task_id
    #   <p>The id of the task.</p>
    # @option params [String] :report_type
    #   <p>The type of task report.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   		the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "TaskId", # required
    #     report_type: "ERRORS" # One of: ["ERRORS", "RESULTS"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_thing_registration_task_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_links: ["S3FileUrl"],
    #     report_type: "ERRORS" # One of: ["ERRORS", "RESULTS"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingRegistrationTaskReportsResponse]
    def list_thing_registration_task_reports(params = {}, options = {})
      request = build_request(:list_thing_registration_task_reports, params)
      request.send_request(options)
    end

    # <p>List bulk thing provisioning tasks.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingRegistrationTasks</a> action.</p>
    # @param [Hash, Types::ListThingRegistrationTasksRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :status
    #   <p>The status of the bulk thing provisioning task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "InProgress" # One of: ["InProgress", "Completed", "Failed", "Cancelled", "Cancelling"]
    #   }
    #   options = {}
    #   response = client.list_thing_registration_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_ids: ["TaskId"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingRegistrationTasksResponse]
    def list_thing_registration_tasks(params = {}, options = {})
      request = build_request(:list_thing_registration_tasks, params)
      request.send_request(options)
    end

    # <p>Lists the existing thing types.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingTypes</a> action.</p>
    # @param [Hash, Types::ListThingTypesRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_type_name: "ThingTypeName"
    #   }
    #   options = {}
    #   response = client.list_thing_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     thing_types: [
    #       {
    #         thing_type_name: "ThingTypeName",
    #         thing_type_arn: "ThingTypeArn",
    #         thing_type_properties: {
    #           thing_type_description: "ThingTypeDescription",
    #           searchable_attributes: ["AttributeName"],
    #           mqtt5_configuration: {
    #             propagating_attributes: [
    #               {
    #                 user_property_key: "UserPropertyKeyName",
    #                 thing_attribute: "AttributeName",
    #                 connection_attribute: "ConnectionAttributeName"
    #               }
    #             ]
    #           }
    #         },
    #         thing_type_metadata: {
    #           deprecated: false,
    #           deprecation_date: Time.now,
    #           creation_date: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingTypesResponse]
    def list_thing_types(params = {}, options = {})
      request = build_request(:list_thing_types, params)
      request.send_request(options)
    end

    # <p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example,
    # 			calling <code>ListThings</code> with attributeName=Color and attributeValue=Red
    # 			retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. For more
    # 			information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/thing-registry.html#list-things">List Things</a> from the <i>Amazon Web Services IoT Core Developer
    # 				Guide</i>.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThings</a> action.</p>
    #          <note>
    #             <p>You will not be charged for calling this API if an <code>Access denied</code> error is returned. You will also not be charged if no attributes or pagination token was provided in request and no pagination token and no results were returned.</p>
    #          </note>
    # @param [Hash, Types::ListThingsRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    # @option params [String] :attribute_name
    #   <p>The attribute name used to search for things.</p>
    # @option params [String] :attribute_value
    #   <p>The attribute value used to search for things.</p>
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type used to search for things.</p>
    # @option params [Boolean] :use_prefix_attribute_value
    #   <p>When <code>true</code>, the action returns the thing resources with attribute values
    #                        that start with the <code>attributeValue</code> provided.</p>
    #            <p>When <code>false</code>, or not present, the action returns only the thing
    #   			resources with attribute values that match the entire <code>attributeValue</code>
    #   			provided. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     attribute_name: "AttributeName",
    #     attribute_value: "AttributeValue",
    #     thing_type_name: "ThingTypeName",
    #     use_prefix_attribute_value: false
    #   }
    #   options = {}
    #   response = client.list_things(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     things: [
    #       {
    #         thing_name: "ThingName",
    #         thing_type_name: "ThingTypeName",
    #         thing_arn: "ThingArn",
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         version: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingsResponse]
    def list_things(params = {}, options = {})
      request = build_request(:list_things, params)
      request.send_request(options)
    end

    # <p>Lists the things you have added to the given billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingsInBillingGroup</a> action.</p>
    # @param [Hash, Types::ListThingsInBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_things_in_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     things: ["ThingName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingsInBillingGroupResponse]
    def list_things_in_billing_group(params = {}, options = {})
      request = build_request(:list_things_in_billing_group, params)
      request.send_request(options)
    end

    # <p>Lists the things in the specified group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListThingsInThingGroup</a> action.</p>
    # @param [Hash, Types::ListThingsInThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The thing group name.</p>
    # @option params [Boolean] :recursive
    #   <p>When true, list things in this thing group and in all child groups as
    #   			well.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #   			value from a previous response; otherwise <b>null</b> to receive
    #   			the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     recursive: false,
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_things_in_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     things: ["ThingName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListThingsInThingGroupResponse]
    def list_things_in_thing_group(params = {}, options = {})
      request = build_request(:list_things_in_thing_group, params)
      request.send_request(options)
    end

    # <p>Lists all the topic rule destinations in your Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTopicRuleDestinations</a> action.</p>
    # @param [Hash, Types::ListTopicRuleDestinationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_topic_rule_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_summaries: [
    #       {
    #         arn: "AwsArn",
    #         status: "ENABLED" # One of: ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"],
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         status_reason: "String",
    #         http_url_summary: {
    #           confirmation_url: "Url"
    #         },
    #         vpc_destination_summary: {
    #           subnet_ids: ["SubnetId"],
    #           security_groups: ["SecurityGroupId"],
    #           vpc_id: "VpcId",
    #           role_arn: "AwsArn"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTopicRuleDestinationsResponse]
    def list_topic_rule_destinations(params = {}, options = {})
      request = build_request(:list_topic_rule_destinations, params)
      request.send_request(options)
    end

    # <p>Lists the rules for the specific topic.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListTopicRules</a> action.</p>
    # @param [Hash, Types::ListTopicRulesRequest] params
    # @option params [String] :topic
    #   <p>The topic.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    # @option params [Boolean] :rule_disabled
    #   <p>Specifies whether the rule is disabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic: "Topic",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     rule_disabled: false
    #   }
    #   options = {}
    #   response = client.list_topic_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         rule_arn: "RuleArn",
    #         rule_name: "RuleName",
    #         topic_pattern: "TopicPattern",
    #         created_at: Time.now,
    #         rule_disabled: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTopicRulesResponse]
    def list_topic_rules(params = {}, options = {})
      request = build_request(:list_topic_rules, params)
      request.send_request(options)
    end

    # <p>Lists logging levels.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListV2LoggingLevels</a> action.</p>
    # @param [Hash, Types::ListV2LoggingLevelsRequest] params
    # @option params [String] :target_type
    #   <p>The type of resource for which you are configuring logging. Must be
    #               <code>THING_Group</code>.</p>
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #            value from a previous response; otherwise <b>null</b> to receive
    #            the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_type: "DEFAULT" # One of: ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_v2_logging_levels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_target_configurations: [
    #       {
    #         log_target: {
    #           target_type: "DEFAULT" # One of: ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"], # required
    #           target_name: "LogTargetName"
    #         },
    #         log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListV2LoggingLevelsResponse]
    def list_v2_logging_levels(params = {}, options = {})
      request = build_request(:list_v2_logging_levels, params)
      request.send_request(options)
    end

    # <p>Lists the Device Defender security profile violations discovered during the given time period. 
    #       You can use filters to limit the results to those alerts issued for a particular security profile, 
    #       behavior, or thing (device).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListViolationEvents</a> action.</p>
    # @param [Hash, Types::ListViolationEventsRequest] params
    # @option params [Time] :start_time
    #   <p>The start time for the alerts to be listed.</p>
    # @option params [Time] :end_time
    #   <p>The end time for the alerts to be listed.</p>
    # @option params [String] :thing_name
    #   <p>A filter to limit results to those alerts caused by the specified thing.</p>
    # @option params [String] :security_profile_name
    #   <p>A filter to limit results to those alerts generated by the specified security profile.</p>
    # @option params [String] :behavior_criteria_type
    #   <p>
    #         The criteria for a behavior.
    #       </p>
    # @option params [Boolean] :list_suppressed_alerts
    #   <p>
    #         A list of all suppressed alerts.
    #       </p>
    # @option params [String] :verification_state
    #   <p>The verification state of the violation (detect alarm).</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     thing_name: "DeviceDefenderThingName",
    #     security_profile_name: "SecurityProfileName",
    #     behavior_criteria_type: "STATIC" # One of: ["STATIC", "STATISTICAL", "MACHINE_LEARNING"],
    #     list_suppressed_alerts: false,
    #     verification_state: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_violation_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     violation_events: [
    #       {
    #         violation_id: "ViolationId",
    #         thing_name: "DeviceDefenderThingName",
    #         security_profile_name: "SecurityProfileName",
    #         behavior: {
    #           name: "BehaviorName", # required
    #           metric: "BehaviorMetric",
    #           metric_dimension: {
    #             dimension_name: "DimensionName", # required
    #             operator: "IN" # One of: ["IN", "NOT_IN"]
    #           },
    #           criteria: {
    #             comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #             value: {
    #               count: 1,
    #               cidrs: ["Cidr"],
    #               ports: [1],
    #               number: 1.0,
    #               numbers: [1.0],
    #               strings: ["stringValue"]
    #             },
    #             duration_seconds: 1,
    #             consecutive_datapoints_to_alarm: 1,
    #             consecutive_datapoints_to_clear: 1,
    #             statistical_threshold: {
    #               statistic: "EvaluationStatistic"
    #             },
    #             ml_detection_config: {
    #               confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #             }
    #           },
    #           suppress_alerts: false,
    #           export_metric: false
    #         },
    #         metric_value: {
    #           count: 1,
    #           cidrs: ["Cidr"],
    #           ports: [1],
    #           number: 1.0,
    #           numbers: [1.0],
    #           strings: ["stringValue"]
    #         },
    #         violation_event_additional_info: {
    #           confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"]
    #         },
    #         violation_event_type: "in-alarm" # One of: ["in-alarm", "alarm-cleared", "alarm-invalidated"],
    #         verification_state: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"],
    #         verification_state_description: "VerificationStateDescription",
    #         violation_event_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListViolationEventsResponse]
    def list_violation_events(params = {}, options = {})
      request = build_request(:list_violation_events, params)
      request.send_request(options)
    end

    # <p>Set a verification state and provide a description of that verification state on a violation (detect alarm).</p>
    # @param [Hash, Types::PutVerificationStateOnViolationRequest] params
    # @option params [String] :violation_id
    #   <p>The violation ID.</p>
    # @option params [String] :verification_state
    #   <p>The verification state of the violation.</p>
    # @option params [String] :verification_state_description
    #   <p>The description of the verification state of the violation (detect alarm).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     violation_id: "ViolationId", # required
    #     verification_state: "FALSE_POSITIVE" # One of: ["FALSE_POSITIVE", "BENIGN_POSITIVE", "TRUE_POSITIVE", "UNKNOWN"], # required
    #     verification_state_description: "VerificationStateDescription"
    #   }
    #   options = {}
    #   response = client.put_verification_state_on_violation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutVerificationStateOnViolationResponse]
    def put_verification_state_on_violation(params = {}, options = {})
      request = build_request(:put_verification_state_on_violation, params)
      request.send_request(options)
    end

    # <p>Registers a CA certificate with Amazon Web Services IoT Core. There is no limit to the number of CA
    #          certificates you can register in your Amazon Web Services account. You can register up to 10 CA
    #          certificates with the same <code>CA subject field</code> per Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterCACertificate</a> action.</p>
    # @param [Hash, Types::RegisterCACertificateRequest] params
    # @option params [String] :ca_certificate
    #   <p>The CA certificate.</p>
    # @option params [String] :verification_certificate
    #   <p>The private key verification certificate. If <code>certificateMode</code> is
    #               <code>SNI_ONLY</code>, the <code>verificationCertificate</code> field must be empty. If
    #               <code>certificateMode</code> is <code>DEFAULT</code> or not provided, the
    #               <code>verificationCertificate</code> field must not be empty. </p>
    # @option params [Boolean] :set_as_active
    #   <p>A boolean value that specifies if the CA certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    # @option params [Boolean] :allow_auto_registration
    #   <p>Allows this CA certificate to be used for auto registration of device
    #            certificates.</p>
    # @option params [Types::RegistrationConfig] :registration_config
    #   <p>Information about the registration configuration.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata which can be used to manage the CA certificate.</p>
    #            <note>
    #               <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
    #               <p>For the CLI command-line parameter use format: &&tags
    #               "key1=value1&key2=value2..."</p>
    #               <p>For the cli-input-json file use format: "tags":
    #               "key1=value1&key2=value2..."</p>
    #            </note>
    # @option params [String] :certificate_mode
    #   <p>Describes the certificate mode in which the Certificate Authority (CA) will be
    #            registered. If the <code>verificationCertificate</code> field is not provided, set <code>certificateMode</code> to be <code>SNI_ONLY</code>.
    #            If the <code>verificationCertificate</code> field is provided, set <code>certificateMode</code> to be <code>DEFAULT</code>.
    #            When <code>certificateMode</code> is not provided, it defaults to <code>DEFAULT</code>.
    #            All the device certificates that are registered using this CA will be registered in the same certificate mode as the CA.
    #            For more information about certificate mode for device certificates, see 
    #            <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode">
    #               certificate mode</a>.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ca_certificate: "CertificatePem", # required
    #     verification_certificate: "CertificatePem",
    #     set_as_active: false,
    #     allow_auto_registration: false,
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #       template_name: "TemplateName"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     certificate_mode: "DEFAULT" # One of: ["DEFAULT", "SNI_ONLY"]
    #   }
    #   options = {}
    #   response = client.register_ca_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "CertificateArn",
    #     certificate_id: "CertificateId"
    #   }
    # @return [Types::RegisterCACertificateResponse]
    def register_ca_certificate(params = {}, options = {})
      request = build_request(:register_ca_certificate, params)
      request.send_request(options)
    end

    # <p>Registers a device certificate with IoT in the same <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CertificateDescription.html#iot-Type-CertificateDescription-certificateMode">certificate mode</a> as the signing CA. If you have more than one CA certificate that has the same subject field, you must
    #          specify the CA certificate that was used to sign the device certificate being
    #          registered.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterCertificate</a> action.</p>
    # @param [Hash, Types::RegisterCertificateRequest] params
    # @option params [String] :certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    # @option params [String] :ca_certificate_pem
    #   <p>The CA certificate used to sign the device certificate being registered.</p>
    # @option params [Boolean] :set_as_active
    #   <p>A boolean value that specifies if the certificate is set to active.</p>
    #            <p>Valid values: <code>ACTIVE | INACTIVE</code>
    #            </p>
    # @option params [String] :status
    #   <p>The status of the register certificate request. Valid values that you can use include 
    #            <code>ACTIVE</code>, <code>INACTIVE</code>, and <code>REVOKED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_pem: "CertificatePem", # required
    #     ca_certificate_pem: "CertificatePem",
    #     set_as_active: false,
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   }
    #   options = {}
    #   response = client.register_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "CertificateArn",
    #     certificate_id: "CertificateId"
    #   }
    # @return [Types::RegisterCertificateResponse]
    def register_certificate(params = {}, options = {})
      request = build_request(:register_certificate, params)
      request.send_request(options)
    end

    # <p>Register a certificate that does not have a certificate authority (CA). 
    #          For supported certificates, consult <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html#x509-cert-algorithms">
    #          Certificate signing algorithms supported by IoT</a>.
    #       </p>
    # @param [Hash, Types::RegisterCertificateWithoutCARequest] params
    # @option params [String] :certificate_pem
    #   <p>The certificate data, in PEM format.</p>
    # @option params [String] :status
    #   <p>The status of the register certificate request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_pem: "CertificatePem", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"]
    #   }
    #   options = {}
    #   response = client.register_certificate_without_ca(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_arn: "CertificateArn",
    #     certificate_id: "CertificateId"
    #   }
    # @return [Types::RegisterCertificateWithoutCAResponse]
    def register_certificate_without_ca(params = {}, options = {})
      request = build_request(:register_certificate_without_ca, params)
      request.send_request(options)
    end

    # <p>Provisions a thing in the device registry. RegisterThing calls other IoT control
    #          plane APIs. These calls might exceed your account level <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_iot">
    #             IoT Throttling Limits</a> and cause throttle errors. Please contact <a href="https://console.aws.amazon.com/support/home">Amazon Web Services Customer Support</a> to raise
    #          your throttling limits if necessary.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RegisterThing</a> action.</p>
    # @param [Hash, Types::RegisterThingRequest] params
    # @option params [String] :template_body
    #   <p>The provisioning template. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html">Provisioning Devices That Have Device Certificates</a> for more information.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>The parameters for provisioning a thing. See <a href="https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html">Provisioning Templates</a> for more information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_body: "TemplateBody", # required
    #     parameters: {
    #       "Parameter" => "Value"
    #     }
    #   }
    #   options = {}
    #   response = client.register_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_pem: "CertificatePem",
    #     resource_arns: {
    #       "ResourceLogicalId" => "ResourceArn"
    #     }
    #   }
    # @return [Types::RegisterThingResponse]
    def register_thing(params = {}, options = {})
      request = build_request(:register_thing, params)
      request.send_request(options)
    end

    # <p>Rejects a pending certificate transfer. After IoT rejects a certificate transfer,
    #          the certificate status changes from <b>PENDING_TRANSFER</b> to
    #             <b>INACTIVE</b>.</p>
    #          <p>To check for pending certificate transfers, call <a>ListCertificates</a>
    #          to enumerate your certificates.</p>
    #          <p>This operation can only be called by the transfer destination. After it is called,
    #          the certificate will be returned to the source's account in the INACTIVE state.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RejectCertificateTransfer</a> action.</p>
    # @param [Hash, Types::RejectCertificateTransferRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @option params [String] :reject_reason
    #   <p>The reason the certificate transfer was rejected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     reject_reason: "Message"
    #   }
    #   options = {}
    #   response = client.reject_certificate_transfer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reject_certificate_transfer(params = {}, options = {})
      request = build_request(:reject_certificate_transfer, params)
      request.send_request(options)
    end

    # <p>Removes the given thing from the billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RemoveThingFromBillingGroup</a> action.</p>
    #          <note>
    #             <p>This call is asynchronous. It might take several seconds for the detachment to propagate.</p>
    #          </note>
    # @param [Hash, Types::RemoveThingFromBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    # @option params [String] :billing_group_arn
    #   <p>The ARN of the billing group.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing to be removed from the billing group.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to be removed from the billing group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName",
    #     billing_group_arn: "BillingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn"
    #   }
    #   options = {}
    #   response = client.remove_thing_from_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveThingFromBillingGroupResponse]
    def remove_thing_from_billing_group(params = {}, options = {})
      request = build_request(:remove_thing_from_billing_group, params)
      request.send_request(options)
    end

    # <p>Remove the specified thing from the specified group.</p>
    #          <p>You must specify either a <code>thingGroupArn</code> or a
    # 			<code>thingGroupName</code> to identify the thing group and
    # 			either a <code>thingArn</code> or a <code>thingName</code> to
    # 			identify the thing to remove from the thing group.
    # 		</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">RemoveThingFromThingGroup</a> action.</p>
    # @param [Hash, Types::RemoveThingFromThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The group name.</p>
    # @option params [String] :thing_group_arn
    #   <p>The group ARN.</p>
    # @option params [String] :thing_name
    #   <p>The name of the thing to remove from the group.</p>
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to remove from the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn"
    #   }
    #   options = {}
    #   response = client.remove_thing_from_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveThingFromThingGroupResponse]
    def remove_thing_from_thing_group(params = {}, options = {})
      request = build_request(:remove_thing_from_thing_group, params)
      request.send_request(options)
    end

    # <p>Replaces the rule. You must specify all parameters for the new rule. Creating rules
    #          is an administrator-level action. Any user who has permission to create rules will be able
    #          to access data processed by the rule.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ReplaceTopicRule</a> action.</p>
    # @param [Hash, Types::ReplaceTopicRuleRequest] params
    # @option params [String] :rule_name
    #   <p>The name of the rule.</p>
    # @option params [Types::TopicRulePayload] :topic_rule_payload
    #   <p>The rule payload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #             payload_field: "PayloadField"
    #           },
    #           dynamo_d_bv2: {
    #             role_arn: "AwsArn", # required
    #             put_item: { # required
    #               table_name: "TableName", # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW" # One of: ["RAW", "JSON"]
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base64: false
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey"
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #             qos: 1,
    #             headers: {
    #               payload_format_indicator: "PayloadFormatIndicator",
    #               content_type: "ContentType",
    #               response_topic: "ResponseTopic",
    #               correlation_data: "CorrelationData",
    #               message_expiry: "MessageExpiry",
    #               user_properties: [
    #                 {
    #                   key: "UserPropertyKey", # required
    #                   value: "UserPropertyValue", # required
    #                 }
    #               ]
    #             }
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             batch_mode: false
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "String", # required
    #             metric_name: "String", # required
    #             metric_value: "String", # required
    #             metric_unit: "String", # required
    #             metric_timestamp: "String"
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           cloudwatch_logs: {
    #             role_arn: "AwsArn", # required
    #             log_group_name: "LogGroupName", # required
    #             batch_mode: false
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #           iot_analytics: {
    #             channel_arn: "AwsArn",
    #             channel_name: "ChannelName",
    #             batch_mode: false,
    #             role_arn: "AwsArn"
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             message_id: "MessageId",
    #             batch_mode: false,
    #             role_arn: "AwsArn", # required
    #           },
    #           iot_site_wise: {
    #             put_asset_property_value_entries: [ # required
    #               {
    #                 entry_id: "AssetPropertyEntryId",
    #                 asset_id: "AssetId",
    #                 property_id: "AssetPropertyId",
    #                 property_alias: "AssetPropertyAlias",
    #                 property_values: [ # required
    #                   {
    #                     value: { # required
    #                       # One of:
    #                       string_value: "AssetPropertyStringValue",
    #                       integer_value: "AssetPropertyIntegerValue",
    #                       double_value: "AssetPropertyDoubleValue",
    #                       boolean_value: "AssetPropertyBooleanValue"
    #                     },
    #                     timestamp: { # required
    #                       time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                       offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                     },
    #                     quality: "AssetPropertyQuality"
    #                   }
    #                 ]
    #               }
    #             ],
    #             role_arn: "AwsArn", # required
    #           },
    #           step_functions: {
    #             execution_name_prefix: "ExecutionNamePrefix",
    #             state_machine_name: "StateMachineName", # required
    #             role_arn: "AwsArn", # required
    #           },
    #           timestream: {
    #             role_arn: "AwsArn", # required
    #             database_name: "TimestreamDatabaseName", # required
    #             table_name: "TimestreamTableName", # required
    #             dimensions: [ # required
    #               {
    #                 name: "TimestreamDimensionName", # required
    #                 value: "TimestreamDimensionValue", # required
    #               }
    #             ],
    #             timestamp: {
    #               value: "TimestreamTimestampValue", # required
    #               unit: "TimestreamTimestampUnit", # required
    #             }
    #           },
    #           http: {
    #             url: "Url", # required
    #             confirmation_url: "Url",
    #             headers: [
    #               {
    #                 key: "HeaderKey", # required
    #                 value: "HeaderValue", # required
    #               }
    #             ],
    #             auth: {
    #               sigv4: {
    #                 signing_region: "SigningRegion", # required
    #                 service_name: "ServiceName", # required
    #                 role_arn: "AwsArn", # required
    #               }
    #             }
    #           },
    #           kafka: {
    #             destination_arn: "AwsArn", # required
    #             topic: "String", # required
    #             key: "String",
    #             partition: "String",
    #             client_properties: { # required
    #               "String" => "String"
    #             },
    #             headers: [
    #               {
    #                 key: "KafkaHeaderKey", # required
    #                 value: "KafkaHeaderValue", # required
    #               }
    #             ]
    #           },
    #           open_search: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           location: {
    #             role_arn: "AwsArn", # required
    #             tracker_name: "String", # required
    #             device_id: "String", # required
    #             timestamp: {
    #               value: "String", # required
    #               unit: "String"
    #             },
    #             latitude: "String", # required
    #             longitude: "String", # required
    #           }
    #         }
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING" # One of: ["STRING", "NUMBER"],
    #           payload_field: "PayloadField"
    #         },
    #         dynamo_d_bv2: {
    #           role_arn: "AwsArn", # required
    #           put_item: { # required
    #             table_name: "TableName", # required
    #           }
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW" # One of: ["RAW", "JSON"]
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base64: false
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey"
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #           qos: 1,
    #           headers: {
    #             payload_format_indicator: "PayloadFormatIndicator",
    #             content_type: "ContentType",
    #             response_topic: "ResponseTopic",
    #             correlation_data: "CorrelationData",
    #             message_expiry: "MessageExpiry",
    #             user_properties: [
    #               {
    #                 key: "UserPropertyKey", # required
    #                 value: "UserPropertyValue", # required
    #               }
    #             ]
    #           }
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"]
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #           batch_mode: false
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "String", # required
    #           metric_name: "String", # required
    #           metric_value: "String", # required
    #           metric_unit: "String", # required
    #           metric_timestamp: "String"
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         cloudwatch_logs: {
    #           role_arn: "AwsArn", # required
    #           log_group_name: "LogGroupName", # required
    #           batch_mode: false
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #         iot_analytics: {
    #           channel_arn: "AwsArn",
    #           channel_name: "ChannelName",
    #           batch_mode: false,
    #           role_arn: "AwsArn"
    #         },
    #         iot_events: {
    #           input_name: "InputName", # required
    #           message_id: "MessageId",
    #           batch_mode: false,
    #           role_arn: "AwsArn", # required
    #         },
    #         iot_site_wise: {
    #           put_asset_property_value_entries: [ # required
    #             {
    #               entry_id: "AssetPropertyEntryId",
    #               asset_id: "AssetId",
    #               property_id: "AssetPropertyId",
    #               property_alias: "AssetPropertyAlias",
    #               property_values: [ # required
    #                 {
    #                   value: { # required
    #                     # One of:
    #                     string_value: "AssetPropertyStringValue",
    #                     integer_value: "AssetPropertyIntegerValue",
    #                     double_value: "AssetPropertyDoubleValue",
    #                     boolean_value: "AssetPropertyBooleanValue"
    #                   },
    #                   timestamp: { # required
    #                     time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                     offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                   },
    #                   quality: "AssetPropertyQuality"
    #                 }
    #               ]
    #             }
    #           ],
    #           role_arn: "AwsArn", # required
    #         },
    #         step_functions: {
    #           execution_name_prefix: "ExecutionNamePrefix",
    #           state_machine_name: "StateMachineName", # required
    #           role_arn: "AwsArn", # required
    #         },
    #         timestream: {
    #           role_arn: "AwsArn", # required
    #           database_name: "TimestreamDatabaseName", # required
    #           table_name: "TimestreamTableName", # required
    #           dimensions: [ # required
    #             {
    #               name: "TimestreamDimensionName", # required
    #               value: "TimestreamDimensionValue", # required
    #             }
    #           ],
    #           timestamp: {
    #             value: "TimestreamTimestampValue", # required
    #             unit: "TimestreamTimestampUnit", # required
    #           }
    #         },
    #         http: {
    #           url: "Url", # required
    #           confirmation_url: "Url",
    #           headers: [
    #             {
    #               key: "HeaderKey", # required
    #               value: "HeaderValue", # required
    #             }
    #           ],
    #           auth: {
    #             sigv4: {
    #               signing_region: "SigningRegion", # required
    #               service_name: "ServiceName", # required
    #               role_arn: "AwsArn", # required
    #             }
    #           }
    #         },
    #         kafka: {
    #           destination_arn: "AwsArn", # required
    #           topic: "String", # required
    #           key: "String",
    #           partition: "String",
    #           client_properties: { # required
    #             "String" => "String"
    #           },
    #           headers: [
    #             {
    #               key: "KafkaHeaderKey", # required
    #               value: "KafkaHeaderValue", # required
    #             }
    #           ]
    #         },
    #         open_search: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         location: {
    #           role_arn: "AwsArn", # required
    #           tracker_name: "String", # required
    #           device_id: "String", # required
    #           timestamp: {
    #             value: "String", # required
    #             unit: "String"
    #           },
    #           latitude: "String", # required
    #           longitude: "String", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.replace_topic_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def replace_topic_rule(params = {}, options = {})
      request = build_request(:replace_topic_rule, params)
      request.send_request(options)
    end

    # <p>The query search index.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SearchIndex</a> action.</p>
    # @param [Hash, Types::SearchIndexRequest] params
    # @option params [String] :index_name
    #   <p>The search index name.</p>
    # @option params [String] :query_string
    #   <p>The search query string. For more information about the search query syntax, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html">Query
    #         syntax</a>.</p>
    # @option params [String] :next_token
    #   <p>The token used to get the next set of results, or <code>null</code> if there are no additional
    #         results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page at one time. This maximum number
    #         cannot exceed 100. The response might contain fewer results but will never contain more. You
    #         can use <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_SearchIndex.html#iot-SearchIndex-request-nextToken">
    #                  <code>nextToken</code>
    #               </a> to retrieve the next set of results until
    #           <code>nextToken</code> returns <code>NULL</code>.</p>
    # @option params [String] :query_version
    #   <p>The query version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     query_version: "QueryVersion"
    #   }
    #   options = {}
    #   response = client.search_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     things: [
    #       {
    #         thing_name: "ThingName",
    #         thing_id: "ThingId",
    #         thing_type_name: "ThingTypeName",
    #         thing_group_names: ["ThingGroupName"],
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         shadow: "JsonDocument",
    #         device_defender: "JsonDocument",
    #         connectivity: {
    #           connected: false,
    #           timestamp: 1,
    #           disconnect_reason: "DisconnectReason"
    #         }
    #       }
    #     ],
    #     thing_groups: [
    #       {
    #         thing_group_name: "ThingGroupName",
    #         thing_group_id: "ThingGroupId",
    #         thing_group_description: "ThingGroupDescription",
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         parent_group_names: ["ThingGroupName"]
    #       }
    #     ]
    #   }
    # @return [Types::SearchIndexResponse]
    def search_index(params = {}, options = {})
      request = build_request(:search_index, params)
      request.send_request(options)
    end

    # <p>Sets the default authorizer. This will be used if a websocket connection is made
    #          without specifying an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetDefaultAuthorizer</a> action.</p>
    # @param [Hash, Types::SetDefaultAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #   }
    #   options = {}
    #   response = client.set_default_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_name: "AuthorizerName",
    #     authorizer_arn: "AuthorizerArn"
    #   }
    # @return [Types::SetDefaultAuthorizerResponse]
    def set_default_authorizer(params = {}, options = {})
      request = build_request(:set_default_authorizer, params)
      request.send_request(options)
    end

    # <p>Sets the specified version of the specified policy as the policy's default
    #          (operative) version. This action affects all certificates to which the policy is attached.
    #          To list the principals the policy is attached to, use the <a>ListPrincipalPolicies</a>
    #          action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetDefaultPolicyVersion</a> action.</p>
    # @param [Hash, Types::SetDefaultPolicyVersionRequest] params
    # @option params [String] :policy_name
    #   <p>The policy name.</p>
    # @option params [String] :policy_version_id
    #   <p>The policy version ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   }
    #   options = {}
    #   response = client.set_default_policy_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_default_policy_version(params = {}, options = {})
      request = build_request(:set_default_policy_version, params)
      request.send_request(options)
    end

    # <p>Sets the logging options.</p>
    #          <p>NOTE: use of this command is not recommended. Use <code>SetV2LoggingOptions</code>
    #          instead.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetLoggingOptions</a> action.</p>
    # @param [Hash, Types::SetLoggingOptionsRequest] params
    # @option params [Types::LoggingOptionsPayload] :logging_options_payload
    #   <p>The logging options payload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_options_payload: { # required
    #       role_arn: "AwsArn", # required
    #       log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_logging_options(params = {}, options = {})
      request = build_request(:set_logging_options, params)
      request.send_request(options)
    end

    # <p>Sets the logging level.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetV2LoggingLevel</a> action.</p>
    # @param [Hash, Types::SetV2LoggingLevelRequest] params
    # @option params [Types::LogTarget] :log_target
    #   <p>The log target.</p>
    # @option params [String] :log_level
    #   <p>The log level.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     log_target: { # required
    #       target_type: "DEFAULT" # One of: ["DEFAULT", "THING_GROUP", "CLIENT_ID", "SOURCE_IP", "PRINCIPAL_ID"], # required
    #       target_name: "LogTargetName"
    #     },
    #     log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.set_v2_logging_level(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_v2_logging_level(params = {}, options = {})
      request = build_request(:set_v2_logging_level, params)
      request.send_request(options)
    end

    # <p>Sets the logging options for the V2 logging service.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SetV2LoggingOptions</a> action.</p>
    # @param [Hash, Types::SetV2LoggingOptionsRequest] params
    # @option params [String] :role_arn
    #   <p>The ARN of the role that allows IoT to write to Cloudwatch logs.</p>
    # @option params [String] :default_log_level
    #   <p>The default logging level.</p>
    # @option params [Boolean] :disable_all_logs
    #   <p>If true all logs are disabled. The default is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "AwsArn",
    #     default_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"],
    #     disable_all_logs: false
    #   }
    #   options = {}
    #   response = client.set_v2_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_v2_logging_options(params = {}, options = {})
      request = build_request(:set_v2_logging_options, params)
      request.send_request(options)
    end

    # <p>Starts a task that applies a set of mitigation actions to the specified target.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartAuditMitigationActionsTask</a> action.</p>
    # @param [Hash, Types::StartAuditMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>A unique identifier for the task. You can use this identifier to check the status of the task or to cancel it.</p>
    # @option params [Types::AuditMitigationActionsTaskTarget] :target
    #   <p>Specifies the audit findings to which the mitigation actions are applied. You can apply
    #         them to a type of audit check, to all findings from an audit, or to a
    #         specific set of
    #         findings.</p>
    # @option params [Hash<String, Array<String>>] :audit_check_to_actions_mapping
    #   <p>For an audit check, specifies which mitigation actions to apply. Those actions must be defined in your Amazon Web Services accounts.</p>
    # @option params [String] :client_request_token
    #   <p>Each audit mitigation task must have a unique client request token. If you try to start a new task with the same token as a task that already exists, an exception occurs. If you omit this value, a unique client request token is generated automatically.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #     target: { # required
    #       audit_task_id: "AuditTaskId",
    #       finding_ids: ["FindingId"],
    #       audit_check_to_reason_code_filter: {
    #         "AuditCheckName" => ["ReasonForNonComplianceCode"]
    #       }
    #     },
    #     audit_check_to_actions_mapping: { # required
    #       "AuditCheckName" => ["MitigationActionName"]
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.start_audit_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "MitigationActionsTaskId"
    #   }
    # @return [Types::StartAuditMitigationActionsTaskResponse]
    def start_audit_mitigation_actions_task(params = {}, options = {})
      request = build_request(:start_audit_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>
    #       Starts a Device Defender ML Detect mitigation actions task.
    #     </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartDetectMitigationActionsTask</a> action.</p>
    # @param [Hash, Types::StartDetectMitigationActionsTaskRequest] params
    # @option params [String] :task_id
    #   <p>
    #         The unique identifier of the task.
    #       </p>
    # @option params [Types::DetectMitigationActionsTaskTarget] :target
    #   <p>
    #         Specifies the ML Detect findings to which the mitigation actions are applied.
    #       </p>
    # @option params [Array<String>] :actions
    #   <p>
    #         The actions to be performed when a device has unexpected behavior.
    #       </p>
    # @option params [Types::ViolationEventOccurrenceRange] :violation_event_occurrence_range
    #   <p>
    #         Specifies the time period of which violation events occurred between.
    #       </p>
    # @option params [Boolean] :include_only_active_violations
    #   <p>
    #         Specifies to list only active violations.
    #       </p>
    # @option params [Boolean] :include_suppressed_alerts
    #   <p>
    #         Specifies to include suppressed alerts.
    #       </p>
    # @option params [String] :client_request_token
    #   <p>
    #         Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, Amazon Web Services SDKs will automatically generate a unique client request.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "MitigationActionsTaskId", # required
    #     target: { # required
    #       violation_ids: ["ViolationId"],
    #       security_profile_name: "SecurityProfileName",
    #       behavior_name: "BehaviorName"
    #     },
    #     actions: ["MitigationActionName"], # required
    #     violation_event_occurrence_range: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     include_only_active_violations: false,
    #     include_suppressed_alerts: false,
    #     client_request_token: "ClientRequestToken", # required
    #   }
    #   options = {}
    #   response = client.start_detect_mitigation_actions_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "MitigationActionsTaskId"
    #   }
    # @return [Types::StartDetectMitigationActionsTaskResponse]
    def start_detect_mitigation_actions_task(params = {}, options = {})
      request = build_request(:start_detect_mitigation_actions_task, params)
      request.send_request(options)
    end

    # <p>Starts an on-demand Device Defender audit.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartOnDemandAuditTask</a> action.</p>
    # @param [Hash, Types::StartOnDemandAuditTaskRequest] params
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the audit. The checks you specify must be enabled 
    #               for your account or an exception occurs. Use <code>DescribeAccountAuditConfiguration</code> 
    #               to see the list of all checks, including those that are enabled or 
    #               <code>UpdateAccountAuditConfiguration</code> to select which checks are enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_check_names: ["AuditCheckName"], # required
    #   }
    #   options = {}
    #   response = client.start_on_demand_audit_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "AuditTaskId"
    #   }
    # @return [Types::StartOnDemandAuditTaskResponse]
    def start_on_demand_audit_task(params = {}, options = {})
      request = build_request(:start_on_demand_audit_task, params)
      request.send_request(options)
    end

    # <p>Creates a bulk thing provisioning task.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StartThingRegistrationTask</a> action.</p>
    # @param [Hash, Types::StartThingRegistrationTaskRequest] params
    # @option params [String] :template_body
    #   <p>The provisioning template.</p>
    # @option params [String] :input_file_bucket
    #   <p>The S3 bucket that contains the input file.</p>
    # @option params [String] :input_file_key
    #   <p>The name of input file within the S3 bucket. This file contains a newline delimited
    #   			JSON file. Each line contains the parameter values to provision one device
    #   			(thing).</p>
    # @option params [String] :role_arn
    #   <p>The IAM role ARN that grants permission the input file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_body: "TemplateBody", # required
    #     input_file_bucket: "RegistryS3BucketName", # required
    #     input_file_key: "RegistryS3KeyName", # required
    #     role_arn: "RoleArn", # required
    #   }
    #   options = {}
    #   response = client.start_thing_registration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskId"
    #   }
    # @return [Types::StartThingRegistrationTaskResponse]
    def start_thing_registration_task(params = {}, options = {})
      request = build_request(:start_thing_registration_task, params)
      request.send_request(options)
    end

    # <p>Cancels a bulk thing provisioning task.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">StopThingRegistrationTask</a> action.</p>
    # @param [Hash, Types::StopThingRegistrationTaskRequest] params
    # @option params [String] :task_id
    #   <p>The bulk thing provisioning task ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.stop_thing_registration_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopThingRegistrationTaskResponse]
    def stop_thing_registration_task(params = {}, options = {})
      request = build_request(:stop_thing_registration_task, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata which can be
    # 			used to manage a resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TagResource</a> action.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
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

    # <p>Tests if a specified principal is authorized to perform an IoT action on a
    #          specified resource. Use this to test and debug the authorization behavior of devices that
    #          connect to the IoT device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TestAuthorization</a> action.</p>
    # @param [Hash, Types::TestAuthorizationRequest] params
    # @option params [String] :principal
    #   <p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>
    # @option params [String] :cognito_identity_pool_id
    #   <p>The Cognito identity pool ID.</p>
    # @option params [Array<Types::AuthInfo>] :auth_infos
    #   <p>A list of authorization info objects. Simulating authorization will create a response
    #            for each <code>authInfo</code> object in the list.</p>
    # @option params [String] :client_id
    #   <p>The MQTT client ID.</p>
    # @option params [Array<String>] :policy_names_to_add
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are attached to the principal being authorized.</p>
    # @option params [Array<String>] :policy_names_to_skip
    #   <p>When testing custom authorization, the policies specified here are treated as if they
    #            are not attached to the principal being authorized.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     auth_infos: [ # required
    #       {
    #         action_type: "PUBLISH" # One of: ["PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"],
    #         resources: ["Resource"], # required
    #       }
    #     ],
    #     client_id: "ClientId",
    #     policy_names_to_add: ["PolicyName"],
    #     policy_names_to_skip: ["PolicyName"]
    #   }
    #   options = {}
    #   response = client.test_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_results: [
    #       {
    #         auth_info: {
    #           action_type: "PUBLISH" # One of: ["PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"],
    #           resources: ["Resource"], # required
    #         },
    #         allowed: {
    #           policies: [
    #             {
    #               policy_name: "PolicyName",
    #               policy_arn: "PolicyArn"
    #             }
    #           ]
    #         },
    #         denied: {
    #           implicit_deny: {
    #             policies: [
    #               {
    #                 policy_name: "PolicyName",
    #                 policy_arn: "PolicyArn"
    #               }
    #             ]
    #           },
    #           explicit_deny: {
    #             policies: [
    #               {
    #                 policy_name: "PolicyName",
    #                 policy_arn: "PolicyArn"
    #               }
    #             ]
    #           }
    #         },
    #         auth_decision: "ALLOWED" # One of: ["ALLOWED", "EXPLICIT_DENY", "IMPLICIT_DENY"],
    #         missing_context_values: ["MissingContextValue"]
    #       }
    #     ]
    #   }
    # @return [Types::TestAuthorizationResponse]
    def test_authorization(params = {}, options = {})
      request = build_request(:test_authorization, params)
      request.send_request(options)
    end

    # <p>Tests a custom authorization behavior by invoking a specified custom authorizer. Use
    #          this to test and debug the custom authorization behavior of devices that connect to the IoT
    #          device gateway.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TestInvokeAuthorizer</a> action.</p>
    # @param [Hash, Types::TestInvokeAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The custom authorizer name.</p>
    # @option params [String] :token
    #   <p>The token returned by your custom authentication service.</p>
    # @option params [String] :token_signature
    #   <p>The signature made with the token and your custom authentication service's private
    #            key. This value must be Base-64-encoded.</p>
    # @option params [Types::HttpContext] :http_context
    #   <p>Specifies a test HTTP authorization request.</p>
    # @option params [Types::MqttContext] :mqtt_context
    #   <p>Specifies a test MQTT authorization request.</p>
    # @option params [Types::TlsContext] :tls_context
    #   <p>Specifies a test TLS authorization request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #     token: "Token",
    #     token_signature: "TokenSignature",
    #     http_context: {
    #       headers: {
    #         "HttpHeaderName" => "HttpHeaderValue"
    #       },
    #       query_string: "HttpQueryString"
    #     },
    #     mqtt_context: {
    #       username: "MqttUsername",
    #       password: "data",
    #       client_id: "MqttClientId"
    #     },
    #     tls_context: {
    #       server_name: "ServerName"
    #     }
    #   }
    #   options = {}
    #   response = client.test_invoke_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_authenticated: false,
    #     principal_id: "PrincipalId",
    #     policy_documents: ["PolicyDocument"],
    #     refresh_after_in_seconds: 1,
    #     disconnect_after_in_seconds: 1
    #   }
    # @return [Types::TestInvokeAuthorizerResponse]
    def test_invoke_authorizer(params = {}, options = {})
      request = build_request(:test_invoke_authorizer, params)
      request.send_request(options)
    end

    # <p>Transfers the specified certificate to the specified Amazon Web Services account.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">TransferCertificate</a> action.</p>
    #          <p>You can cancel the transfer until it is acknowledged by the recipient.</p>
    #          <p>No notification is sent to the transfer destination's account. It's up to the caller
    #          to notify the transfer target.</p>
    #          <p>The certificate being transferred must not be in the <code>ACTIVE</code> state. You can use the
    #          <a>UpdateCertificate</a> action to deactivate it.</p>
    #          <p>The certificate must not have any policies attached to it. You can use the
    #          <a>DetachPolicy</a> action to detach them.</p>
    #          <p>
    #             <b>Customer managed key behavior:</b> When you use a customer managed key to secure your data and then transfer
    #          the key to a customer in a different account using the <a>TransferCertificate</a> operation, the certificates will no longer be protected by their 
    #          customer managed key configuration. During the transfer process, certificates are encrypted using IoT owned keys.</p>
    #          <p>While a certificate is in the <b>PENDING_TRANSFER</b> state, it's always protected by IoT owned keys, regardless of the customer managed key configuration of either the source or destination account. </p>
    #          <p>Once the transfer is completed through <a>AcceptCertificateTransfer</a>, <a>RejectCertificateTransfer</a>, or
    #          <a>CancelCertificateTransfer</a>, the certificate will be protected by the customer managed key configuration of the account that owns
    #          the certificate after the transfer operation:</p>
    #          <ul>
    #             <li>
    #                <p>If the transfer is accepted: The certificate is protected by the destination account's customer managed key configuration.</p>
    #             </li>
    #             <li>
    #                <p>If the transfer is rejected or cancelled: The certificate is protected by the source account's customer managed key configuration.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TransferCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @option params [String] :target_aws_account
    #   <p>The Amazon Web Services account.</p>
    # @option params [String] :transfer_message
    #   <p>The transfer message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     target_aws_account: "AwsAccountId", # required
    #     transfer_message: "Message"
    #   }
    #   options = {}
    #   response = client.transfer_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transferred_certificate_arn: "CertificateArn"
    #   }
    # @return [Types::TransferCertificateResponse]
    def transfer_certificate(params = {}, options = {})
      request = build_request(:transfer_certificate, params)
      request.send_request(options)
    end

    # <p>Removes the given tags (metadata) from the resource.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UntagResource</a> action.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Configures or reconfigures the Device Defender audit settings for this account.
    #           Settings include how audit notifications are sent and which audit checks are
    #           enabled or disabled.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateAccountAuditConfiguration</a> action.</p>
    # @param [Hash, Types::UpdateAccountAuditConfigurationRequest] params
    # @option params [String] :role_arn
    #   <p>The Amazon
    #         Resource Name
    #         (ARN)
    #         of the role that grants permission
    #         to
    #         IoT to access information about your devices, policies,
    #         certificates,
    #         and other items as required when performing an audit.</p>
    # @option params [Hash<String, Types::AuditNotificationTarget>] :audit_notification_target_configurations
    #   <p>Information about the targets to which audit notifications are sent.</p>
    # @option params [Hash<String, Types::AuditCheckConfiguration>] :audit_check_configurations
    #   <p>Specifies which audit checks are enabled and disabled for this account. Use 
    #               <code>DescribeAccountAuditConfiguration</code> to see the list of all checks, including those 
    #               that are currently enabled.</p>
    #            <p>Some data collection might start immediately when certain checks are enabled. 
    #               When a check is disabled, any data collected so far in relation to the check is deleted.</p>
    #            <p>You
    #         cannot
    #         disable a check if
    #         it's
    #         used by any scheduled audit. You must first delete the check from the scheduled audit or
    #         delete the scheduled audit itself.</p>
    #            <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
    #               this parameter is required and must specify at least one enabled check.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "RoleArn",
    #     audit_notification_target_configurations: {
    #       "AuditNotificationType" => {
    #         target_arn: "TargetArn",
    #         role_arn: "RoleArn",
    #         enabled: false
    #       }
    #     },
    #     audit_check_configurations: {
    #       "AuditCheckName" => {
    #         enabled: false,
    #         configuration: {
    #           "ConfigName" => "ConfigValue"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_audit_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAccountAuditConfigurationResponse]
    def update_account_audit_configuration(params = {}, options = {})
      request = build_request(:update_account_audit_configuration, params)
      request.send_request(options)
    end

    # <p>
    #       Updates a Device Defender audit suppression.
    #     </p>
    # @param [Hash, Types::UpdateAuditSuppressionRequest] params
    # @option params [String] :check_name
    #   <p>An audit check name. Checks must be enabled 
    #           for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #           of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #           to select which checks are enabled.)</p>
    # @option params [Types::ResourceIdentifier] :resource_identifier
    #   <p>Information that identifies the noncompliant resource.</p>
    # @option params [Time] :expiration_date
    #   <p>
    #         The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
    #       </p>
    # @option params [Boolean] :suppress_indefinitely
    #   <p>
    #         Indicates whether a suppression should exist indefinitely or not.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The description of the audit suppression.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     check_name: "AuditCheckName", # required
    #     resource_identifier: { # required
    #       device_certificate_id: "CertificateId",
    #       ca_certificate_id: "CertificateId",
    #       cognito_identity_pool_id: "CognitoIdentityPoolId",
    #       client_id: "ClientId",
    #       policy_version_identifier: {
    #         policy_name: "PolicyName",
    #         policy_version_id: "PolicyVersionId"
    #       },
    #       account: "AwsAccountId",
    #       iam_role_arn: "RoleArn",
    #       role_alias_arn: "RoleAliasArn",
    #       issuer_certificate_identifier: {
    #         issuer_certificate_subject: "IssuerCertificateSubject",
    #         issuer_id: "IssuerId",
    #         issuer_certificate_serial_number: "IssuerCertificateSerialNumber"
    #       },
    #       device_certificate_arn: "CertificateArn"
    #     },
    #     expiration_date: Time.now,
    #     suppress_indefinitely: false,
    #     description: "AuditDescription"
    #   }
    #   options = {}
    #   response = client.update_audit_suppression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAuditSuppressionResponse]
    def update_audit_suppression(params = {}, options = {})
      request = build_request(:update_audit_suppression, params)
      request.send_request(options)
    end

    # <p>Updates an authorizer.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateAuthorizer</a> action.</p>
    # @param [Hash, Types::UpdateAuthorizerRequest] params
    # @option params [String] :authorizer_name
    #   <p>The authorizer name.</p>
    # @option params [String] :authorizer_function_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    # @option params [String] :token_key_name
    #   <p>The key used to extract the token from the HTTP headers. </p>
    # @option params [Hash<String, String>] :token_signing_public_keys
    #   <p>The public keys used to verify the token signature.</p>
    # @option params [String] :status
    #   <p>The status of the update authorizer request.</p>
    # @option params [Boolean] :enable_caching_for_http
    #   <p>When <code>true</code>, the result from the authorizer’s Lambda function is
    #   	  cached for the time specified in <code>refreshAfterInSeconds</code>. The cached
    #   	  result is used while the device reuses the same HTTP connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn",
    #     token_key_name: "TokenKeyName",
    #     token_signing_public_keys: {
    #       "KeyName" => "KeyValue"
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     enable_caching_for_http: false
    #   }
    #   options = {}
    #   response = client.update_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_name: "AuthorizerName",
    #     authorizer_arn: "AuthorizerArn"
    #   }
    # @return [Types::UpdateAuthorizerResponse]
    def update_authorizer(params = {}, options = {})
      request = build_request(:update_authorizer, params)
      request.send_request(options)
    end

    # <p>Updates information about the billing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateBillingGroup</a> action.</p>
    # @param [Hash, Types::UpdateBillingGroupRequest] params
    # @option params [String] :billing_group_name
    #   <p>The name of the billing group.</p>
    # @option params [Types::BillingGroupProperties] :billing_group_properties
    #   <p>The properties of the billing group.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the billing group. If the version of the billing group does
    #   			not match the expected version specified in the request, the
    #   				<code>UpdateBillingGroup</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_group_name: "BillingGroupName", # required
    #     billing_group_properties: { # required
    #       billing_group_description: "BillingGroupDescription"
    #     },
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.update_billing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: 1
    #   }
    # @return [Types::UpdateBillingGroupResponse]
    def update_billing_group(params = {}, options = {})
      request = build_request(:update_billing_group, params)
      request.send_request(options)
    end

    # <p>Updates a registered CA certificate.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCACertificate</a> action.</p>
    # @param [Hash, Types::UpdateCACertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The CA certificate identifier.</p>
    # @option params [String] :new_status
    #   <p>The updated status of the CA certificate.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    # @option params [String] :new_auto_registration_status
    #   <p>The new value for the auto registration status. Valid values are: "ENABLE" or
    #            "DISABLE".</p>
    # @option params [Types::RegistrationConfig] :registration_config
    #   <p>Information about the registration configuration.</p>
    # @option params [Boolean] :remove_auto_registration
    #   <p>If true, removes auto registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     new_auto_registration_status: "ENABLE" # One of: ["ENABLE", "DISABLE"],
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #       template_name: "TemplateName"
    #     },
    #     remove_auto_registration: false
    #   }
    #   options = {}
    #   response = client.update_ca_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_ca_certificate(params = {}, options = {})
      request = build_request(:update_ca_certificate, params)
      request.send_request(options)
    end

    # <p>Updates the status of the specified certificate. This operation is
    #          idempotent.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCertificate</a> action.</p>
    #          <p>Certificates must be in the ACTIVE state to authenticate devices that use
    #          a certificate to connect to IoT.</p>
    #          <p>Within a few minutes of updating a certificate from the ACTIVE state to any other
    #          state, IoT disconnects all devices that used that certificate to connect. Devices cannot
    #          use a certificate that is not in the ACTIVE state to reconnect.</p>
    # @param [Hash, Types::UpdateCertificateRequest] params
    # @option params [String] :certificate_id
    #   <p>The ID of the certificate. (The last part of the certificate ARN contains the
    #            certificate ID.)</p>
    # @option params [String] :new_status
    #   <p>The new status.</p>
    #            <p>
    #               <b>Note:</b> Setting the status to PENDING_TRANSFER  or PENDING_ACTIVATION will result
    #            in an exception being thrown. PENDING_TRANSFER and PENDING_ACTIVATION are statuses used internally by IoT. They 
    #            are not intended for developer use.</p>
    #            <p>
    #               <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
    #            should not be used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"], # required
    #   }
    #   options = {}
    #   response = client.update_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_certificate(params = {}, options = {})
      request = build_request(:update_certificate, params)
      request.send_request(options)
    end

    # <p>Updates a certificate provider.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCertificateProvider</a> action.
    #       </p>
    # @param [Hash, Types::UpdateCertificateProviderRequest] params
    # @option params [String] :certificate_provider_name
    #   <p>The name of the certificate provider.</p>
    # @option params [String] :lambda_function_arn
    #   <p>The Lambda function ARN that's associated with the certificate provider.</p>
    # @option params [Array<String>] :account_default_for_operations
    #   <p>A list of the operations that the certificate provider will use to generate certificates. 
    #            Valid value: <code>CreateCertificateFromCsr</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_provider_name: "CertificateProviderName", # required
    #     lambda_function_arn: "CertificateProviderFunctionArn",
    #     account_default_for_operations: ["CreateCertificateFromCsr" # One of: ["CreateCertificateFromCsr"]]
    #   }
    #   options = {}
    #   response = client.update_certificate_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_provider_name: "CertificateProviderName",
    #     certificate_provider_arn: "CertificateProviderArn"
    #   }
    # @return [Types::UpdateCertificateProviderResponse]
    def update_certificate_provider(params = {}, options = {})
      request = build_request(:update_certificate_provider, params)
      request.send_request(options)
    end

    # <p>Update information about a command or mark a command for deprecation.</p>
    # @param [Hash, Types::UpdateCommandRequest] params
    # @option params [String] :command_id
    #   <p>The unique identifier of the command to be updated.</p>
    # @option params [String] :display_name
    #   <p>The new user-friendly name to use in the console for the command.</p>
    # @option params [String] :description
    #   <p>A short text description of the command.</p>
    # @option params [Boolean] :deprecated
    #   <p>A boolean that you can use to specify whether to deprecate a command.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     command_id: "CommandId", # required
    #     display_name: "DisplayName",
    #     description: "CommandDescription",
    #     deprecated: false
    #   }
    #   options = {}
    #   response = client.update_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     command_id: "CommandId",
    #     display_name: "DisplayName",
    #     description: "CommandDescription",
    #     deprecated: false,
    #     last_updated_at: Time.now
    #   }
    # @return [Types::UpdateCommandResponse]
    def update_command(params = {}, options = {})
      request = build_request(:update_command, params)
      request.send_request(options)
    end

    # <p>Updates a
    #       Device Defender detect custom metric. </p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateCustomMetric</a> action.</p>
    # @param [Hash, Types::UpdateCustomMetricRequest] params
    # @option params [String] :metric_name
    #   <p> The name of the custom metric.
    #         Cannot be updated. </p>
    # @option params [String] :display_name
    #   <p>
    #         Field
    #         represents a friendly name in the console for the custom metric,
    #         it
    #         doesn't have to be unique. Don't use this name as the metric identifier in
    #         the device metric report.
    #         Can
    #         be updated. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "MetricName", # required
    #     display_name: "CustomMetricDisplayName", # required
    #   }
    #   options = {}
    #   response = client.update_custom_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_name: "MetricName",
    #     metric_arn: "CustomMetricArn",
    #     metric_type: "string-list" # One of: ["string-list", "ip-address-list", "number-list", "number"],
    #     display_name: "CustomMetricDisplayName",
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::UpdateCustomMetricResponse]
    def update_custom_metric(params = {}, options = {})
      request = build_request(:update_custom_metric, params)
      request.send_request(options)
    end

    # <p>Updates the definition for a dimension. You
    #       cannot
    #       change the type of a dimension after
    #       it is created (you can delete it and
    #       recreate
    #       it).</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDimension</a> action.</p>
    # @param [Hash, Types::UpdateDimensionRequest] params
    # @option params [String] :name
    #   <p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>
    # @option params [Array<String>] :string_values
    #   <p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, "admin/#").</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DimensionName", # required
    #     string_values: ["DimensionStringValue"], # required
    #   }
    #   options = {}
    #   response = client.update_dimension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DimensionName",
    #     arn: "DimensionArn",
    #     type: "TOPIC_FILTER" # One of: ["TOPIC_FILTER"],
    #     string_values: ["DimensionStringValue"],
    #     creation_date: Time.now,
    #     last_modified_date: Time.now
    #   }
    # @return [Types::UpdateDimensionResponse]
    def update_dimension(params = {}, options = {})
      request = build_request(:update_dimension, params)
      request.send_request(options)
    end

    # <p>Updates values stored in the domain configuration. Domain configurations for default
    #          endpoints can't be updated.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDomainConfiguration</a> action.</p>
    # @param [Hash, Types::UpdateDomainConfigurationRequest] params
    # @option params [String] :domain_configuration_name
    #   <p>The name of the domain configuration to be updated.</p>
    # @option params [Types::AuthorizerConfig] :authorizer_config
    #   <p>An object that specifies the authorization service for a domain.</p>
    # @option params [String] :domain_configuration_status
    #   <p>The status to which the domain configuration should be updated.</p>
    # @option params [Boolean] :remove_authorizer_config
    #   <p>Removes the authorization configuration from a domain.</p>
    # @option params [Types::TlsConfig] :tls_config
    #   <p>An object that specifies the TLS configuration for a domain.</p>
    # @option params [Types::ServerCertificateConfig] :server_certificate_config
    #   <p>The server certificate configuration.</p>
    # @option params [String] :authentication_type
    #   <p>An enumerated string that speciﬁes the authentication type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH_X509</code> - Use custom authentication and authorization with additional details from the X.509 client certificate.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_AUTH</code> - Use custom authentication and authorization. For more
    #                  information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">Custom authentication and authorization</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_X509</code> - Use X.509 client certificates without custom authentication and authorization. For more information,
    #                  see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/x509-client-certs.html">X.509 client certificates</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_SIGV4</code> - Use Amazon Web Services Signature Version 4. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/custom-authentication.html">IAM users, groups, and roles</a>.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT </code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify authentication type.
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :application_protocol
    #   <p>An enumerated string that speciﬁes the application-layer protocol.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SECURE_MQTT</code> - MQTT over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MQTT_WSS</code> - MQTT over WebSocket.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTPS</code> - HTTP over TLS.</p>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEFAULT</code> - Use a combination of port and Application Layer Protocol Negotiation (ALPN) to specify application_layer protocol. 
    #                  For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication protocols</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ClientCertificateConfig] :client_certificate_config
    #   <p>An object that speciﬁes the client certificate conﬁguration for a domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_configuration_name: "ReservedDomainConfigurationName", # required
    #     authorizer_config: {
    #       default_authorizer_name: "AuthorizerName",
    #       allow_authorizer_override: false
    #     },
    #     domain_configuration_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     remove_authorizer_config: false,
    #     tls_config: {
    #       security_policy: "SecurityPolicy"
    #     },
    #     server_certificate_config: {
    #       enable_ocsp_check: false,
    #       ocsp_lambda_arn: "OCSPLambdaArn",
    #       ocsp_authorized_responder_arn: "AcmCertificateArn"
    #     },
    #     authentication_type: "CUSTOM_AUTH_X509" # One of: ["CUSTOM_AUTH_X509", "CUSTOM_AUTH", "AWS_X509", "AWS_SIGV4", "DEFAULT"],
    #     application_protocol: "SECURE_MQTT" # One of: ["SECURE_MQTT", "MQTT_WSS", "HTTPS", "DEFAULT"],
    #     client_certificate_config: {
    #       client_certificate_callback_arn: "ClientCertificateCallbackArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_configuration_name: "ReservedDomainConfigurationName",
    #     domain_configuration_arn: "DomainConfigurationArn"
    #   }
    # @return [Types::UpdateDomainConfigurationResponse]
    def update_domain_configuration(params = {}, options = {})
      request = build_request(:update_domain_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a dynamic thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateDynamicThingGroup</a> action.</p>
    # @param [Hash, Types::UpdateDynamicThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The name of the dynamic thing group to update.</p>
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   <p>The dynamic thing group properties to update.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the dynamic thing group to update.</p>
    # @option params [String] :index_name
    #   <p>The dynamic thing group index to update.</p>
    #            <note>
    #               <p>Currently one index is supported: <code>AWS_Things</code>.</p>
    #            </note>
    # @option params [String] :query_string
    #   <p>The dynamic thing group search query string to update.</p>
    # @option params [String] :query_version
    #   <p>The dynamic thing group query version to update.</p>
    #            <note>
    #               <p>Currently one query version is supported: "2017-09-30". If not specified, the
    #   				query version defaults to this value.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: { # required
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         merge: false
    #       }
    #     },
    #     expected_version: 1,
    #     index_name: "IndexName",
    #     query_string: "QueryString",
    #     query_version: "QueryVersion"
    #   }
    #   options = {}
    #   response = client.update_dynamic_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: 1
    #   }
    # @return [Types::UpdateDynamicThingGroupResponse]
    def update_dynamic_thing_group(params = {}, options = {})
      request = build_request(:update_dynamic_thing_group, params)
      request.send_request(options)
    end

    # <p>Updates the encryption configuration. By default, all Amazon Web Services IoT Core data at rest is
    #          encrypted using Amazon Web Services owned keys. Amazon Web Services IoT Core also supports symmetric customer managed keys
    #          from Amazon Web Services Key Management Service (KMS). With customer managed keys, you create, own, and
    #          manage the KMS keys in your Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/data-encryption.html">Data
    #             encryption</a> in the <i>Amazon Web Services IoT Core Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateEncryptionConfigurationRequest] params
    # @option params [String] :encryption_type
    #   <p>The type of the Amazon Web Services Key Management Service (KMS) key.</p>
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the customer-managed KMS key.</p>
    # @option params [String] :kms_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role assumed by Amazon Web Services IoT Core to call KMS on
    #            behalf of the customer.</p>
    # @example UpdateEncryptionConfiguration example
    #   # This operation updates the encryption configuration. 
    #   params = {
    #     encryption_type: CUSTOMER_MANAGED_KMS_KEY,
    #     kms_key_arn: "arn:aws:iam:us-west-2:111122223333:role/myrole",
    #     kms_access_role_arn: "arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.update_encryption_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"], # required
    #     kms_key_arn: "KmsKeyArn",
    #     kms_access_role_arn: "KmsAccessRoleArn"
    #   }
    #   options = {}
    #   response = client.update_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEncryptionConfigurationResponse]
    def update_encryption_configuration(params = {}, options = {})
      request = build_request(:update_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the event configurations.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateEventConfigurations</a> action.</p>
    # @param [Hash, Types::UpdateEventConfigurationsRequest] params
    # @option params [Hash<String, Types::Configuration>] :event_configurations
    #   <p>The new event configuration values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_configurations: {
    #       "EventType" => {
    #         enabled: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEventConfigurationsResponse]
    def update_event_configurations(params = {}, options = {})
      request = build_request(:update_event_configurations, params)
      request.send_request(options)
    end

    # <p>Updates the data for a fleet metric.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateFleetMetric</a> action.</p>
    # @param [Hash, Types::UpdateFleetMetricRequest] params
    # @option params [String] :metric_name
    #   <p>The name of the fleet metric to update.</p>
    # @option params [String] :query_string
    #   <p>The search query string.</p>
    # @option params [Types::AggregationType] :aggregation_type
    #   <p>The type of the aggregation query.</p>
    # @option params [Integer] :period
    #   <p>The time in seconds between fleet metric emissions. Range [60(1 min), 86400(1 day)] and must be multiple of 60.</p>
    # @option params [String] :aggregation_field
    #   <p>The field to aggregate.</p>
    # @option params [String] :description
    #   <p>The description of the fleet metric.</p>
    # @option params [String] :query_version
    #   <p>The version of the query.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to search.</p>
    # @option params [String] :unit
    #   <p>Used to support unit transformation such as milliseconds to seconds. The unit must be
    #         supported by <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">CW metric</a>.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the fleet metric record in the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "FleetMetricName", # required
    #     query_string: "QueryString",
    #     aggregation_type: {
    #       name: "Statistics" # One of: ["Statistics", "Percentiles", "Cardinality"], # required
    #       values: ["AggregationTypeValue"]
    #     },
    #     period: 1,
    #     aggregation_field: "AggregationField",
    #     description: "FleetMetricDescription",
    #     query_version: "QueryVersion",
    #     index_name: "IndexName", # required
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.update_fleet_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_fleet_metric(params = {}, options = {})
      request = build_request(:update_fleet_metric, params)
      request.send_request(options)
    end

    # <p>Updates the search configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateIndexingConfiguration</a> action.</p>
    # @param [Hash, Types::UpdateIndexingConfigurationRequest] params
    # @option params [Types::ThingIndexingConfiguration] :thing_indexing_configuration
    #   <p>Thing indexing configuration.</p>
    # @option params [Types::ThingGroupIndexingConfiguration] :thing_group_indexing_configuration
    #   <p>Thing group indexing configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_indexing_configuration: {
    #       thing_indexing_mode: "OFF" # One of: ["OFF", "REGISTRY", "REGISTRY_AND_SHADOW"], # required
    #       thing_connectivity_indexing_mode: "OFF" # One of: ["OFF", "STATUS"],
    #       device_defender_indexing_mode: "OFF" # One of: ["OFF", "VIOLATIONS"],
    #       named_shadow_indexing_mode: "OFF" # One of: ["OFF", "ON"],
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       filter: {
    #         named_shadow_names: ["ShadowName"],
    #         geo_locations: [
    #           {
    #             name: "TargetFieldName",
    #             order: "LatLon" # One of: ["LatLon", "LonLat"]
    #           }
    #         ]
    #       }
    #     },
    #     thing_group_indexing_configuration: {
    #       thing_group_indexing_mode: "OFF" # One of: ["OFF", "ON"], # required
    #       managed_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ],
    #       custom_fields: [
    #         {
    #           name: "FieldName",
    #           type: "Number" # One of: ["Number", "String", "Boolean"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_indexing_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIndexingConfigurationResponse]
    def update_indexing_configuration(params = {}, options = {})
      request = build_request(:update_indexing_configuration, params)
      request.send_request(options)
    end

    # <p>Updates supported fields of the specified job.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateJob</a> action.</p>
    # @param [Hash, Types::UpdateJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the job to be updated.</p>
    # @option params [String] :description
    #   <p>A short text description of the job.</p>
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   <p>Configuration information for pre-signed S3 URLs.</p>
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   <p>Allows you to create a staged rollout of the job.</p>
    # @option params [Types::AbortConfig] :abort_config
    #   <p>Allows you to create criteria to abort a job.</p>
    # @option params [Types::TimeoutConfig] :timeout_config
    #   <p>Specifies the amount of time each device has to finish its execution of the job. The
    #               timer is started when the job execution status is set to <code>IN_PROGRESS</code>. If
    #               the job execution status is not set to another terminal state before the time expires,
    #               it will be automatically set to <code>TIMED_OUT</code>. </p>
    # @option params [String] :namespace_id
    #   <p>The namespace used to indicate that a job is a customer-managed job.</p>
    #            <p>When you specify a value for this parameter, Amazon Web Services IoT Core sends jobs notifications to
    #               MQTT topics that contain the value in the following format.</p>
    #            <p>
    #               <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    #            </p>
    #            <note>
    #               <p>The <code>namespaceId</code> feature is only supported by IoT Greengrass at this time. For
    #                   more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/setting-up.html">Setting up IoT Greengrass core devices.</a>
    #               </p>
    #            </note>
    # @option params [Types::JobExecutionsRetryConfig] :job_executions_retry_config
    #   <p>Allows you to create the criteria to retry a job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     description: "JobDescription",
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1
    #     },
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #       exponential_rate: {
    #         base_rate_per_minute: 1, # required
    #         increment_factor: 1.0, # required
    #         rate_increase_criteria: { # required
    #           number_of_notified_things: 1,
    #           number_of_succeeded_things: 1
    #         }
    #       }
    #     },
    #     abort_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"], # required
    #           action: "CANCEL" # One of: ["CANCEL"], # required
    #           threshold_percentage: 1.0, # required
    #           min_number_of_executed_things: 1, # required
    #         }
    #       ]
    #     },
    #     timeout_config: {
    #       in_progress_timeout_in_minutes: 1
    #     },
    #     namespace_id: "NamespaceId",
    #     job_executions_retry_config: {
    #       criteria_list: [ # required
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"], # required
    #           number_of_retries: 1, # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_job(params = {}, options = {})
      request = build_request(:update_job, params)
      request.send_request(options)
    end

    # <p>Updates the definition for the specified mitigation action.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateMitigationAction</a> action.</p>
    # @param [Hash, Types::UpdateMitigationActionRequest] params
    # @option params [String] :action_name
    #   <p>The friendly name for the mitigation action. You cannot change the name by using
    #           <code>UpdateMitigationAction</code>. Instead, you must delete and
    #         recreate the
    #         mitigation action with the new name.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that is used to apply the mitigation action.</p>
    # @option params [Types::MitigationActionParams] :action_params
    #   <p>Defines the type of action and the parameters for that action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action_name: "MitigationActionName", # required
    #     role_arn: "RoleArn",
    #     action_params: {
    #       update_device_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       update_ca_certificate_params: {
    #         action: "DEACTIVATE" # One of: ["DEACTIVATE"], # required
    #       },
    #       add_things_to_thing_group_params: {
    #         thing_group_names: ["ThingGroupName"], # required
    #         override_dynamic_groups: false
    #       },
    #       replace_default_policy_version_params: {
    #         template_name: "BLANK_POLICY" # One of: ["BLANK_POLICY"], # required
    #       },
    #       enable_io_t_logging_params: {
    #         role_arn_for_logging: "RoleArn", # required
    #         log_level: "DEBUG" # One of: ["DEBUG", "INFO", "ERROR", "WARN", "DISABLED"], # required
    #       },
    #       publish_finding_to_sns_params: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_mitigation_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     action_arn: "MitigationActionArn",
    #     action_id: "MitigationActionId"
    #   }
    # @return [Types::UpdateMitigationActionResponse]
    def update_mitigation_action(params = {}, options = {})
      request = build_request(:update_mitigation_action, params)
      request.send_request(options)
    end

    # <p>Updates the supported fields for a specific software package.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdatePackage</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> actions.</p>
    # @param [Hash, Types::UpdatePackageRequest] params
    # @option params [String] :package_name
    #   <p>The name of the target software package.</p>
    # @option params [String] :description
    #   <p>The package description.</p>
    # @option params [String] :default_version_name
    #   <p>The name of the default package version.</p>
    #            <p>
    #               <b>Note:</b> You cannot name a <code>defaultVersion</code>
    #          and set <code>unsetDefaultVersion</code> equal to <code>true</code> at the same time.</p>
    # @option params [Boolean] :unset_default_version
    #   <p>Indicates whether you want to remove the named default package version from the software package. 
    #         Set as <code>true</code> to remove the default package version. </p>
    #            <p>
    #               <b>Note:</b> You cannot name a <code>defaultVersion</code>
    #          and set <code>unsetDefaultVersion</code> equal to <code>true</code> at the same time.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     description: "ResourceDescription",
    #     default_version_name: "VersionName",
    #     unset_default_version: false,
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePackageResponse]
    def update_package(params = {}, options = {})
      request = build_request(:update_package, params)
      request.send_request(options)
    end

    # <p>Updates the software package configuration.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdatePackageConfiguration</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">iam:PassRole</a> actions.</p>
    # @param [Hash, Types::UpdatePackageConfigurationRequest] params
    # @option params [Types::VersionUpdateByJobsConfig] :version_update_by_jobs_config
    #   <p>Configuration to manage job's package version reporting. This updates the thing's reserved named shadow that the job targets.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     version_update_by_jobs_config: {
    #       enabled: false,
    #       role_arn: "RoleArn"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_package_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePackageConfigurationResponse]
    def update_package_configuration(params = {}, options = {})
      request = build_request(:update_package_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the supported fields for a specific package version.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdatePackageVersion</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetIndexingConfiguration</a> actions.</p>
    # @param [Hash, Types::UpdatePackageVersionRequest] params
    # @option params [String] :package_name
    #   <p>The name of the associated software package.</p>
    # @option params [String] :version_name
    #   <p>The name of the target package version.</p>
    # @option params [String] :description
    #   <p>The package version description.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Metadata that can be used to define a package version’s configuration. For example, the Amazon S3 file location, configuration options that are being sent to the device or fleet. </p>
    #            <p>
    #               <b>Note:</b> Attributes can be updated only when the package version
    #         is in a draft state.</p>
    #            <p>The combined size of all the attributes on a package version is limited to 3KB.</p>
    # @option params [Types::PackageVersionArtifact] :artifact
    #   <p>The various components that make up a software package version.</p>
    # @option params [String] :action
    #   <p>The status that the package version should be assigned. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle">Package version lifecycle</a>.</p>
    # @option params [String] :recipe
    #   <p>The inline job document associated with a software package version used for a quick job
    #            deployment.</p>
    # @option params [String] :client_token
    #   <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. 
    #         Don't reuse this client token if a new idempotent request is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     package_name: "PackageName", # required
    #     version_name: "VersionName", # required
    #     description: "ResourceDescription",
    #     attributes: {
    #       "ResourceAttributeKey" => "ResourceAttributeValue"
    #     },
    #     artifact: {
    #       s3_location: {
    #         bucket: "S3Bucket",
    #         key: "S3Key",
    #         version: "S3Version"
    #       }
    #     },
    #     action: "PUBLISH" # One of: ["PUBLISH", "DEPRECATE"],
    #     recipe: "PackageVersionRecipe",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdatePackageVersionResponse]
    def update_package_version(params = {}, options = {})
      request = build_request(:update_package_version, params)
      request.send_request(options)
    end

    # <p>Updates a provisioning template.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateProvisioningTemplate</a> action.</p>
    # @param [Hash, Types::UpdateProvisioningTemplateRequest] params
    # @option params [String] :template_name
    #   <p>The name of the provisioning template.</p>
    # @option params [String] :description
    #   <p>The description of the provisioning template.</p>
    # @option params [Boolean] :enabled
    #   <p>True to enable the provisioning template, otherwise false.</p>
    # @option params [Integer] :default_version_id
    #   <p>The ID of the default provisioning template version.</p>
    # @option params [String] :provisioning_role_arn
    #   <p>The ARN of the role associated with the provisioning template. This IoT role grants
    #            permission to provision a device.</p>
    # @option params [Types::ProvisioningHook] :pre_provisioning_hook
    #   <p>Updates the pre-provisioning hook template. Only supports template of type
    #               <code>FLEET_PROVISIONING</code>. For more information about provisioning template types,
    #            see <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_CreateProvisioningTemplate.html#iot-CreateProvisioningTemplate-request-type">type</a>.</p>
    # @option params [Boolean] :remove_pre_provisioning_hook
    #   <p>Removes pre-provisioning hook template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     template_name: "TemplateName", # required
    #     description: "TemplateDescription",
    #     enabled: false,
    #     default_version_id: 1,
    #     provisioning_role_arn: "RoleArn",
    #     pre_provisioning_hook: {
    #       payload_version: "PayloadVersion",
    #       target_arn: "TargetArn", # required
    #     },
    #     remove_pre_provisioning_hook: false
    #   }
    #   options = {}
    #   response = client.update_provisioning_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateProvisioningTemplateResponse]
    def update_provisioning_template(params = {}, options = {})
      request = build_request(:update_provisioning_template, params)
      request.send_request(options)
    end

    # <p>Updates a role alias.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateRoleAlias</a> action.</p>
    #          <important>
    #             <p>The value of <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateRoleAlias.html#iot-UpdateRoleAlias-request-credentialDurationSeconds">
    #                   <code>credentialDurationSeconds</code>
    #                </a> must be less than or equal to the
    #             maximum session duration of the IAM role that the role alias references. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-api.html#roles-modify_max-session-duration-api"> Modifying a role maximum session duration (Amazon Web Services API)</a> from the Amazon Web Services
    #             Identity and Access Management User Guide.</p>
    #          </important>
    # @param [Hash, Types::UpdateRoleAliasRequest] params
    # @option params [String] :role_alias
    #   <p>The role alias to update.</p>
    # @option params [String] :role_arn
    #   <p>The role ARN.</p>
    # @option params [Integer] :credential_duration_seconds
    #   <p>The number of seconds the credential will be valid.</p>
    #            <p>This value must be less than or equal to the maximum session duration of the IAM role
    #            that the role alias references.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn",
    #     credential_duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.update_role_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     role_alias: "RoleAlias",
    #     role_alias_arn: "RoleAliasArn"
    #   }
    # @return [Types::UpdateRoleAliasResponse]
    def update_role_alias(params = {}, options = {})
      request = build_request(:update_role_alias, params)
      request.send_request(options)
    end

    # <p>Updates a scheduled audit, including which checks are performed and
    #           how often the audit takes place.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateScheduledAudit</a> action.</p>
    # @param [Hash, Types::UpdateScheduledAuditRequest] params
    # @option params [String] :frequency
    #   <p>How often the scheduled audit takes
    #         place,
    #         either <code>DAILY</code>,
    #         <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
    #         system.</p>
    # @option params [String] :day_of_month
    #   <p>The day of the month on which the scheduled audit takes place.
    #         This
    #         can
    #         be <code>1</code> through <code>31</code> or <code>LAST</code>. This field is required if the <code>frequency</code> parameter is set to
    #               <code>MONTHLY</code>. If days 29-31 are specified, and the month does not have that many days, the audit
    #         takes place on the "LAST" day of the month.</p>
    # @option params [String] :day_of_week
    #   <p>The day of the week on which the scheduled audit takes place.
    #         This
    #         can
    #         be one of <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the
    #               "frequency" parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>
    # @option params [Array<String>] :target_check_names
    #   <p>Which checks are performed during the scheduled audit. Checks must be enabled 
    #               for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
    #               of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
    #               to select which checks are enabled.)</p>
    # @option params [String] :scheduled_audit_name
    #   <p>The name of the scheduled audit. (Max. 128 chars)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     frequency: "DAILY" # One of: ["DAILY", "WEEKLY", "BIWEEKLY", "MONTHLY"],
    #     day_of_month: "DayOfMonth",
    #     day_of_week: "SUN" # One of: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
    #     target_check_names: ["AuditCheckName"],
    #     scheduled_audit_name: "ScheduledAuditName", # required
    #   }
    #   options = {}
    #   response = client.update_scheduled_audit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_audit_arn: "ScheduledAuditArn"
    #   }
    # @return [Types::UpdateScheduledAuditResponse]
    def update_scheduled_audit(params = {}, options = {})
      request = build_request(:update_scheduled_audit, params)
      request.send_request(options)
    end

    # <p>Updates a Device Defender security profile.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateSecurityProfile</a> action.</p>
    # @param [Hash, Types::UpdateSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile you want to update.</p>
    # @option params [String] :security_profile_description
    #   <p>A description of the security profile.</p>
    # @option params [Array<Types::Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    # @option params [Hash<String, Types::AlertTarget>] :alert_targets
    #   <p>Where the alerts are sent. (Alerts are always sent to the console.)</p>
    # @option params [Array<String>] :additional_metrics_to_retain
    #   <p>
    #               <i>Please use
    #             <a>UpdateSecurityProfileRequest$additionalMetricsToRetainV2</a>
    #           instead.</i>
    #            </p>
    #            <p>A list of metrics
    #        whose data is retained (stored). By default, data is retained for any metric
    #         used in the profile's <code>behaviors</code>, but
    #         it is
    #         also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    # @option params [Array<Types::MetricToRetain>] :additional_metrics_to_retain_v2
    #   <p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>
    # @option params [Boolean] :delete_behaviors
    #   <p>If true, delete all <code>behaviors</code> defined for this security profile. 
    #           If any <code>behaviors</code> are defined in the current invocation, an exception occurs.</p>
    # @option params [Boolean] :delete_alert_targets
    #   <p>If true, delete all <code>alertTargets</code> defined for this security profile. 
    #           If any <code>alertTargets</code> are defined in the current invocation, an exception occurs.</p>
    # @option params [Boolean] :delete_additional_metrics_to_retain
    #   <p>If true, delete all <code>additionalMetricsToRetain</code> defined for this 
    #           security profile. If any <code>additionalMetricsToRetain</code> are defined in the current 
    #           invocation, an exception occurs.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the security profile. A new version is generated whenever
    #           the security profile is updated. If you specify a value that is different from the actual
    #           version, a <code>VersionConflictException</code> is thrown.</p>
    # @option params [Types::MetricsExportConfig] :metrics_export_config
    #   <p>Specifies the MQTT topic and role ARN required for metric export.</p>
    # @option params [Boolean] :delete_metrics_export_config
    #   <p>Set the value as true to delete metrics export related configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "SecurityProfileName", # required
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic"
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #           }
    #         },
    #         suppress_alerts: false,
    #         export_metric: false
    #       }
    #     ],
    #     alert_targets: {
    #       "AlertTargetType" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         export_metric: false
    #       }
    #     ],
    #     delete_behaviors: false,
    #     delete_alert_targets: false,
    #     delete_additional_metrics_to_retain: false,
    #     expected_version: 1,
    #     metrics_export_config: {
    #       mqtt_topic: "MqttTopic", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     delete_metrics_export_config: false
    #   }
    #   options = {}
    #   response = client.update_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_name: "SecurityProfileName",
    #     security_profile_arn: "SecurityProfileArn",
    #     security_profile_description: "SecurityProfileDescription",
    #     behaviors: [
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic"
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #           }
    #         },
    #         suppress_alerts: false,
    #         export_metric: false
    #       }
    #     ],
    #     alert_targets: {
    #       "AlertTargetType" => {
    #         alert_target_arn: "AlertTargetArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     additional_metrics_to_retain: ["BehaviorMetric"],
    #     additional_metrics_to_retain_v2: [
    #       {
    #         metric: "BehaviorMetric", # required
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         export_metric: false
    #       }
    #     ],
    #     version: 1,
    #     creation_date: Time.now,
    #     last_modified_date: Time.now,
    #     metrics_export_config: {
    #       mqtt_topic: "MqttTopic", # required
    #       role_arn: "RoleArn", # required
    #     }
    #   }
    # @return [Types::UpdateSecurityProfileResponse]
    def update_security_profile(params = {}, options = {})
      request = build_request(:update_security_profile, params)
      request.send_request(options)
    end

    # <p>Updates an existing stream. The stream version will be incremented by one.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateStream</a> action.</p>
    # @param [Hash, Types::UpdateStreamRequest] params
    # @option params [String] :stream_id
    #   <p>The stream ID.</p>
    # @option params [String] :description
    #   <p>The description of the stream.</p>
    # @option params [Array<Types::StreamFile>] :files
    #   <p>The files associated with the stream.</p>
    # @option params [String] :role_arn
    #   <p>An IAM role that allows the IoT service principal assumes to access your S3 files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket",
    #           key: "S3Key",
    #           version: "S3Version"
    #         }
    #       }
    #     ],
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stream_id: "StreamId",
    #     stream_arn: "StreamArn",
    #     description: "StreamDescription",
    #     stream_version: 1
    #   }
    # @return [Types::UpdateStreamResponse]
    def update_stream(params = {}, options = {})
      request = build_request(:update_stream, params)
      request.send_request(options)
    end

    # <p>Updates the data for a thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThing</a> action.</p>
    # @param [Hash, Types::UpdateThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing to update.</p>
    #            <p>You can't change a thing's name. To change a thing's name, you must create a
    #   			new thing, give it the new name, and then delete the old thing.</p>
    # @option params [String] :thing_type_name
    #   <p>The name of the thing type.</p>
    # @option params [Types::AttributePayload] :attribute_payload
    #   <p>A list of thing attributes, a JSON string containing name-value pairs. For
    #   			example:</p>
    #            <p>
    #               <code>{\"attributes\":{\"name1\":\"value2\"}}</code>
    #            </p>
    #            <p>This data is used to add new attributes or update existing attributes.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing record in the registry. If the version of the
    #   			record in the registry does not match the expected version specified in the request, the
    #   				<code>UpdateThing</code> request is rejected with a
    #   				<code>VersionConflictException</code>.</p>
    # @option params [Boolean] :remove_thing_type
    #   <p>Remove a thing type association. If <b>true</b>, the
    #   			association is removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue"
    #       },
    #       merge: false
    #     },
    #     expected_version: 1,
    #     remove_thing_type: false
    #   }
    #   options = {}
    #   response = client.update_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThingResponse]
    def update_thing(params = {}, options = {})
      request = build_request(:update_thing, params)
      request.send_request(options)
    end

    # <p>Update a thing group.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingGroup</a> action.</p>
    # @param [Hash, Types::UpdateThingGroupRequest] params
    # @option params [String] :thing_group_name
    #   <p>The thing group to update.</p>
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   <p>The thing group properties.</p>
    # @option params [Integer] :expected_version
    #   <p>The expected version of the thing group. If this does not match the version of the
    #   			thing group being updated, the update will fail.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: { # required
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         merge: false
    #       }
    #     },
    #     expected_version: 1
    #   }
    #   options = {}
    #   response = client.update_thing_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: 1
    #   }
    # @return [Types::UpdateThingGroupResponse]
    def update_thing_group(params = {}, options = {})
      request = build_request(:update_thing_group, params)
      request.send_request(options)
    end

    # <p>Updates the groups to which the thing belongs.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingGroupsForThing</a> action.</p>
    # @param [Hash, Types::UpdateThingGroupsForThingRequest] params
    # @option params [String] :thing_name
    #   <p>The thing whose group memberships will be updated.</p>
    # @option params [Array<String>] :thing_groups_to_add
    #   <p>The groups to which the thing will be added.</p>
    # @option params [Array<String>] :thing_groups_to_remove
    #   <p>The groups from which the thing will be removed.</p>
    # @option params [Boolean] :override_dynamic_groups
    #   <p>Override dynamic thing groups with static thing groups when 10-group limit is
    #   			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
    #   			dynamic thing groups, adding a thing to a static group removes the thing from the last
    #   			dynamic group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName",
    #     thing_groups_to_add: ["ThingGroupName"],
    #     thing_groups_to_remove: ["ThingGroupName"],
    #     override_dynamic_groups: false
    #   }
    #   options = {}
    #   response = client.update_thing_groups_for_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThingGroupsForThingResponse]
    def update_thing_groups_for_thing(params = {}, options = {})
      request = build_request(:update_thing_groups_for_thing, params)
      request.send_request(options)
    end

    # <p>Updates a thing type.</p>
    # @param [Hash, Types::UpdateThingTypeRequest] params
    # @option params [String] :thing_type_name
    #   <p>The name of a thing type.</p>
    # @option params [Types::ThingTypeProperties] :thing_type_properties
    #   <p>The ThingTypeProperties contains information about the thing type including: a thing type description,
    #   			and a list of searchable thing attribute names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_type_name: "ThingTypeName", # required
    #     thing_type_properties: {
    #       thing_type_description: "ThingTypeDescription",
    #       searchable_attributes: ["AttributeName"],
    #       mqtt5_configuration: {
    #         propagating_attributes: [
    #           {
    #             user_property_key: "UserPropertyKeyName",
    #             thing_attribute: "AttributeName",
    #             connection_attribute: "ConnectionAttributeName"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_thing_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThingTypeResponse]
    def update_thing_type(params = {}, options = {})
      request = build_request(:update_thing_type, params)
      request.send_request(options)
    end

    # <p>Updates a topic rule destination. You use this to change the status, endpoint URL, or
    #          confirmation URL of the destination.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateTopicRuleDestination</a> action.</p>
    # @param [Hash, Types::UpdateTopicRuleDestinationRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the topic rule destination.</p>
    # @option params [String] :status
    #   <p>The status of the topic rule destination. Valid values are:</p>
    #            <dl>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>A topic rule destination was created but has not been confirmed. You can set
    #                        <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #               <dt>ENABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is allowed. You can
    #                     set <code>status</code> to <code>DISABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>DISABLED</dt>
    #               <dd>
    #                  <p>Confirmation was completed, and traffic to this destination is not allowed. You
    #                     can set <code>status</code> to <code>ENABLED</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>.</p>
    #               </dd>
    #               <dt>ERROR</dt>
    #               <dd>
    #                  <p>Confirmation could not be completed, for example if the confirmation timed out.
    #                     You can call <code>GetTopicRuleDestination</code> for details about the error. You
    #                     can set <code>status</code> to <code>IN_PROGRESS</code> by calling
    #                        <code>UpdateTopicRuleDestination</code>. Calling
    #                        <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
    #                     be sent to your confirmation endpoint.</p>
    #               </dd>
    #            </dl>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AwsArn", # required
    #     status: "ENABLED" # One of: ["ENABLED", "IN_PROGRESS", "DISABLED", "ERROR", "DELETING"], # required
    #   }
    #   options = {}
    #   response = client.update_topic_rule_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTopicRuleDestinationResponse]
    def update_topic_rule_destination(params = {}, options = {})
      request = build_request(:update_topic_rule_destination, params)
      request.send_request(options)
    end

    # <p>Validates a Device Defender security profile behaviors specification.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ValidateSecurityProfileBehaviors</a> action.</p>
    # @param [Hash, Types::ValidateSecurityProfileBehaviorsRequest] params
    # @option params [Array<Types::Behavior>] :behaviors
    #   <p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     behaviors: [ # required
    #       {
    #         name: "BehaviorName", # required
    #         metric: "BehaviorMetric",
    #         metric_dimension: {
    #           dimension_name: "DimensionName", # required
    #           operator: "IN" # One of: ["IN", "NOT_IN"]
    #         },
    #         criteria: {
    #           comparison_operator: "less-than" # One of: ["less-than", "less-than-equals", "greater-than", "greater-than-equals", "in-cidr-set", "not-in-cidr-set", "in-port-set", "not-in-port-set", "in-set", "not-in-set"],
    #           value: {
    #             count: 1,
    #             cidrs: ["Cidr"],
    #             ports: [1],
    #             number: 1.0,
    #             numbers: [1.0],
    #             strings: ["stringValue"]
    #           },
    #           duration_seconds: 1,
    #           consecutive_datapoints_to_alarm: 1,
    #           consecutive_datapoints_to_clear: 1,
    #           statistical_threshold: {
    #             statistic: "EvaluationStatistic"
    #           },
    #           ml_detection_config: {
    #             confidence_level: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"], # required
    #           }
    #         },
    #         suppress_alerts: false,
    #         export_metric: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.validate_security_profile_behaviors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     valid: false,
    #     validation_errors: [
    #       {
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ValidateSecurityProfileBehaviorsResponse]
    def validate_security_profile_behaviors(params = {}, options = {})
      request = build_request(:validate_security_profile_behaviors, params)
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
      context[:gem_name] = 'aws-sdk-iot'
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
