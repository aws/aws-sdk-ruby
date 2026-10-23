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
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudhsm)

module Aws::CloudHSM
  # An API client for Aws::CloudHSM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudHsmFrontendService
    @identifier = :cloudhsm

    add_plugin(::Aws::CloudHSM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudHSM::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Adds or overwrites one or more tags for the specified AWS CloudHSM resource.</p>
    #          <p>Each tag consists of a key and a value. Tag keys must be unique to each
    #       resource.</p>
    # @param [Hash, Types::AddTagsToResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.</p>
    # @option params [Array<Types::Tag>] :tag_list
    #   <p>One or more tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags_to_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::AddTagsToResourceResponse]
    def add_tags_to_resource(params = {}, options = {})
      request = build_request(:add_tags_to_resource, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates a high-availability partition group. A high-availability partition group is a
    #       group of partitions that spans multiple physical HSMs.</p>
    # @param [Hash, Types::CreateHapgRequest] params
    # @option params [String] :label
    #   <p>The label of the new high-availability partition group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label: "Label", # required
    #   }
    #   options = {}
    #   response = client.create_hapg(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hapg_arn: "HapgArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::CreateHapgResponse]
    def create_hapg(params = {}, options = {})
      request = build_request(:create_hapg, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates an uninitialized HSM instance.</p>
    #          <p>There is an upfront fee charged for each HSM instance that you create with the
    #         <code>CreateHsm</code> operation. If you accidentally provision an HSM and want to request a
    #       refund, delete the instance using the <a>DeleteHsm</a> operation, go to the <a href="https://console.aws.amazon.com/support/home">AWS Support Center</a>, create a new case, and select
    #         <b>Account and Billing Support</b>.</p>
    #          <important>
    #             <p>It can take up to 20 minutes to create and provision an HSM. You can monitor the
    #         status of the HSM with the <a>DescribeHsm</a> operation. The HSM is ready to be
    #         initialized when the status changes to <code>RUNNING</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateHsmRequest] params
    # @option params [String] :subnet_id
    #   <p>The identifier of the subnet in your VPC in which to place the HSM.</p>
    # @option params [String] :ssh_key
    #   <p>The SSH public key to install on the HSM.</p>
    # @option params [String] :eni_ip
    #   <p>The IP address to assign to the HSM's ENI.</p>
    #            <p>If an IP address is not specified, an IP address will be randomly chosen from the CIDR
    #         range of the subnet.</p>
    # @option params [String] :iam_role_arn
    #   <p>The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your
    #         behalf.</p>
    # @option params [String] :external_id
    #   <p>The external ID from <code>IamRoleArn</code>, if present.</p>
    # @option params [String] :subscription_type
    #   <p>Specifies the type of subscription for the HSM.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PRODUCTION</b> - The HSM is being used in a production
    #             environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TRIAL</b> - The HSM is being used in a product
    #             trial.</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A user-defined token to ensure idempotence. Subsequent calls to this operation with the
    #         same token will be ignored.</p>
    # @option params [String] :syslog_ip
    #   <p>The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one
    #         syslog monitoring server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_id: "SubnetId", # required
    #     ssh_key: "SshKey", # required
    #     eni_ip: "IpAddress",
    #     iam_role_arn: "IamRoleArn", # required
    #     external_id: "ExternalId",
    #     subscription_type: "PRODUCTION" # One of: ["PRODUCTION"], # required
    #     client_token: "ClientToken",
    #     syslog_ip: "IpAddress"
    #   }
    #   options = {}
    #   response = client.create_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_arn: "HsmArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::CreateHsmResponse]
    def create_hsm(params = {}, options = {})
      request = build_request(:create_hsm, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Creates an HSM client.</p>
    # @param [Hash, Types::CreateLunaClientRequest] params
    # @option params [String] :label
    #   <p>The label for the client.</p>
    # @option params [String] :certificate
    #   <p>The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used
    #         by this client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     label: "ClientLabel",
    #     certificate: "Certificate", # required
    #   }
    #   options = {}
    #   response = client.create_luna_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_arn: "ClientArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::CreateLunaClientResponse]
    def create_luna_client(params = {}, options = {})
      request = build_request(:create_luna_client, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes a high-availability partition group.</p>
    # @param [Hash, Types::DeleteHapgRequest] params
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hapg_arn: "HapgArn", # required
    #   }
    #   options = {}
    #   response = client.delete_hapg(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DeleteHapgResponse]
    def delete_hapg(params = {}, options = {})
      request = build_request(:delete_hapg, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes an HSM. After completion, this operation cannot be undone and your key material
    #       cannot be recovered.</p>
    # @param [Hash, Types::DeleteHsmRequest] params
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_arn: "HsmArn", # required
    #   }
    #   options = {}
    #   response = client.delete_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DeleteHsmResponse]
    def delete_hsm(params = {}, options = {})
      request = build_request(:delete_hsm, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Deletes a client.</p>
    # @param [Hash, Types::DeleteLunaClientRequest] params
    # @option params [String] :client_arn
    #   <p>The ARN of the client to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_arn: "ClientArn", # required
    #   }
    #   options = {}
    #   response = client.delete_luna_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DeleteLunaClientResponse]
    def delete_luna_client(params = {}, options = {})
      request = build_request(:delete_luna_client, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about a high-availability partition group.</p>
    # @param [Hash, Types::DescribeHapgRequest] params
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hapg_arn: "HapgArn", # required
    #   }
    #   options = {}
    #   response = client.describe_hapg(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hapg_arn: "HapgArn",
    #     hapg_serial: "String",
    #     hsms_last_action_failed: ["HsmArn"],
    #     hsms_pending_deletion: ["HsmArn"],
    #     hsms_pending_registration: ["HsmArn"],
    #     label: "Label",
    #     last_modified_timestamp: "Timestamp",
    #     partition_serial_list: ["PartitionSerial"],
    #     state: "READY" # One of: ["READY", "UPDATING", "DEGRADED"]
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DescribeHapgResponse]
    def describe_hapg(params = {}, options = {})
      request = build_request(:describe_hapg, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about an HSM. You can identify the HSM by its ARN or its serial
    #       number.</p>
    # @param [Hash, Types::DescribeHsmRequest] params
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM. Either the <code>HsmArn</code> or the <code>SerialNumber</code>
    #         parameter must be specified.</p>
    # @option params [String] :hsm_serial_number
    #   <p>The serial number of the HSM. Either the <code>HsmArn</code> or the
    #           <code>HsmSerialNumber</code> parameter must be specified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_arn: "HsmArn",
    #     hsm_serial_number: "HsmSerialNumber"
    #   }
    #   options = {}
    #   response = client.describe_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_arn: "HsmArn",
    #     status: "PENDING" # One of: ["PENDING", "RUNNING", "UPDATING", "SUSPENDED", "TERMINATING", "TERMINATED", "DEGRADED"],
    #     status_details: "String",
    #     availability_zone: "AZ",
    #     eni_id: "EniId",
    #     eni_ip: "IpAddress",
    #     subscription_type: "PRODUCTION" # One of: ["PRODUCTION"],
    #     subscription_start_date: "Timestamp",
    #     subscription_end_date: "Timestamp",
    #     vpc_id: "VpcId",
    #     subnet_id: "SubnetId",
    #     iam_role_arn: "IamRoleArn",
    #     serial_number: "HsmSerialNumber",
    #     vendor_name: "String",
    #     hsm_type: "String",
    #     software_version: "String",
    #     ssh_public_key: "SshKey",
    #     ssh_key_last_updated: "Timestamp",
    #     server_cert_uri: "String",
    #     server_cert_last_updated: "Timestamp",
    #     partitions: ["PartitionArn"]
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DescribeHsmResponse]
    def describe_hsm(params = {}, options = {})
      request = build_request(:describe_hsm, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves information about an HSM client.</p>
    # @param [Hash, Types::DescribeLunaClientRequest] params
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    # @option params [String] :certificate_fingerprint
    #   <p>The certificate fingerprint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_arn: "ClientArn",
    #     certificate_fingerprint: "CertificateFingerprint"
    #   }
    #   options = {}
    #   response = client.describe_luna_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_arn: "ClientArn",
    #     certificate: "Certificate",
    #     certificate_fingerprint: "CertificateFingerprint",
    #     last_modified_timestamp: "Timestamp",
    #     label: "Label"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::DescribeLunaClientResponse]
    def describe_luna_client(params = {}, options = {})
      request = build_request(:describe_luna_client, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Gets the configuration files necessary to connect to all high availability partition
    #       groups the client is associated with.</p>
    # @param [Hash, Types::GetConfigRequest] params
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    # @option params [String] :client_version
    #   <p>The client version.</p>
    # @option params [Array<String>] :hapg_list
    #   <p>A list of ARNs that identify the high-availability partition groups that are associated
    #         with the client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_arn: "ClientArn", # required
    #     client_version: "5.1" # One of: ["5.1", "5.3"], # required
    #     hapg_list: ["HapgArn"], # required
    #   }
    #   options = {}
    #   response = client.get_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     config_type: "String",
    #     config_file: "String",
    #     config_cred: "String"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::GetConfigResponse]
    def get_config(params = {}, options = {})
      request = build_request(:get_config, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists the Availability Zones that have available AWS CloudHSM capacity.</p>
    # @param [Hash, Types::ListAvailableZonesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_available_zones(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     az_list: ["AZ"]
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ListAvailableZonesResponse]
    def list_available_zones(params = {}, options = {})
      request = build_request(:list_available_zones, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists the high-availability partition groups for the account.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListHapgs</code> to retrieve the next set of
    #       items.</p>
    # @param [Hash, Types::ListHapgsRequest] params
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHapgs</code>. Pass
    #         null if this is the first call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_hapgs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hapg_list: ["HapgArn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ListHapgsResponse]
    def list_hapgs(params = {}, options = {})
      request = build_request(:list_hapgs, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Retrieves the identifiers of all of the HSMs provisioned for the current
    #       customer.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListHsms</code> to retrieve the next set of
    #       items.</p>
    # @param [Hash, Types::ListHsmsRequest] params
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListHsms</code>. Pass
    #         null if this is the first call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_hsms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_list: ["HsmArn"],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ListHsmsResponse]
    def list_hsms(params = {}, options = {})
      request = build_request(:list_hsms, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Lists all of the clients.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> member.
    #       If more results are available, the <code>NextToken</code> member of the response contains a
    #       token that you pass in the next call to <code>ListLunaClients</code> to retrieve the next set
    #       of items.</p>
    # @param [Hash, Types::ListLunaClientsRequest] params
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value from a previous call to <code>ListLunaClients</code>.
    #         Pass null if this is the first call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_luna_clients(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_list: ["ClientArn"], # required
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ListLunaClientsResponse]
    def list_luna_clients(params = {}, options = {})
      request = build_request(:list_luna_clients, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Returns a list of all tags for the specified AWS CloudHSM resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies an existing high-availability partition group.</p>
    # @param [Hash, Types::ModifyHapgRequest] params
    # @option params [String] :hapg_arn
    #   <p>The ARN of the high-availability partition group to modify.</p>
    # @option params [String] :label
    #   <p>The new label for the high-availability partition group.</p>
    # @option params [Array<String>] :partition_serial_list
    #   <p>The list of partition serial numbers to make members of the high-availability partition
    #         group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hapg_arn: "HapgArn", # required
    #     label: "Label",
    #     partition_serial_list: ["PartitionSerial"]
    #   }
    #   options = {}
    #   response = client.modify_hapg(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hapg_arn: "HapgArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ModifyHapgResponse]
    def modify_hapg(params = {}, options = {})
      request = build_request(:modify_hapg, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies an HSM.</p>
    #          <important>
    #             <p>This operation can result in the HSM being offline for up to 15 minutes while the AWS
    #         CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure
    #         that your AWS CloudHSM service is configured for high availability, and consider executing this
    #         operation during a maintenance window.</p>
    #          </important>
    # @param [Hash, Types::ModifyHsmRequest] params
    # @option params [String] :hsm_arn
    #   <p>The ARN of the HSM to modify.</p>
    # @option params [String] :subnet_id
    #   <p>The new identifier of the subnet that the HSM is in. The new subnet must be in the same
    #         Availability Zone as the current subnet.</p>
    # @option params [String] :eni_ip
    #   <p>The new IP address for the elastic network interface (ENI) attached to the
    #         HSM.</p>
    #            <p>If the HSM is moved to a different subnet, and an IP address is not specified, an IP
    #         address will be randomly chosen from the CIDR range of the new subnet.</p>
    # @option params [String] :iam_role_arn
    #   <p>The new IAM role ARN.</p>
    # @option params [String] :external_id
    #   <p>The new external ID.</p>
    # @option params [String] :syslog_ip
    #   <p>The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports
    #         one syslog monitoring server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hsm_arn: "HsmArn", # required
    #     subnet_id: "SubnetId",
    #     eni_ip: "IpAddress",
    #     iam_role_arn: "IamRoleArn",
    #     external_id: "ExternalId",
    #     syslog_ip: "IpAddress"
    #   }
    #   options = {}
    #   response = client.modify_hsm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hsm_arn: "HsmArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ModifyHsmResponse]
    def modify_hsm(params = {}, options = {})
      request = build_request(:modify_hsm, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Modifies the certificate used by the client.</p>
    #          <p>This action can potentially start a workflow to install the new certificate on the
    #       client's HSMs.</p>
    # @param [Hash, Types::ModifyLunaClientRequest] params
    # @option params [String] :client_arn
    #   <p>The ARN of the client.</p>
    # @option params [String] :certificate
    #   <p>The new certificate for the client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_arn: "ClientArn", # required
    #     certificate: "Certificate", # required
    #   }
    #   options = {}
    #   response = client.modify_luna_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_arn: "ClientArn"
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::ModifyLunaClientResponse]
    def modify_luna_client(params = {}, options = {})
      request = build_request(:modify_luna_client, params)
      request.send_request(options)
    end

    # <p>This is documentation for <b>AWS CloudHSM Classic</b>. For
    #       more information, see <a href="http://aws.amazon.com/cloudhsm/faqs-classic/">AWS CloudHSM
    #       Classic FAQs</a>, the <a href="https://docs.aws.amazon.com/cloudhsm/classic/userguide/">AWS
    #       CloudHSM Classic User Guide</a>, and the <a href="https://docs.aws.amazon.com/cloudhsm/classic/APIReference/">AWS CloudHSM Classic API Reference</a>.</p>
    #          <p>
    #             <b>For information about the current version of AWS
    #       CloudHSM</b>, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a>, the
    #       <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>,
    #       and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/">AWS CloudHSM API
    #       Reference</a>.</p>
    #          <p>Removes one or more tags from the specified AWS CloudHSM resource.</p>
    #          <p>To remove a tag, specify only the tag key to remove (not the value). To overwrite the
    #       value for an existing tag, use <a>AddTagsToResource</a>.</p>
    # @param [Hash, Types::RemoveTagsFromResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS CloudHSM resource.</p>
    # @option params [Array<String>] :tag_key_list
    #   <p>The tag key or keys to remove.</p>
    #            <p>Specify only the tag key to remove (not the value). To overwrite the value for an
    #         existing tag, use <a>AddTagsToResource</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_key_list: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags_from_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #   }
    # @deprecated
    #   This API is deprecated.
    # @return [Types::RemoveTagsFromResourceResponse]
    def remove_tags_from_resource(params = {}, options = {})
      request = build_request(:remove_tags_from_resource, params)
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
      context[:gem_name] = 'aws-sdk-cloudhsm'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
