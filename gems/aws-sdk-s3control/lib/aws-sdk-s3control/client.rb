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
require 'aws-sdk-s3control/plugins/host_id'
require 'aws-sdk-s3control/plugins/use_arn_region'
require 'aws-sdk-core/rest_xml'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:s3control)

module Aws::S3Control
  # An API client for Aws::S3Control.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSS3ControlServiceV20180820
    @identifier = :s3control

    add_plugin(::Aws::S3Control::Plugins::Endpoint)
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
    add_plugin(Aws::S3Control::Plugins::HostId)
    add_plugin(Aws::S3Control::Plugins::UseArnRegion)

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::S3Control::EndpointProvider)
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
    #  Supported protocols: +:rest_xml+ (defaults to +:rest_xml+).
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
    # @option options [Boolean] :s3_use_arn_region (true)
    #  For S3 ARNs passed into the `:bucket` or `:name` parameter, this option will use the region in the ARN,
    #  allowing for cross-region requests to be made. Set to `false` to use the client's region instead.
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

    # <p>Associate your S3 Access Grants instance with an Amazon Web Services IAM Identity Center instance. Use this
    #          action if you want to create access grants for users or groups from your corporate identity
    #          directory. First, you must add your corporate identity directory to Amazon Web Services IAM Identity
    #          Center. Then, you can associate this IAM Identity Center instance with your S3 Access Grants
    #          instance.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:AssociateAccessGrantsIdentityCenter</code>
    #                   permission to use this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>You must also have the following permissions:
    #                      <code>sso:CreateApplication</code>, <code>sso:PutApplicationGrant</code>, and
    #                      <code>sso:PutApplicationAuthenticationMethod</code>. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::AssociateAccessGrantsIdentityCenterRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :identity_center_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity Center instance that you are
    #            associating with your S3 Access Grants instance. An IAM Identity Center instance is your corporate
    #            identity directory that you added to the IAM Identity Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API operation to retrieve a list of your Identity Center
    #            instances and their ARNs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     identity_center_arn: "IdentityCenterArn", # required
    #   }
    #   options = {}
    #   response = client.associate_access_grants_identity_center(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_access_grants_identity_center(params = {}, options = {})
      request = build_request(:associate_access_grants_identity_center, params)
      request.send_request(options)
    end

    # <p>Creates an access grant that gives a grantee access to your S3 data. The grantee can be
    #          an IAM user or role or a directory user, or group. Before you can create a grant, you
    #          must have an S3 Access Grants instance in the same Region as the S3 data. You can create an S3 Access Grants
    #          instance using the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsInstance.html">CreateAccessGrantsInstance</a>. You must also have registered at least one S3 data
    #          location in your S3 Access Grants instance using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessGrantsLocation.html">CreateAccessGrantsLocation</a>. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:CreateAccessGrant</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>For any directory identity - <code>sso:DescribeInstance</code> and
    #                      <code>sso:DescribeApplication</code>
    #                </p>
    #                <p>For directory users - <code>identitystore:DescribeUser</code>
    #                </p>
    #                <p>For directory groups - <code>identitystore:DescribeGroup</code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessGrantRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grants_location_id
    #   <p>The ID of the registered location to which you are granting access. S3 Access Grants assigns this
    #            ID when you register the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #            <p>If you are passing the <code>default</code> location, you cannot create an access grant
    #            for the entire default location. You must also specify a bucket or a bucket and prefix in
    #            the <code>Subprefix</code> field. </p>
    # @option params [Types::AccessGrantsLocationConfiguration] :access_grants_location_configuration
    #   <p>The configuration options of the grant location. The grant location is the S3 path to
    #            the data to which you are granting access. It contains the <code>S3SubPrefix</code> field.
    #            The grant scope is the result of appending the subprefix to the location scope of the
    #            registered location.</p>
    # @option params [Types::Grantee] :grantee
    #   <p>The user, group, or role to which you are granting access. You can grant access to an
    #            IAM user or role. If you have added your corporate directory to Amazon Web Services IAM Identity
    #            Center and associated your Identity Center instance with your S3 Access Grants instance, the grantee
    #            can also be a corporate directory user or group.</p>
    # @option params [String] :permission
    #   <p>The type of access that you are granting to your S3 data, which can be set to one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    # @option params [String] :application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If an application ARN is included in the request to
    #            create an access grant, the grantee can only access the S3 data through this application.
    #         </p>
    # @option params [String] :s3_prefix_type
    #   <p>The type of <code>S3SubPrefix</code>. The only possible value is <code>Object</code>.
    #            Pass this value if the access grant scope is an object. Do not pass this value if the
    #            access grant scope is a bucket or a bucket and a prefix. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The Amazon Web Services resource tags that you are adding to the access grant. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grants_location_id: "AccessGrantsLocationId", # required
    #     access_grants_location_configuration: {
    #       s3_sub_prefix: "S3Prefix"
    #     },
    #     grantee: { # required
    #       grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #       grantee_identifier: "GranteeIdentifier"
    #     },
    #     permission: "READ" # One of: ["READ", "WRITE", "READWRITE"], # required
    #     application_arn: "IdentityCenterApplicationArn",
    #     s3_prefix_type: "Object" # One of: ["Object"],
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grant_id: "AccessGrantId",
    #     access_grant_arn: "AccessGrantArn",
    #     grantee: {
    #       grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #       grantee_identifier: "GranteeIdentifier"
    #     },
    #     access_grants_location_id: "AccessGrantsLocationId",
    #     access_grants_location_configuration: {
    #       s3_sub_prefix: "S3Prefix"
    #     },
    #     permission: "READ" # One of: ["READ", "WRITE", "READWRITE"],
    #     application_arn: "IdentityCenterApplicationArn",
    #     grant_scope: "S3Prefix"
    #   }
    # @return [Types::CreateAccessGrantResult]
    def create_access_grant(params = {}, options = {})
      request = build_request(:create_access_grant, params)
      request.send_request(options)
    end

    # <p>Creates an S3 Access Grants instance, which serves as a logical grouping for access grants. You
    #          can create one S3 Access Grants instance per Region per account. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:CreateAccessGrantsInstance</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>To associate an IAM Identity Center instance with your S3 Access Grants instance, you
    #                   must also have the <code>sso:DescribeInstance</code>,
    #                      <code>sso:CreateApplication</code>, <code>sso:PutApplicationGrant</code>, and
    #                      <code>sso:PutApplicationAuthenticationMethod</code> permissions. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessGrantsInstanceRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :identity_center_arn
    #   <p>If you would like to associate your S3 Access Grants instance with an Amazon Web Services IAM Identity Center
    #            instance, use this field to pass the Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity
    #            Center instance that you are associating with your S3 Access Grants instance. An IAM Identity
    #            Center instance is your corporate identity directory that you added to the IAM Identity
    #            Center. You can use the <a href="https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html">ListInstances</a> API
    #            operation to retrieve a list of your Identity Center instances and their ARNs. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The Amazon Web Services resource tags that you are adding to the S3 Access Grants instance. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     identity_center_arn: "IdentityCenterArn",
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_access_grants_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grants_instance_id: "AccessGrantsInstanceId",
    #     access_grants_instance_arn: "AccessGrantsInstanceArn",
    #     identity_center_arn: "IdentityCenterArn",
    #     identity_center_instance_arn: "IdentityCenterArn",
    #     identity_center_application_arn: "IdentityCenterApplicationArn"
    #   }
    # @return [Types::CreateAccessGrantsInstanceResult]
    def create_access_grants_instance(params = {}, options = {})
      request = build_request(:create_access_grants_instance, params)
      request.send_request(options)
    end

    # <p>The S3 data location that you would like to register in your S3 Access Grants instance. Your S3
    #          data must be in the same Region as your S3 Access Grants instance. The location can be one of the
    #          following: </p>
    #          <ul>
    #             <li>
    #                <p>The default S3 location <code>s3://</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A bucket - <code>S3://<bucket-name></code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A bucket and prefix - <code>S3://<bucket-name>/<prefix></code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>When you register a location, you must include the IAM role that has permission to
    #          manage the S3 location that you are registering. Give S3 Access Grants permission to assume this role
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-location.html">using a policy</a>. S3 Access Grants assumes this role to manage access to the location and
    #          to vend temporary credentials to grantees or client applications. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:CreateAccessGrantsLocation</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>You must also have the following permission for the specified IAM role:
    #                      <code>iam:PassRole</code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessGrantsLocationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :location_scope
    #   <p>The S3 path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket
    #               <code>s3://<bucket></code>, or the S3 path to a bucket and prefix
    #               <code>s3://<bucket>/<prefix></code>. A prefix in S3 is a string of
    #            characters at the beginning of an object key name used to organize the objects that you
    #            store in your S3 buckets. For example, object key names that start with the
    #               <code>engineering/</code> prefix or object key names that start with the
    #               <code>marketing/campaigns/</code> prefix.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The Amazon Web Services resource tags that you are adding to the S3 Access Grants location. Each tag is a label
    #            consisting of a user-defined key and value. Tags can help you manage, identify, organize,
    #            search for, and filter resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     location_scope: "S3Prefix", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_access_grants_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grants_location_id: "AccessGrantsLocationId",
    #     access_grants_location_arn: "AccessGrantsLocationArn",
    #     location_scope: "S3Prefix",
    #     iam_role_arn: "IAMRoleArn"
    #   }
    # @return [Types::CreateAccessGrantsLocationResult]
    def create_access_grants_location(params = {}, options = {})
      request = build_request(:create_access_grants_location, params)
      request.send_request(options)
    end

    # <p>Creates an access point and associates it to a specified bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing
    #             access to shared datasets with access points</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to
    #             shared datasets in directory buckets with access points</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>To create an access point and attach it to a volume on an Amazon FSx file system, see <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateAndAttachS3AccessPoint.html">CreateAndAttachS3AccessPoint</a> in the <i>Amazon FSx API
    #          Reference</i>.</p>
    #          <p></p>
    #          <note>
    #             <p>S3 on Outposts only supports VPC-style access points. </p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html"> Accessing Amazon S3 on Outposts using
    #                virtual private cloud (VPC) only access points</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples">Examples</a> section.</p>
    #          <p></p>
    #          <p>The following actions are related to <code>CreateAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForDirectoryBuckets.html">ListAccessPointsForDirectoryBuckets</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name you want to assign to this access point.</p>
    #            <p>For directory buckets, the access point name must consist of a base name that you provide and
    #            suffix that includes the <code>ZoneID</code> (Amazon Web Services Availability Zone or Local Zone) of your bucket location,
    #            followed by <code>--xa-s3</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to shared datasets in directory buckets with
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @option params [String] :bucket
    #   <p>The name of the bucket that you want to associate this access point with.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>If you include this field, Amazon S3 restricts access to this access point to requests from the
    #            specified virtual private cloud (VPC).</p>
    #            <note>
    #               <p>This is required for creating an access point for Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [Types::PublicAccessBlockConfiguration] :public_access_block_configuration
    #   <p> The <code>PublicAccessBlock</code> configuration that you want to apply to the access point.
    #         </p>
    # @option params [String] :bucket_account_id
    #   <p>The Amazon Web Services account ID associated with the S3 bucket associated with this access point.</p>
    #            <p>For same account access point when your bucket and access point belong to the same account owner, the
    #               <code>BucketAccountId</code> is not required. For cross-account access point when your bucket
    #            and access point are not in the same account, the <code>BucketAccountId</code> is required. </p>
    # @option params [Types::Scope] :scope
    #   <p>For directory buckets, you can filter access control to specific prefixes, API
    #            operations, or a combination of both. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to shared datasets in directory buckets with
    #               access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Scope is only supported for access points attached to directory buckets.</p>
    #            </note>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags that you can apply to an access point. Tags are key-value pairs of metadata used to control access to your access points. For more information about tags, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Using tags with Amazon S3</a>. For information about tagging access points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#using-tags-for-abac">Using tags for attribute-based access control (ABAC)</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>You must have the <code>s3:TagResource</code> permission to create an access point with tags for a general purpose bucket. </p>
    #                  </li>
    #                  <li>
    #                     <p>You must have the <code>s3express:TagResource</code> permission to create an access point with tags for a directory bucket.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #     bucket: "BucketName", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #     },
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     },
    #     bucket_account_id: "AccountId",
    #     scope: {
    #       prefixes: ["Prefix"],
    #       permissions: ["GetObject" # One of: ["GetObject", "GetObjectAttributes", "ListMultipartUploadParts", "ListBucket", "ListBucketMultipartUploads", "PutObject", "DeleteObject", "AbortMultipartUpload"]]
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_point_arn: "S3AccessPointArn",
    #     alias: "Alias"
    #   }
    # @return [Types::CreateAccessPointResult]
    def create_access_point(params = {}, options = {})
      request = build_request(:create_access_point, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates an Object Lambda Access Point. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html">Transforming objects with
    #             Object Lambda Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>CreateAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateAccessPointForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for owner of the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name you want to assign to this Object Lambda Access Point.</p>
    # @option params [Types::ObjectLambdaConfiguration] :configuration
    #   <p>Object Lambda Access Point configuration as a JSON document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     configuration: { # required
    #       supporting_access_point: "ObjectLambdaSupportingAccessPointArn", # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: ["GetObject-Range" # One of: ["GetObject-Range", "GetObject-PartNumber", "HeadObject-Range", "HeadObject-PartNumber"]],
    #       transformation_configurations: [ # required
    #         {
    #           actions: ["GetObject" # One of: ["GetObject", "HeadObject", "ListObjects", "ListObjectsV2"]], # required
    #           content_transformation: { # required
    #             # One of:
    #             aws_lambda: {
    #               function_arn: "FunctionArnString", # required
    #               function_payload: "AwsLambdaTransformationPayload"
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_access_point_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_lambda_access_point_arn: "ObjectLambdaAccessPointArn",
    #     alias: {
    #       value: "ObjectLambdaAccessPointAliasValue",
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "READY"]
    #     }
    #   }
    # @return [Types::CreateAccessPointForObjectLambdaResult]
    def create_access_point_for_object_lambda(params = {}, options = {})
      request = build_request(:create_access_point_for_object_lambda, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action creates an Amazon S3 on Outposts bucket. To create an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html">Create
    #                Bucket</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Creates a new Outposts bucket. By creating the bucket, you become the bucket owner. To
    #          create an Outposts bucket, you must have S3 on Outposts. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #          <p>Not every string is an acceptable bucket name. For information on bucket naming
    #          restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules">Working with
    #             Amazon S3 Buckets</a>.</p>
    #          <p>S3 on Outposts buckets support:</p>
    #          <ul>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>LifecycleConfigurations for deleting expired objects</p>
    #             </li>
    #          </ul>
    #          <p>For a complete list of restrictions and Amazon S3 feature limitations on S3 on Outposts, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html">
    #             Amazon S3 on Outposts Restrictions and Limitations</a>.</p>
    #          <p>For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
    #          endpoint hostname prefix and <code>x-amz-outpost-id</code> in your API request, see the
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>CreateBucket</code> for
    #          Amazon S3 on Outposts:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html">GetBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateBucketRequest] params
    # @option params [String] :acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :bucket
    #   <p>The name of the bucket.</p>
    # @option params [Types::CreateBucketConfiguration] :create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the
    #            bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :grant_write
    #   <p>Allows grantee to create, overwrite, and delete any object in the bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [Boolean] :object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts where the bucket is being created.</p>
    #            <note>
    #               <p>This ID is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     acl: "private" # One of: ["private", "public-read", "public-read-write", "authenticated-read"],
    #     bucket: "BucketName", # required
    #     create_bucket_configuration: {
    #       location_constraint: "EU" # One of: ["EU", "eu-west-1", "us-west-1", "us-west-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "sa-east-1", "cn-north-1", "eu-central-1"]
    #     },
    #     grant_full_control: "GrantFullControl",
    #     grant_read: "GrantRead",
    #     grant_read_acp: "GrantReadACP",
    #     grant_write: "GrantWrite",
    #     grant_write_acp: "GrantWriteACP",
    #     object_lock_enabled_for_bucket: false,
    #     outpost_id: "NonEmptyMaxLength64String"
    #   }
    #   options = {}
    #   response = client.create_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location: "Location",
    #     bucket_arn: "S3RegionalBucketArn"
    #   }
    # @return [Types::CreateBucketResult]
    def create_bucket(params = {}, options = {})
      request = build_request(:create_bucket, params)
      request.send_request(options)
    end

    # <p>This operation creates an S3 Batch Operations job.</p>
    #          <p>You can use S3 Batch Operations to perform large-scale batch actions on Amazon S3 objects.
    #          Batch Operations can run a single action on lists of Amazon S3 objects that you specify. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>For information about permissions required to use the Batch Operations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops-iam-role-policies.html">Granting
    #                      permissions for S3 Batch Operations</a> in the <i>Amazon S3 User
    #                      Guide</i>.</p>
    #             </dd>
    #          </dl>
    #          <p></p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html">JobOperation</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateJobRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that creates the job.</p>
    # @option params [Boolean] :confirmation_required
    #   <p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is
    #            only required for jobs created through the Amazon S3 console.</p>
    # @option params [Types::JobOperation] :operation
    #   <p>The action that you want this job to perform on every object listed in the manifest. For
    #            more information about the available actions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html">Operations</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    # @option params [Types::JobReport] :report
    #   <p>Configuration parameters for the optional job-completion report.</p>
    # @option params [String] :client_request_token
    #   <p>An idempotency token to ensure that you don't accidentally submit the same request
    #            twice. You can use any string up to the maximum length.</p>
    # @option params [Types::JobManifest] :manifest
    #   <p>Configuration parameters for the manifest.</p>
    # @option params [String] :description
    #   <p>A description for this job. You can use any string within the permitted length.
    #            Descriptions don't need to be unique and can be used for multiple jobs.</p>
    # @option params [Integer] :priority
    #   <p>The numerical priority for this job. Higher numbers indicate higher priority.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) for the Identity and Access Management (IAM) role that Batch Operations will
    #            use to run this job's action on every object in the manifest.</p>
    # @option params [Array<Types::S3Tag>] :tags
    #   <p>A set of tags to associate with the S3 Batch Operations job. This is an optional parameter.
    #         </p>
    # @option params [Types::JobManifestGenerator] :manifest_generator
    #   <p>The attribute container for the ManifestGenerator details. Jobs must be created with
    #            either a manifest file or a ManifestGenerator, but not both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     confirmation_required: false,
    #     operation: { # required
    #       lambda_invoke: {
    #         function_arn: "FunctionArnString",
    #         invocation_schema_version: "NonEmptyMaxLength64String",
    #         user_arguments: {
    #           "NonEmptyMaxLength64String" => "MaxLength1024String"
    #         }
    #       },
    #       s3_put_object_copy: {
    #         target_resource: "S3RegionalOrS3ExpressBucketArnString",
    #         canned_access_control_list: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"],
    #         access_control_grants: [
    #           {
    #             grantee: {
    #               type_identifier: "id" # One of: ["id", "emailAddress", "uri"],
    #               identifier: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String"
    #             },
    #             permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #           }
    #         ],
    #         metadata_directive: "COPY" # One of: ["COPY", "REPLACE"],
    #         modified_since_constraint: Time.now,
    #         new_object_metadata: {
    #           cache_control: "NonEmptyMaxLength1024String",
    #           content_disposition: "NonEmptyMaxLength1024String",
    #           content_encoding: "NonEmptyMaxLength1024String",
    #           content_language: "NonEmptyMaxLength1024String",
    #           user_metadata: {
    #             "NonEmptyMaxLength1024String" => "MaxLength1024String"
    #           },
    #           content_length: 1,
    #           content_md5: "NonEmptyMaxLength1024String",
    #           content_type: "NonEmptyMaxLength1024String",
    #           http_expires_date: Time.now,
    #           requester_charged: false,
    #           sse_algorithm: "AES256" # One of: ["AES256", "KMS"]
    #         },
    #         new_object_tagging: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           }
    #         ],
    #         redirect_location: "NonEmptyMaxLength2048String",
    #         requester_pays: false,
    #         storage_class: "STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"],
    #         un_modified_since_constraint: Time.now,
    #         sse_aws_kms_key_id: "KmsKeyArnString",
    #         target_key_prefix: "NonEmptyMaxLength1024String",
    #         object_lock_legal_hold_status: "OFF" # One of: ["OFF", "ON"],
    #         object_lock_mode: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE"],
    #         object_lock_retain_until_date: Time.now,
    #         bucket_key_enabled: false,
    #         checksum_algorithm: "CRC32" # One of: ["CRC32", "CRC32C", "SHA1", "SHA256", "CRC64NVME"]
    #       },
    #       s3_put_object_acl: {
    #         access_control_policy: {
    #           access_control_list: {
    #             owner: { # required
    #               id: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String"
    #             },
    #             grants: [
    #               {
    #                 grantee: {
    #                   type_identifier: "id" # One of: ["id", "emailAddress", "uri"],
    #                   identifier: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String"
    #                 },
    #                 permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #               }
    #             ]
    #           },
    #           canned_access_control_list: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #         }
    #       },
    #       s3_put_object_tagging: {
    #         tag_set: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           }
    #         ]
    #       },
    #       s3_delete_object_tagging: {
    #       },
    #       s3_initiate_restore_object: {
    #         expiration_in_days: 1,
    #         glacier_job_tier: "BULK" # One of: ["BULK", "STANDARD"]
    #       },
    #       s3_put_object_legal_hold: {
    #         legal_hold: { # required
    #           status: "OFF" # One of: ["OFF", "ON"], # required
    #         }
    #       },
    #       s3_put_object_retention: {
    #         bypass_governance_retention: false,
    #         retention: { # required
    #           retain_until_date: Time.now,
    #           mode: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE"]
    #         }
    #       },
    #       s3_replicate_object: {
    #       },
    #       s3_compute_object_checksum: {
    #         checksum_algorithm: "CRC32" # One of: ["CRC32", "CRC32C", "CRC64NVME", "MD5", "SHA1", "SHA256"],
    #         checksum_type: "FULL_OBJECT" # One of: ["FULL_OBJECT", "COMPOSITE"]
    #       }
    #     },
    #     report: { # required
    #       bucket: "S3BucketArnString",
    #       format: "Report_CSV_20180820" # One of: ["Report_CSV_20180820"],
    #       enabled: false, # required
    #       prefix: "ReportPrefixString",
    #       report_scope: "AllTasks" # One of: ["AllTasks", "FailedTasksOnly"],
    #       expected_bucket_owner: "AccountId"
    #     },
    #     client_request_token: "NonEmptyMaxLength64String", # required
    #     manifest: {
    #       spec: { # required
    #         format: "S3BatchOperations_CSV_20180820" # One of: ["S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"], # required
    #         fields: ["Ignore" # One of: ["Ignore", "Bucket", "Key", "VersionId"]]
    #       },
    #       location: { # required
    #         object_arn: "S3KeyArnString", # required
    #         object_version_id: "S3ObjectVersionId",
    #         e_tag: "NonEmptyMaxLength1024String", # required
    #       }
    #     },
    #     description: "NonEmptyMaxLength256String",
    #     priority: 1, # required
    #     role_arn: "IAMRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ],
    #     manifest_generator: {
    #       # One of:
    #       s3_job_manifest_generator: {
    #         expected_bucket_owner: "AccountId",
    #         source_bucket: "S3BucketArnString", # required
    #         manifest_output_location: {
    #           expected_manifest_bucket_owner: "AccountId",
    #           bucket: "S3BucketArnString", # required
    #           manifest_prefix: "ManifestPrefixString",
    #           manifest_encryption: {
    #             sses3: {
    #             },
    #             ssekms: {
    #               key_id: "KmsKeyArnString", # required
    #             }
    #           },
    #           manifest_format: "S3InventoryReport_CSV_20211130" # One of: ["S3InventoryReport_CSV_20211130"], # required
    #         },
    #         filter: {
    #           eligible_for_replication: false,
    #           created_after: Time.now,
    #           created_before: Time.now,
    #           object_replication_statuses: ["COMPLETED" # One of: ["COMPLETED", "FAILED", "REPLICA", "NONE"]],
    #           key_name_constraint: {
    #             match_any_prefix: ["NonEmptyMaxLength1024String"],
    #             match_any_suffix: ["NonEmptyMaxLength1024String"],
    #             match_any_substring: ["NonEmptyMaxLength1024String"]
    #           },
    #           object_size_greater_than_bytes: 1,
    #           object_size_less_than_bytes: 1,
    #           match_any_storage_class: ["STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]],
    #           match_any_object_encryption: [{
    #             # One of:
    #             sses3: {
    #             },
    #             ssekms: {
    #               kms_key_arn: "NonEmptyKmsKeyArnString",
    #               bucket_key_enabled: false
    #             },
    #             dssekms: {
    #               kms_key_arn: "NonEmptyKmsKeyArnString"
    #             },
    #             ssec: {
    #             },
    #             notsse: {
    #             }
    #           }]
    #         },
    #         enable_manifest_output: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::CreateJobResult]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates a Multi-Region Access Point and associates it with the specified buckets. For more information
    #          about creating Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html">Creating
    #             Multi-Region Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This request is asynchronous, meaning that you might receive a response before the
    #          command has completed. When this request provides a response, it provides a token that you
    #          can use to monitor the status of the request with
    #             <code>DescribeMultiRegionAccessPointOperation</code>.</p>
    #          <p>The following actions are related to <code>CreateMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateMultiRegionAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point. The owner of the Multi-Region Access Point also must own
    #            the underlying buckets.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    # @option params [Types::CreateMultiRegionAccessPointInput] :details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #       public_access_block: {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false
    #       },
    #       regions: [ # required
    #         {
    #           bucket: "BucketName", # required
    #           bucket_account_id: "AccountId"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_multi_region_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_token_arn: "AsyncRequestTokenARN"
    #   }
    # @return [Types::CreateMultiRegionAccessPointResult]
    def create_multi_region_access_point(params = {}, options = {})
      request = build_request(:create_multi_region_access_point, params)
      request.send_request(options)
    end

    # <p> Creates a new S3 Storage Lens group and associates it with the specified Amazon Web Services account ID. An
    #          S3 Storage Lens group is a custom grouping of objects based on prefix, suffix, object tags,
    #          object size, object age, or a combination of these filters. For each Storage Lens group
    #          that you’ve created, you can also optionally add Amazon Web Services resource tags. For more information
    #          about S3 Storage Lens groups, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups-overview.html">Working with S3 Storage Lens
    #             groups</a>.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #             <code>s3:CreateStorageLensGroup</code> action. If you’re trying to create a Storage Lens
    #          group with Amazon Web Services resource tags, you must also have permission to perform the
    #             <code>s3:TagResource</code> action. For more information about the required Storage Lens
    #          Groups permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #          <p>For information about Storage Lens groups errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList">List of Amazon S3 Storage
    #             Lens error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::CreateStorageLensGroupRequest] params
    # @option params [String] :account_id
    #   <p>
    #   The Amazon Web Services account ID that the Storage Lens group is created from and associated with.
    #   </p>
    # @option params [Types::StorageLensGroup] :storage_lens_group
    #   <p>
    #   The Storage Lens group configuration.
    #   </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #   The Amazon Web Services resource tags that you're adding to your Storage Lens group. This parameter is optional.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     storage_lens_group: { # required
    #       name: "StorageLensGroupName", # required
    #       filter: { # required
    #         match_any_prefix: ["Prefix"],
    #         match_any_suffix: ["Suffix"],
    #         match_any_tag: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           }
    #         ],
    #         match_object_age: {
    #           days_greater_than: 1,
    #           days_less_than: 1
    #         },
    #         match_object_size: {
    #           bytes_greater_than: 1,
    #           bytes_less_than: 1
    #         },
    #         and: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         },
    #         or: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         }
    #       },
    #       storage_lens_group_arn: "StorageLensGroupArn"
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_storage_lens_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_storage_lens_group(params = {}, options = {})
      request = build_request(:create_storage_lens_group, params)
      request.send_request(options)
    end

    # <p>Deletes the access grant from the S3 Access Grants instance. You cannot undo an access grant
    #          deletion and the grantee will no longer have access to the S3 data.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:DeleteAccessGrant</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessGrantRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grant_id: "AccessGrantId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_grant(params = {}, options = {})
      request = build_request(:delete_access_grant, params)
      request.send_request(options)
    end

    # <p>Deletes your S3 Access Grants instance. You must first delete the access grants and locations
    #          before S3 Access Grants can delete the instance. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html">DeleteAccessGrant</a>
    #          and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrantsLocation.html">DeleteAccessGrantsLocation</a>. If you have associated an IAM Identity Center
    #          instance with your S3 Access Grants instance, you must first dissassociate the Identity Center
    #          instance from the S3 Access Grants instance before you can delete the S3 Access Grants instance. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_AssociateAccessGrantsIdentityCenter.html">AssociateAccessGrantsIdentityCenter</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DissociateAccessGrantsIdentityCenter.html">DissociateAccessGrantsIdentityCenter</a>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:DeleteAccessGrantsInstance</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessGrantsInstanceRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_access_grants_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_grants_instance(params = {}, options = {})
      request = build_request(:delete_access_grants_instance, params)
      request.send_request(options)
    end

    # <p>Deletes the resource policy of the S3 Access Grants instance. The resource policy is used to
    #          manage cross-account access to your S3 Access Grants instance. By deleting the resource policy, you
    #          delete any cross-account permissions to your S3 Access Grants instance. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:DeleteAccessGrantsInstanceResourcePolicy</code>
    #                   permission to use this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessGrantsInstanceResourcePolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_access_grants_instance_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_grants_instance_resource_policy(params = {}, options = {})
      request = build_request(:delete_access_grants_instance_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deregisters a location from your S3 Access Grants instance. You can only delete a location
    #          registration from an S3 Access Grants instance if there are no grants associated with this location.
    #          See <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessGrant.html">Delete a grant</a> for
    #          information on how to delete grants. You need to have at least one registered location in
    #          your S3 Access Grants instance in order to create access grants. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:DeleteAccessGrantsLocation</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessGrantsLocationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grants_location_id
    #   <p>The ID of the registered location that you are deregistering from your S3 Access Grants instance.
    #            S3 Access Grants assigned this ID when you registered the location. S3 Access Grants assigns the ID
    #               <code>default</code> to the default location <code>s3://</code> and assigns an
    #            auto-generated ID to other locations that you register. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grants_location_id: "AccessGrantsLocationId", # required
    #   }
    #   options = {}
    #   response = client.delete_access_grants_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_grants_location(params = {}, options = {})
      request = build_request(:delete_access_grants_location, params)
      request.send_request(options)
    end

    # <p>Deletes the specified access point.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point(params = {}, options = {})
      request = build_request(:delete_access_point, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the specified Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>DeleteAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessPointForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the access point you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point_for_object_lambda(params = {}, options = {})
      request = build_request(:delete_access_point_for_object_lambda, params)
      request.send_request(options)
    end

    # <p>Deletes the access point policy for the specified access point.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html">GetAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessPointPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point whose policy you want to delete.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point_policy(params = {}, options = {})
      request = build_request(:delete_access_point_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Removes the resource policy for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>DeleteAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html">GetAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html">PutAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessPointPolicyForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point you want to delete the policy for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point_policy_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point_policy_for_object_lambda(params = {}, options = {})
      request = build_request(:delete_access_point_policy_for_object_lambda, params)
      request.send_request(options)
    end

    # <p> Deletes an existing access point scope for a directory bucket.</p>
    #          <note>
    #             <p>When you delete the scope of an access point, all prefixes and permissions are
    #             deleted.</p>
    #          </note>
    #          <p>To use this operation, you must have the permission to perform the
    #             <code>s3express:DeleteAccessPointScope</code>
    #          action.</p>
    #          <p>For information about REST API errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses">REST error responses</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteAccessPointScopeRequest] params
    # @option params [String] :account_id
    #   <p> The Amazon Web Services account ID that owns the access point with the scope that you want to delete. </p>
    # @option params [String] :name
    #   <p> The name of the access point with the scope that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.delete_access_point_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_point_scope(params = {}, options = {})
      request = build_request(:delete_access_point_scope, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket. To delete an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html">DeleteBucket</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the Amazon S3 on Outposts bucket. All objects (including all object versions and
    #          delete markers) in the bucket must be deleted before the bucket itself can be deleted. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples">Examples</a> section.</p>
    #          <p class="title">
    #             <b>Related Resources</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html">GetBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html">DeleteObject</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteBucketRequest] params
    # @option params [String] :account_id
    #   <p>The account ID that owns the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bucket(params = {}, options = {})
      request = build_request(:delete_bucket, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration. To delete
    #             an S3 bucket's lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html">DeleteBucketLifecycle</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the lifecycle configuration from the specified Outposts bucket.
    #          Amazon S3 on Outposts removes all the lifecycle configuration rules in the lifecycle subresource
    #          associated with the bucket. Your objects never expire, and Amazon S3 on Outposts no longer
    #          automatically deletes any objects on the basis of rules contained in the deleted lifecycle
    #          configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this operation, you must have permission to perform the
    #             <code>s3-outposts:PutLifecycleConfiguration</code> action. By default, the bucket owner
    #          has this permission and the Outposts bucket owner can grant this permission to
    #          others.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #          <p>For more information about object expiration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions">Elements to Describe Lifecycle Actions</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteBucketLifecycleConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the lifecycle configuration to delete.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket_lifecycle_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bucket_lifecycle_configuration(params = {}, options = {})
      request = build_request(:delete_bucket_lifecycle_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket policy. To delete an S3 bucket policy,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html">DeleteBucketPolicy</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>This implementation of the DELETE action uses the policy subresource to delete the
    #          policy of a specified Amazon S3 on Outposts bucket. If you are using an identity other than the
    #          root user of the Amazon Web Services account that owns the bucket, the calling identity must have the
    #             <code>s3-outposts:DeleteBucketPolicy</code> permissions on the specified Outposts bucket
    #          and belong to the bucket owner's account to use this action. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you don't have <code>DeleteBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error. </p>
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action.</p>
    #          </important>
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>. </p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html">GetBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html">PutBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteBucketPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bucket_policy(params = {}, options = {})
      request = build_request(:delete_bucket_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation deletes an Amazon S3 on Outposts bucket's replication configuration. To
    #             delete an S3 bucket's replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html">DeleteBucketReplication</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the replication configuration from the specified S3 on Outposts bucket.</p>
    #          <p>To use this operation, you must have permissions to perform the
    #             <code>s3-outposts:PutReplicationConfiguration</code> action. The Outposts bucket owner
    #          has this permission by default and can grant it to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html">Setting up IAM with
    #             S3 on Outposts</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html">Managing access to
    #             S3 on Outposts buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>It can take a while to propagate <code>PUT</code> or <code>DELETE</code> requests for
    #             a replication configuration to all S3 on Outposts systems. Therefore, the replication
    #             configuration that's returned by a <code>GET</code> request soon after a
    #                <code>PUT</code> or <code>DELETE</code> request might return a more recent result
    #             than what's on the Outpost. If an Outpost is offline, the delay in updating the
    #             replication configuration on that Outpost can be significant.</p>
    #          </note>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html#API_control_DeleteBucketReplication_Examples">Examples</a> section.</p>
    #          <p>For information about S3 replication on Outposts configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html">Replicating objects for S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following operations are related to <code>DeleteBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html">PutBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html">GetBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteBucketReplicationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket to delete the replication configuration
    #            for.</p>
    # @option params [String] :bucket
    #   <p>Specifies the S3 on Outposts bucket to delete the replication configuration for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bucket_replication(params = {}, options = {})
      request = build_request(:delete_bucket_replication, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action deletes an Amazon S3 on Outposts bucket's tags. To delete an S3 bucket tags,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html">DeleteBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Deletes the tags from the Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>PutBucketTagging</code> action. By default, the bucket owner has this permission
    #          and can grant this permission to others. </p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>DeleteBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteBucketTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket tag set to be removed.</p>
    # @option params [String] :bucket
    #   <p>The bucket ARN that has the tag set to be removed.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.delete_bucket_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bucket_tagging(params = {}, options = {})
      request = build_request(:delete_bucket_tagging, params)
      request.send_request(options)
    end

    # <p>Removes the entire tag set from the specified S3 Batch Operations job.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>DeleteJobTagging</code> operation, you must have permission to
    #                   perform the <code>s3:DeleteJobTagging</code> action. For more information, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling access and labeling jobs using tags</a> in the
    #                      <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html">PutJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteJobTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.delete_job_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteJobTaggingResult]
    def delete_job_tagging(params = {}, options = {})
      request = build_request(:delete_job_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes a Multi-Region Access Point. This action does not delete the buckets associated with the Multi-Region Access Point,
    #          only the Multi-Region Access Point itself.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>This request is asynchronous, meaning that you might receive a response before the
    #          command has completed. When this request provides a response, it provides a token that you
    #          can use to monitor the status of the request with
    #             <code>DescribeMultiRegionAccessPointOperation</code>.</p>
    #          <p>The following actions are related to <code>DeleteMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteMultiRegionAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    # @option params [Types::DeleteMultiRegionAccessPointInput] :details
    #   <p>A container element containing details about the Multi-Region Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_multi_region_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_token_arn: "AsyncRequestTokenARN"
    #   }
    # @return [Types::DeleteMultiRegionAccessPointResult]
    def delete_multi_region_access_point(params = {}, options = {})
      request = build_request(:delete_multi_region_access_point, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Removes the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html"> Using Amazon S3 block
    #             public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeletePublicAccessBlockRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_public_access_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_public_access_block(params = {}, options = {})
      request = build_request(:delete_public_access_block, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage
    #             activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:DeleteStorageLensConfiguration</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteStorageLensConfigurationRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_storage_lens_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_storage_lens_configuration(params = {}, options = {})
      request = build_request(:delete_storage_lens_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Deletes the Amazon S3 Storage Lens configuration tags. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:DeleteStorageLensConfigurationTagging</code> action. For more information,
    #             see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteStorageLensConfigurationTaggingRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_storage_lens_configuration_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStorageLensConfigurationTaggingResult]
    def delete_storage_lens_configuration_tagging(params = {}, options = {})
      request = build_request(:delete_storage_lens_configuration_tagging, params)
      request.send_request(options)
    end

    # <p>
    # Deletes an existing S3 Storage Lens group.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #       <code>s3:DeleteStorageLensGroup</code> action. For more information about the required Storage Lens
    #       Groups permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #          <p>For information about Storage Lens groups errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList">List of Amazon S3 Storage
    #       Lens error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DeleteStorageLensGroupRequest] params
    # @option params [String] :name
    #   <p>
    #   The name of the Storage Lens group that you're trying to delete.
    #   </p>
    # @option params [String] :account_id
    #   <p>
    #   The Amazon Web Services account ID used to create the Storage Lens group that you're trying to delete.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StorageLensGroupName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_storage_lens_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_storage_lens_group(params = {}, options = {})
      request = build_request(:delete_storage_lens_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the configuration parameters and status for a Batch Operations job. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>DescribeJob</code> operation, you must have permission to
    #                   perform the <code>s3:DescribeJob</code> action.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DescribeJobRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID for the job whose information you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_id: "JobId",
    #       confirmation_required: false,
    #       description: "NonEmptyMaxLength256String",
    #       job_arn: "JobArn",
    #       status: "Active" # One of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"],
    #       manifest: {
    #         spec: { # required
    #           format: "S3BatchOperations_CSV_20180820" # One of: ["S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"], # required
    #           fields: ["Ignore" # One of: ["Ignore", "Bucket", "Key", "VersionId"]]
    #         },
    #         location: { # required
    #           object_arn: "S3KeyArnString", # required
    #           object_version_id: "S3ObjectVersionId",
    #           e_tag: "NonEmptyMaxLength1024String", # required
    #         }
    #       },
    #       operation: {
    #         lambda_invoke: {
    #           function_arn: "FunctionArnString",
    #           invocation_schema_version: "NonEmptyMaxLength64String",
    #           user_arguments: {
    #             "NonEmptyMaxLength64String" => "MaxLength1024String"
    #           }
    #         },
    #         s3_put_object_copy: {
    #           target_resource: "S3RegionalOrS3ExpressBucketArnString",
    #           canned_access_control_list: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"],
    #           access_control_grants: [
    #             {
    #               grantee: {
    #                 type_identifier: "id" # One of: ["id", "emailAddress", "uri"],
    #                 identifier: "NonEmptyMaxLength1024String",
    #                 display_name: "NonEmptyMaxLength1024String"
    #               },
    #               permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #             }
    #           ],
    #           metadata_directive: "COPY" # One of: ["COPY", "REPLACE"],
    #           modified_since_constraint: Time.now,
    #           new_object_metadata: {
    #             cache_control: "NonEmptyMaxLength1024String",
    #             content_disposition: "NonEmptyMaxLength1024String",
    #             content_encoding: "NonEmptyMaxLength1024String",
    #             content_language: "NonEmptyMaxLength1024String",
    #             user_metadata: {
    #               "NonEmptyMaxLength1024String" => "MaxLength1024String"
    #             },
    #             content_length: 1,
    #             content_md5: "NonEmptyMaxLength1024String",
    #             content_type: "NonEmptyMaxLength1024String",
    #             http_expires_date: Time.now,
    #             requester_charged: false,
    #             sse_algorithm: "AES256" # One of: ["AES256", "KMS"]
    #           },
    #           new_object_tagging: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           redirect_location: "NonEmptyMaxLength2048String",
    #           requester_pays: false,
    #           storage_class: "STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"],
    #           un_modified_since_constraint: Time.now,
    #           sse_aws_kms_key_id: "KmsKeyArnString",
    #           target_key_prefix: "NonEmptyMaxLength1024String",
    #           object_lock_legal_hold_status: "OFF" # One of: ["OFF", "ON"],
    #           object_lock_mode: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE"],
    #           object_lock_retain_until_date: Time.now,
    #           bucket_key_enabled: false,
    #           checksum_algorithm: "CRC32" # One of: ["CRC32", "CRC32C", "SHA1", "SHA256", "CRC64NVME"]
    #         },
    #         s3_put_object_acl: {
    #           access_control_policy: {
    #             access_control_list: {
    #               owner: { # required
    #                 id: "NonEmptyMaxLength1024String",
    #                 display_name: "NonEmptyMaxLength1024String"
    #               },
    #               grants: [
    #                 {
    #                   grantee: {
    #                     type_identifier: "id" # One of: ["id", "emailAddress", "uri"],
    #                     identifier: "NonEmptyMaxLength1024String",
    #                     display_name: "NonEmptyMaxLength1024String"
    #                   },
    #                   permission: "FULL_CONTROL" # One of: ["FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"]
    #                 }
    #               ]
    #             },
    #             canned_access_control_list: "private" # One of: ["private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"]
    #           }
    #         },
    #         s3_put_object_tagging: {
    #           tag_set: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ]
    #         },
    #         s3_delete_object_tagging: {
    #         },
    #         s3_initiate_restore_object: {
    #           expiration_in_days: 1,
    #           glacier_job_tier: "BULK" # One of: ["BULK", "STANDARD"]
    #         },
    #         s3_put_object_legal_hold: {
    #           legal_hold: { # required
    #             status: "OFF" # One of: ["OFF", "ON"], # required
    #           }
    #         },
    #         s3_put_object_retention: {
    #           bypass_governance_retention: false,
    #           retention: { # required
    #             retain_until_date: Time.now,
    #             mode: "COMPLIANCE" # One of: ["COMPLIANCE", "GOVERNANCE"]
    #           }
    #         },
    #         s3_replicate_object: {
    #         },
    #         s3_compute_object_checksum: {
    #           checksum_algorithm: "CRC32" # One of: ["CRC32", "CRC32C", "CRC64NVME", "MD5", "SHA1", "SHA256"],
    #           checksum_type: "FULL_OBJECT" # One of: ["FULL_OBJECT", "COMPOSITE"]
    #         }
    #       },
    #       priority: 1,
    #       progress_summary: {
    #         total_number_of_tasks: 1,
    #         number_of_tasks_succeeded: 1,
    #         number_of_tasks_failed: 1,
    #         timers: {
    #           elapsed_time_in_active_seconds: 1
    #         }
    #       },
    #       status_update_reason: "JobStatusUpdateReason",
    #       failure_reasons: [
    #         {
    #           failure_code: "JobFailureCode",
    #           failure_reason: "JobFailureReason"
    #         }
    #       ],
    #       report: {
    #         bucket: "S3BucketArnString",
    #         format: "Report_CSV_20180820" # One of: ["Report_CSV_20180820"],
    #         enabled: false, # required
    #         prefix: "ReportPrefixString",
    #         report_scope: "AllTasks" # One of: ["AllTasks", "FailedTasksOnly"],
    #         expected_bucket_owner: "AccountId"
    #       },
    #       creation_time: Time.now,
    #       termination_date: Time.now,
    #       role_arn: "IAMRoleArn",
    #       suspended_date: Time.now,
    #       suspended_cause: "SuspendedCause",
    #       manifest_generator: {
    #         # One of:
    #         s3_job_manifest_generator: {
    #           expected_bucket_owner: "AccountId",
    #           source_bucket: "S3BucketArnString", # required
    #           manifest_output_location: {
    #             expected_manifest_bucket_owner: "AccountId",
    #             bucket: "S3BucketArnString", # required
    #             manifest_prefix: "ManifestPrefixString",
    #             manifest_encryption: {
    #               sses3: {
    #               },
    #               ssekms: {
    #                 key_id: "KmsKeyArnString", # required
    #               }
    #             },
    #             manifest_format: "S3InventoryReport_CSV_20211130" # One of: ["S3InventoryReport_CSV_20211130"], # required
    #           },
    #           filter: {
    #             eligible_for_replication: false,
    #             created_after: Time.now,
    #             created_before: Time.now,
    #             object_replication_statuses: ["COMPLETED" # One of: ["COMPLETED", "FAILED", "REPLICA", "NONE"]],
    #             key_name_constraint: {
    #               match_any_prefix: ["NonEmptyMaxLength1024String"],
    #               match_any_suffix: ["NonEmptyMaxLength1024String"],
    #               match_any_substring: ["NonEmptyMaxLength1024String"]
    #             },
    #             object_size_greater_than_bytes: 1,
    #             object_size_less_than_bytes: 1,
    #             match_any_storage_class: ["STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"]],
    #             match_any_object_encryption: [{
    #               # One of:
    #               sses3: {
    #               },
    #               ssekms: {
    #                 kms_key_arn: "NonEmptyKmsKeyArnString",
    #                 bucket_key_enabled: false
    #               },
    #               dssekms: {
    #                 kms_key_arn: "NonEmptyKmsKeyArnString"
    #               },
    #               ssec: {
    #               },
    #               notsse: {
    #               }
    #             }]
    #           },
    #           enable_manifest_output: false, # required
    #         }
    #       },
    #       generated_manifest_descriptor: {
    #         format: "S3InventoryReport_CSV_20211130" # One of: ["S3InventoryReport_CSV_20211130"],
    #         location: {
    #           object_arn: "S3KeyArnString", # required
    #           object_version_id: "S3ObjectVersionId",
    #           e_tag: "NonEmptyMaxLength1024String", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeJobResult]
    def describe_job(params = {}, options = {})
      request = build_request(:describe_job, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves the status of an asynchronous request to manage a Multi-Region Access Point. For more information
    #          about managing Multi-Region Access Points and how asynchronous requests work, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MrapOperations.html">Using Multi-Region Access Points</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>GetMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DescribeMultiRegionAccessPointOperationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :request_token_arn
    #   <p>The request token associated with the request you want to know about. This request token
    #            is returned as part of the response when you make an asynchronous request. You provide this
    #            token to query about the status of the asynchronous action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     request_token_arn: "AsyncRequestTokenARN", # required
    #   }
    #   options = {}
    #   response = client.describe_multi_region_access_point_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     async_operation: {
    #       creation_time: Time.now,
    #       operation: "CreateMultiRegionAccessPoint" # One of: ["CreateMultiRegionAccessPoint", "DeleteMultiRegionAccessPoint", "PutMultiRegionAccessPointPolicy"],
    #       request_token_arn: "AsyncRequestTokenARN",
    #       request_parameters: {
    #         create_multi_region_access_point_request: {
    #           name: "MultiRegionAccessPointName", # required
    #           public_access_block: {
    #             block_public_acls: false,
    #             ignore_public_acls: false,
    #             block_public_policy: false,
    #             restrict_public_buckets: false
    #           },
    #           regions: [ # required
    #             {
    #               bucket: "BucketName", # required
    #               bucket_account_id: "AccountId"
    #             }
    #           ]
    #         },
    #         delete_multi_region_access_point_request: {
    #           name: "MultiRegionAccessPointName", # required
    #         },
    #         put_multi_region_access_point_policy_request: {
    #           name: "MultiRegionAccessPointName", # required
    #           policy: "Policy", # required
    #         }
    #       },
    #       request_status: "AsyncRequestStatus",
    #       response_details: {
    #         multi_region_access_point_details: {
    #           regions: [
    #             {
    #               name: "RegionName",
    #               request_status: "AsyncRequestStatus"
    #             }
    #           ]
    #         },
    #         error_details: {
    #           code: "MaxLength1024String",
    #           message: "MaxLength1024String",
    #           resource: "MaxLength1024String",
    #           request_id: "MaxLength1024String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeMultiRegionAccessPointOperationResult]
    def describe_multi_region_access_point_operation(params = {}, options = {})
      request = build_request(:describe_multi_region_access_point_operation, params)
      request.send_request(options)
    end

    # <p>Dissociates the Amazon Web Services IAM Identity Center instance from the S3 Access Grants instance. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:DissociateAccessGrantsIdentityCenter</code>
    #                   permission to use this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>sso:DeleteApplication</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::DissociateAccessGrantsIdentityCenterRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.dissociate_access_grants_identity_center(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def dissociate_access_grants_identity_center(params = {}, options = {})
      request = build_request(:dissociate_access_grants_identity_center, params)
      request.send_request(options)
    end

    # <p>Get the details of an access grant from your S3 Access Grants instance.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetAccessGrant</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessGrantRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grant_id
    #   <p>The ID of the access grant. S3 Access Grants auto-generates this ID when you create the access
    #            grant.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grant_id: "AccessGrantId", # required
    #   }
    #   options = {}
    #   response = client.get_access_grant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grant_id: "AccessGrantId",
    #     access_grant_arn: "AccessGrantArn",
    #     grantee: {
    #       grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #       grantee_identifier: "GranteeIdentifier"
    #     },
    #     permission: "READ" # One of: ["READ", "WRITE", "READWRITE"],
    #     access_grants_location_id: "AccessGrantsLocationId",
    #     access_grants_location_configuration: {
    #       s3_sub_prefix: "S3Prefix"
    #     },
    #     grant_scope: "S3Prefix",
    #     application_arn: "IdentityCenterApplicationArn"
    #   }
    # @return [Types::GetAccessGrantResult]
    def get_access_grant(params = {}, options = {})
      request = build_request(:get_access_grant, params)
      request.send_request(options)
    end

    # <p>Retrieves the S3 Access Grants instance for a Region in your account. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetAccessGrantsInstance</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <note>
    #             <p>
    #                <code>GetAccessGrantsInstance</code> is not supported for cross-account access. You can only call the API from the account that owns the S3 Access Grants instance.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessGrantsInstanceRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_access_grants_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grants_instance_arn: "AccessGrantsInstanceArn",
    #     access_grants_instance_id: "AccessGrantsInstanceId",
    #     identity_center_arn: "IdentityCenterArn",
    #     identity_center_instance_arn: "IdentityCenterArn",
    #     identity_center_application_arn: "IdentityCenterApplicationArn",
    #     created_at: Time.now
    #   }
    # @return [Types::GetAccessGrantsInstanceResult]
    def get_access_grants_instance(params = {}, options = {})
      request = build_request(:get_access_grants_instance, params)
      request.send_request(options)
    end

    # <p>Retrieve the S3 Access Grants instance that contains a particular prefix. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetAccessGrantsInstanceForPrefix</code> permission
    #                   for the caller account to use this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>The prefix owner account must grant you the following permissions to their
    #                   S3 Access Grants instance: <code>s3:GetAccessGrantsInstanceForPrefix</code>. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessGrantsInstanceForPrefixRequest] params
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account that is making this request.</p>
    # @option params [String] :s3_prefix
    #   <p>The S3 prefix of the access grants that you would like to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     s3_prefix: "S3Prefix", # required
    #   }
    #   options = {}
    #   response = client.get_access_grants_instance_for_prefix(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_grants_instance_arn: "AccessGrantsInstanceArn",
    #     access_grants_instance_id: "AccessGrantsInstanceId"
    #   }
    # @return [Types::GetAccessGrantsInstanceForPrefixResult]
    def get_access_grants_instance_for_prefix(params = {}, options = {})
      request = build_request(:get_access_grants_instance_for_prefix, params)
      request.send_request(options)
    end

    # <p>Returns the resource policy of the S3 Access Grants instance. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetAccessGrantsInstanceResourcePolicy</code>
    #                   permission to use this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessGrantsInstanceResourcePolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_access_grants_instance_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyDocument",
    #     organization: "Organization",
    #     created_at: Time.now
    #   }
    # @return [Types::GetAccessGrantsInstanceResourcePolicyResult]
    def get_access_grants_instance_resource_policy(params = {}, options = {})
      request = build_request(:get_access_grants_instance_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a particular location registered in your S3 Access Grants instance. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetAccessGrantsLocation</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessGrantsLocationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grants_location_id
    #   <p>The ID of the registered location that you are retrieving. S3 Access Grants assigns this ID when
    #            you register the location. S3 Access Grants assigns the ID <code>default</code> to the default
    #            location <code>s3://</code> and assigns an auto-generated ID to other locations that you
    #            register. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grants_location_id: "AccessGrantsLocationId", # required
    #   }
    #   options = {}
    #   response = client.get_access_grants_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grants_location_id: "AccessGrantsLocationId",
    #     access_grants_location_arn: "AccessGrantsLocationArn",
    #     location_scope: "S3Prefix",
    #     iam_role_arn: "IAMRoleArn"
    #   }
    # @return [Types::GetAccessGrantsLocationResult]
    def get_access_grants_location(params = {}, options = {})
      request = build_request(:get_access_grants_location, params)
      request.send_request(options)
    end

    # <p>Returns configuration information about the specified access point.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>GetAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point whose configuration information you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AccessPointName",
    #     bucket: "AccessPointBucketName",
    #     network_origin: "Internet" # One of: ["Internet", "VPC"],
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #     },
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     },
    #     creation_date: Time.now,
    #     alias: "Alias",
    #     access_point_arn: "S3AccessPointArn",
    #     endpoints: {
    #       "NonEmptyMaxLength64String" => "NonEmptyMaxLength1024String"
    #     },
    #     bucket_account_id: "AccountId",
    #     data_source_id: "DataSourceId",
    #     data_source_type: "DataSourceType"
    #   }
    # @return [Types::GetAccessPointResult]
    def get_access_point(params = {}, options = {})
      request = build_request(:get_access_point, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns configuration for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #             <code>GetAccessPointConfigurationForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html">PutAccessPointConfigurationForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointConfigurationForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point you want to return the configuration for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_configuration_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       supporting_access_point: "ObjectLambdaSupportingAccessPointArn", # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: ["GetObject-Range" # One of: ["GetObject-Range", "GetObject-PartNumber", "HeadObject-Range", "HeadObject-PartNumber"]],
    #       transformation_configurations: [ # required
    #         {
    #           actions: ["GetObject" # One of: ["GetObject", "HeadObject", "ListObjects", "ListObjectsV2"]], # required
    #           content_transformation: { # required
    #             # One of:
    #             aws_lambda: {
    #               function_arn: "FunctionArnString", # required
    #               function_payload: "AwsLambdaTransformationPayload"
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetAccessPointConfigurationForObjectLambdaResult]
    def get_access_point_configuration_for_object_lambda(params = {}, options = {})
      request = build_request(:get_access_point_configuration_for_object_lambda, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns configuration information about the specified Object Lambda Access Point</p>
    #          <p>The following actions are related to <code>GetAccessPointForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html">ListAccessPointsForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ObjectLambdaAccessPointName",
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     },
    #     creation_date: Time.now,
    #     alias: {
    #       value: "ObjectLambdaAccessPointAliasValue",
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "READY"]
    #     }
    #   }
    # @return [Types::GetAccessPointForObjectLambdaResult]
    def get_access_point_for_object_lambda(params = {}, options = {})
      request = build_request(:get_access_point_for_object_lambda, params)
      request.send_request(options)
    end

    # <p>Returns the access point policy associated with the specified access point.</p>
    #          <p>The following actions are related to <code>GetAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html">PutAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html">DeleteAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point whose policy you want to retrieve.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "Policy"
    #   }
    # @return [Types::GetAccessPointPolicyResult]
    def get_access_point_policy(params = {}, options = {})
      request = build_request(:get_access_point_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the resource policy for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #          <code>GetAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html">DeleteAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html">PutAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointPolicyForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_policy_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ObjectLambdaPolicy"
    #   }
    # @return [Types::GetAccessPointPolicyForObjectLambdaResult]
    def get_access_point_policy_for_object_lambda(params = {}, options = {})
      request = build_request(:get_access_point_policy_for_object_lambda, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Indicates whether the specified access point currently has a policy that allows public access.
    #          For more information about public access through access points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing Data Access with Amazon S3
    #             access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointPolicyStatusRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point whose policy status you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_policy_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_status: {
    #       is_public: false
    #     }
    #   }
    # @return [Types::GetAccessPointPolicyStatusResult]
    def get_access_point_policy_status(params = {}, options = {})
      request = build_request(:get_access_point_policy_status, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the status of the resource policy associated with an Object Lambda Access Point.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointPolicyStatusForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_policy_status_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_status: {
    #       is_public: false
    #     }
    #   }
    # @return [Types::GetAccessPointPolicyStatusForObjectLambdaResult]
    def get_access_point_policy_status_for_object_lambda(params = {}, options = {})
      request = build_request(:get_access_point_policy_status_for_object_lambda, params)
      request.send_request(options)
    end

    # <p> Returns the access point scope for a directory bucket.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #             <code>s3express:GetAccessPointScope</code>
    #          action.</p>
    #          <p>For information about REST API errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses">REST error responses</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetAccessPointScopeRequest] params
    # @option params [String] :account_id
    #   <p> The Amazon Web Services account ID that owns the access point with the scope that you want to retrieve.
    #         </p>
    # @option params [String] :name
    #   <p>The name of the access point with the scope you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     name: "AccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_access_point_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope: {
    #       prefixes: ["Prefix"],
    #       permissions: ["GetObject" # One of: ["GetObject", "GetObjectAttributes", "ListMultipartUploadParts", "ListBucket", "ListBucketMultipartUploads", "PutObject", "DeleteObject", "AbortMultipartUpload"]]
    #     }
    #   }
    # @return [Types::GetAccessPointScopeResult]
    def get_access_point_scope(params = {}, options = {})
      request = build_request(:get_access_point_scope, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon S3 on Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html"> Using Amazon S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          Outposts bucket, the calling identity must have the <code>s3-outposts:GetBucket</code>
    #          permissions on the specified Outposts bucket and belong to the Outposts bucket owner's
    #          account in order to use this action. Only users from Outposts bucket owner account with
    #          the right permissions can perform actions on an Outposts bucket. </p>
    #          <p>If you don't have <code>s3-outposts:GetBucket</code> permissions or you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>403 Access
    #             Denied</code> error.</p>
    #          <p>The following actions are related to <code>GetBucket</code> for Amazon S3 on Outposts:</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples">Examples</a> section.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html">PutObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html">CreateBucket</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html">DeleteBucket</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetBucketRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bucket: "BucketName",
    #     public_access_block_enabled: false,
    #     creation_date: Time.now
    #   }
    # @return [Types::GetBucketResult]
    def get_bucket(params = {}, options = {})
      request = build_request(:get_bucket, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action gets an Amazon S3 on Outposts bucket's lifecycle configuration. To get an S3
    #             bucket's lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a> in the <i>Amazon S3 API Reference</i>.
    #          </p>
    #          </note>
    #          <p>Returns the lifecycle configuration information set on the Outposts bucket. For more
    #          information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> and for
    #          information about lifecycle configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html"> Object Lifecycle
    #             Management</a> in <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>s3-outposts:GetLifecycleConfiguration</code> action. The Outposts bucket owner
    #          has this permission, by default. The bucket owner can grant this permission to others. For
    #          more information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources">Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             Access Permissions to Your Amazon S3 Resources</a>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #          <p>
    #             <code>GetBucketLifecycleConfiguration</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchLifecycleConfiguration</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The lifecycle configuration does not exist.</p>
    #                   </li>
    #                   <li>
    #                      <p>HTTP Status Code: 404 Not Found</p>
    #                   </li>
    #                   <li>
    #                      <p>SOAP Fault Code Prefix: Client</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>The following actions are related to
    #          <code>GetBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html">DeleteBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetBucketLifecycleConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_lifecycle_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         expiration: {
    #           date: Time.now,
    #           days: 1,
    #           expired_object_delete_marker: false
    #         },
    #         id: "ID",
    #         filter: {
    #           prefix: "Prefix",
    #           tag: {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #           and: {
    #             prefix: "Prefix",
    #             tags: [
    #               {
    #                 key: "TagKeyString", # required
    #                 value: "TagValueString", # required
    #               }
    #             ],
    #             object_size_greater_than: 1,
    #             object_size_less_than: 1
    #           },
    #           object_size_greater_than: 1,
    #           object_size_less_than: 1
    #         },
    #         status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #         transitions: [
    #           {
    #             date: Time.now,
    #             days: 1,
    #             storage_class: "GLACIER" # One of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #           }
    #         ],
    #         noncurrent_version_transitions: [
    #           {
    #             noncurrent_days: 1,
    #             storage_class: "GLACIER" # One of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #           }
    #         ],
    #         noncurrent_version_expiration: {
    #           noncurrent_days: 1,
    #           newer_noncurrent_versions: 1
    #         },
    #         abort_incomplete_multipart_upload: {
    #           days_after_initiation: 1
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketLifecycleConfigurationResult]
    def get_bucket_lifecycle_configuration(params = {}, options = {})
      request = build_request(:get_bucket_lifecycle_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action gets a bucket policy for an Amazon S3 on Outposts bucket. To get a policy for
    #             an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html">GetBucketPolicy</a> in the
    #                <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the policy of a specified Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          bucket, the calling identity must have the <code>GetBucketPolicy</code> permissions on the
    #          specified bucket and belong to the bucket owner's account in order to use this
    #          action.</p>
    #          <p>Only users from Outposts bucket owner account with the right permissions can perform
    #          actions on an Outposts bucket. If you don't have <code>s3-outposts:GetBucketPolicy</code>
    #          permissions or you're not using an identity that belongs to the bucket owner's account,
    #          Amazon S3 returns a <code>403 Access Denied</code> error.</p>
    #          <important>
    #             <p>As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action.</p>
    #          </important>
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>GetBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html">PutBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html">DeleteBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetBucketPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "Policy"
    #   }
    # @return [Types::GetBucketPolicyResult]
    def get_bucket_policy(params = {}, options = {})
      request = build_request(:get_bucket_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation gets an Amazon S3 on Outposts bucket's replication configuration. To get an
    #             S3 bucket's replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html">GetBucketReplication</a>
    #             in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the replication configuration of an S3 on Outposts bucket. For more information
    #          about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>. For information about S3 replication on Outposts
    #          configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html">Replicating objects for
    #             S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>It can take a while to propagate <code>PUT</code> or <code>DELETE</code> requests for
    #             a replication configuration to all S3 on Outposts systems. Therefore, the replication
    #             configuration that's returned by a <code>GET</code> request soon after a
    #                <code>PUT</code> or <code>DELETE</code> request might return a more recent result
    #             than what's on the Outpost. If an Outpost is offline, the delay in updating the
    #             replication configuration on that Outpost can be significant.</p>
    #          </note>
    #          <p>This action requires permissions for the
    #             <code>s3-outposts:GetReplicationConfiguration</code> action. The Outposts bucket owner
    #          has this permission by default and can grant it to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html">Setting up IAM with
    #             S3 on Outposts</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html">Managing access to
    #             S3 on Outposts bucket</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html#API_control_GetBucketReplication_Examples">Examples</a> section.</p>
    #          <p>If you include the <code>Filter</code> element in a replication configuration, you must
    #          also include the <code>DeleteMarkerReplication</code>, <code>Status</code>, and
    #             <code>Priority</code> elements. The response also returns those elements.</p>
    #          <p>For information about S3 on Outposts replication failure reasons, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes">Replication failure reasons</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following operations are related to <code>GetBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html">PutBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html">DeleteBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetBucketReplicationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket to get the replication information for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replication_configuration: {
    #       role: "Role", # required
    #       rules: [ # required
    #         {
    #           id: "ID",
    #           priority: 1,
    #           prefix: "Prefix",
    #           filter: {
    #             prefix: "Prefix",
    #             tag: {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #             and: {
    #               prefix: "Prefix",
    #               tags: [
    #                 {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 }
    #               ]
    #             }
    #           },
    #           status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           source_selection_criteria: {
    #             sse_kms_encrypted_objects: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             },
    #             replica_modifications: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             }
    #           },
    #           existing_object_replication: {
    #             status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           },
    #           destination: { # required
    #             account: "AccountId",
    #             bucket: "BucketIdentifierString", # required
    #             replication_time: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               time: { # required
    #                 minutes: 1
    #               }
    #             },
    #             access_control_translation: {
    #               owner: "Destination" # One of: ["Destination"], # required
    #             },
    #             encryption_configuration: {
    #               replica_kms_key_id: "ReplicaKmsKeyID"
    #             },
    #             metrics: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               event_threshold: {
    #                 minutes: 1
    #               }
    #             },
    #             storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #           },
    #           delete_marker_replication: {
    #             status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           },
    #           bucket: "BucketIdentifierString", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetBucketReplicationResult]
    def get_bucket_replication(params = {}, options = {})
      request = build_request(:get_bucket_replication, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action gets an Amazon S3 on Outposts bucket's tags. To get an S3 bucket tags, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html">GetBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the tag set associated with the Outposts bucket. For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>To use this action, you must have permission to perform the
    #             <code>GetBucketTagging</code> action. By default, the bucket owner has this permission
    #          and can grant this permission to others.</p>
    #          <p>
    #             <code>GetBucketTagging</code> has the following special error:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>NoSuchTagSetError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: There is no tag set associated with the bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>GetBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html">PutBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetBucketTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_set: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetBucketTaggingResult]
    def get_bucket_tagging(params = {}, options = {})
      request = build_request(:get_bucket_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation returns the versioning state
    #             for
    #             S3 on Outposts
    #             buckets
    #             only. To return the versioning state for an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Returns the versioning state for an S3 on Outposts bucket. With
    #          S3
    #          Versioning,
    #          you can save multiple distinct copies of your
    #          objects
    #          and recover from unintended user actions and application failures.</p>
    #          <p>If you've never set versioning on your bucket, it has no versioning state. In that case,
    #          the <code>GetBucketVersioning</code> request does not return a versioning state
    #          value.</p>
    #          <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html">Versioning</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples">Examples</a> section.</p>
    #          <p>The following operations are related to <code>GetBucketVersioning</code> for
    #          S3 on Outposts.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html">PutBucketVersioning</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetBucketVersioningRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 on Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>The S3 on Outposts bucket to return the versioning state for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   }
    #   options = {}
    #   response = client.get_bucket_versioning(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Enabled" # One of: ["Enabled", "Suspended"],
    #     mfa_delete: "Enabled" # One of: ["Enabled", "Disabled"]
    #   }
    # @return [Types::GetBucketVersioningResult]
    def get_bucket_versioning(params = {}, options = {})
      request = build_request(:get_bucket_versioning, params)
      request.send_request(options)
    end

    # <p>Returns a temporary access credential from S3 Access Grants to the grantee or client application.
    #          The <a href="https://docs.aws.amazon.com/STS/latest/APIReference/API_Credentials.html">temporary credential</a> is an Amazon Web Services STS token that grants them access to the S3 data. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:GetDataAccess</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>The IAM role that S3 Access Grants assumes must have the following permissions
    #                   specified in the trust policy when registering the location:
    #                      <code>sts:AssumeRole</code>, for directory users or groups
    #                      <code>sts:SetContext</code>, and for IAM users or roles
    #                      <code>sts:SetSourceIdentity</code>. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetDataAccessRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :target
    #   <p>The S3 URI path of the data to which you are requesting temporary access credentials. If
    #            the requesting account has an access grant for this data, S3 Access Grants vends temporary access
    #            credentials in the response.</p>
    # @option params [String] :permission
    #   <p>The type of permission granted to your S3 data, which can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :duration_seconds
    #   <p>The session duration, in seconds, of the temporary access credential that S3 Access Grants vends
    #            to the grantee or client application. The default value is 1 hour, but the grantee can
    #            specify a range from 900 seconds (15 minutes) up to 43200 seconds (12 hours). If the
    #            grantee requests a value higher than this maximum, the operation fails. </p>
    # @option params [String] :privilege
    #   <p>The scope of the temporary access credential that S3 Access Grants vends to the grantee or client
    #            application. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Default</code> – The scope of the returned temporary access token is the scope
    #                  of the grant that is closest to the target scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Minimal</code> – The scope of the returned temporary access token is the same
    #                  as the requested target scope as long as the requested scope is the same as or a
    #                  subset of the grant scope. </p>
    #               </li>
    #            </ul>
    # @option params [String] :target_type
    #   <p>The type of <code>Target</code>. The only possible value is <code>Object</code>. Pass
    #            this value if the target data that you would like to access is a path to an object. Do not
    #            pass this value if the target data is a bucket or a bucket and a prefix. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     target: "S3Prefix", # required
    #     permission: "READ" # One of: ["READ", "WRITE", "READWRITE"], # required
    #     duration_seconds: 1,
    #     privilege: "Minimal" # One of: ["Minimal", "Default"],
    #     target_type: "Object" # One of: ["Object"]
    #   }
    #   options = {}
    #   response = client.get_data_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_key_id: "AccessKeyId",
    #       secret_access_key: "SecretAccessKey",
    #       session_token: "SessionToken",
    #       expiration: Time.now
    #     },
    #     matched_grant_target: "S3Prefix",
    #     grantee: {
    #       grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #       grantee_identifier: "GranteeIdentifier"
    #     }
    #   }
    # @return [Types::GetDataAccessResult]
    def get_data_access(params = {}, options = {})
      request = build_request(:get_data_access, params)
      request.send_request(options)
    end

    # <p>Returns the tags on an S3 Batch Operations job. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>GetJobTagging</code> operation, you must have permission to
    #                   perform the <code>s3:GetJobTagging</code> action. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling access and labeling jobs using tags</a> in the
    #                      <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html">PutJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetJobTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_job_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetJobTaggingResult]
    def get_job_tagging(params = {}, options = {})
      request = build_request(:get_job_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns configuration information about the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>GetMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html">ListMultiRegionAccessPoints</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetMultiRegionAccessPointRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Multi-Region Access Point whose configuration information you want to receive. The name of
    #            the Multi-Region Access Point is different from the alias. For more information about the distinction between
    #            the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_multi_region_access_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_point: {
    #       name: "MultiRegionAccessPointName",
    #       alias: "MultiRegionAccessPointAlias",
    #       created_at: Time.now,
    #       public_access_block: {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false
    #       },
    #       status: "READY" # One of: ["READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"],
    #       regions: [
    #         {
    #           bucket: "BucketName",
    #           region: "RegionName",
    #           bucket_account_id: "AccountId"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetMultiRegionAccessPointResult]
    def get_multi_region_access_point(params = {}, options = {})
      request = build_request(:get_multi_region_access_point, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the access control policy of the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>GetMultiRegionAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html">GetMultiRegionAccessPointPolicyStatus</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html">PutMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetMultiRegionAccessPointPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_multi_region_access_point_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       established: {
    #         policy: "Policy"
    #       },
    #       proposed: {
    #         policy: "Policy"
    #       }
    #     }
    #   }
    # @return [Types::GetMultiRegionAccessPointPolicyResult]
    def get_multi_region_access_point_policy(params = {}, options = {})
      request = build_request(:get_multi_region_access_point_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Indicates whether the specified Multi-Region Access Point has an access control policy that allows public
    #          access.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>GetMultiRegionAccessPointPolicyStatus</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html">GetMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html">PutMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetMultiRegionAccessPointPolicyStatusRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :name
    #   <p>Specifies the Multi-Region Access Point. The name of the Multi-Region Access Point is different from the alias. For more
    #            information about the distinction between the name and the alias of an Multi-Region Access Point, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Rules for naming Amazon S3 Multi-Region Access Points</a> in the
    #            <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   }
    #   options = {}
    #   response = client.get_multi_region_access_point_policy_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     established: {
    #       is_public: false
    #     }
    #   }
    # @return [Types::GetMultiRegionAccessPointPolicyStatusResult]
    def get_multi_region_access_point_policy_status(params = {}, options = {})
      request = build_request(:get_multi_region_access_point_policy_status, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns the routing configuration for a Multi-Region Access Point, indicating which Regions are active or
    #          passive.</p>
    #          <p>To obtain routing control changes and failover requests, use the Amazon S3 failover control
    #          infrastructure endpoints in these five Amazon Web Services Regions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>us-east-1</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>us-west-2</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ap-southeast-2</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ap-northeast-1</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>eu-west-1</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetMultiRegionAccessPointRoutesRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :mrap
    #   <p>The Multi-Region Access Point ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     mrap: "MultiRegionAccessPointId", # required
    #   }
    #   options = {}
    #   response = client.get_multi_region_access_point_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mrap: "MultiRegionAccessPointId",
    #     routes: [
    #       {
    #         bucket: "BucketName",
    #         region: "RegionName",
    #         traffic_dial_percentage: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::GetMultiRegionAccessPointRoutesResult]
    def get_multi_region_access_point_routes(params = {}, options = {})
      request = build_request(:get_multi_region_access_point_routes, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Retrieves the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account. For
    #          more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html"> Using Amazon S3 block
    #             public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html">PutPublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetPublicAccessBlockRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_public_access_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     }
    #   }
    # @return [Types::GetPublicAccessBlockOutput]
    def get_public_access_block(params = {}, options = {})
      request = build_request(:get_public_access_block, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets the Amazon S3 Storage Lens configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage
    #             activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:GetStorageLensConfiguration</code> action. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to use Amazon S3 Storage Lens</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetStorageLensConfigurationRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_storage_lens_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_lens_configuration: {
    #       id: "ConfigId", # required
    #       account_level: { # required
    #         activity_metrics: {
    #           is_enabled: false
    #         },
    #         bucket_level: { # required
    #           activity_metrics: {
    #             is_enabled: false
    #           },
    #           prefix_level: {
    #             storage_metrics: { # required
    #               is_enabled: false,
    #               selection_criteria: {
    #                 delimiter: "StorageLensPrefixLevelDelimiter",
    #                 max_depth: 1,
    #                 min_storage_bytes_percentage: 1.0
    #               }
    #             }
    #           },
    #           advanced_cost_optimization_metrics: {
    #             is_enabled: false
    #           },
    #           advanced_data_protection_metrics: {
    #             is_enabled: false
    #           },
    #           detailed_status_codes_metrics: {
    #             is_enabled: false
    #           }
    #         },
    #         advanced_cost_optimization_metrics: {
    #           is_enabled: false
    #         },
    #         advanced_data_protection_metrics: {
    #           is_enabled: false
    #         },
    #         detailed_status_codes_metrics: {
    #           is_enabled: false
    #         },
    #         storage_lens_group_level: {
    #           selection_criteria: {
    #             include: ["StorageLensGroupArn"],
    #             exclude: ["StorageLensGroupArn"]
    #           }
    #         }
    #       },
    #       include: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"]
    #       },
    #       exclude: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"]
    #       },
    #       data_export: {
    #         s3_bucket_destination: {
    #           format: "CSV" # One of: ["CSV", "Parquet"], # required
    #           output_schema_version: "V_1" # One of: ["V_1"], # required
    #           account_id: "AccountId", # required
    #           arn: "S3BucketArnString", # required
    #           prefix: "Prefix",
    #           encryption: {
    #             sses3: {
    #             },
    #             ssekms: {
    #               key_id: "SSEKMSKeyId", # required
    #             }
    #           }
    #         },
    #         cloud_watch_metrics: {
    #           is_enabled: false, # required
    #         }
    #       },
    #       is_enabled: false, # required
    #       aws_org: {
    #         arn: "AwsOrgArn", # required
    #       },
    #       storage_lens_arn: "StorageLensArn"
    #     }
    #   }
    # @return [Types::GetStorageLensConfigurationResult]
    def get_storage_lens_configuration(params = {}, options = {})
      request = build_request(:get_storage_lens_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets the tags of Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:GetStorageLensConfigurationTagging</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetStorageLensConfigurationTaggingRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the Amazon S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_storage_lens_configuration_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetStorageLensConfigurationTaggingResult]
    def get_storage_lens_configuration_tagging(params = {}, options = {})
      request = build_request(:get_storage_lens_configuration_tagging, params)
      request.send_request(options)
    end

    # <p>
    # Retrieves the Storage Lens group configuration details.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #       <code>s3:GetStorageLensGroup</code> action. For more information about the required Storage Lens
    #       Groups permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #          <p>For information about Storage Lens groups errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList">List of Amazon S3 Storage
    #       Lens error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::GetStorageLensGroupRequest] params
    # @option params [String] :name
    #   <p>
    #   The name of the Storage Lens group that you're trying to retrieve the configuration details for.
    #   </p>
    # @option params [String] :account_id
    #   <p>
    #   The Amazon Web Services account ID associated with the Storage Lens group that you're trying to retrieve the details for.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StorageLensGroupName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_storage_lens_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_lens_group: {
    #       name: "StorageLensGroupName", # required
    #       filter: { # required
    #         match_any_prefix: ["Prefix"],
    #         match_any_suffix: ["Suffix"],
    #         match_any_tag: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           }
    #         ],
    #         match_object_age: {
    #           days_greater_than: 1,
    #           days_less_than: 1
    #         },
    #         match_object_size: {
    #           bytes_greater_than: 1,
    #           bytes_less_than: 1
    #         },
    #         and: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         },
    #         or: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         }
    #       },
    #       storage_lens_group_arn: "StorageLensGroupArn"
    #     }
    #   }
    # @return [Types::GetStorageLensGroupResult]
    def get_storage_lens_group(params = {}, options = {})
      request = build_request(:get_storage_lens_group, params)
      request.send_request(options)
    end

    # <p>Returns the list of access grants in your S3 Access Grants instance.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:ListAccessGrants</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessGrantsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants</code> request in order to retrieve the next page of
    #            results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    # @option params [String] :grantee_type
    #   <p>The type of the grantee to which access has been granted. It can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IAM</code> - An IAM user or role.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_USER</code> - Your corporate directory user. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DIRECTORY_GROUP</code> - Your corporate directory group. You can use
    #                  this option if you have added your corporate identity directory to IAM Identity
    #                  Center and associated the IAM Identity Center instance with your S3 Access Grants
    #                  instance.</p>
    #               </li>
    #            </ul>
    # @option params [String] :grantee_identifier
    #   <p>The unique identifer of the <code>Grantee</code>. If the grantee type is
    #               <code>IAM</code>, the identifier is the IAM Amazon Resource Name (ARN) of the user
    #            or role. If the grantee type is a directory user or group, the identifier is 128-bit
    #            universally unique identifier (UUID) in the format
    #               <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>. You can obtain this UUID from your
    #            Amazon Web Services IAM Identity Center instance.</p>
    # @option params [String] :permission
    #   <p>The type of permission granted to your S3 data, which can be set to one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>READ</code> – Grant read-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WRITE</code> – Grant write-only access to the S3 data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READWRITE</code> – Grant both read and write access to the S3 data.</p>
    #               </li>
    #            </ul>
    # @option params [String] :grant_scope
    #   <p>The S3 path of the data to which you are granting access. It is the result of appending
    #            the <code>Subprefix</code> to the location scope.</p>
    # @option params [String] :application_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity Center application associated
    #            with your Identity Center instance. If the grant includes an application ARN, the grantee
    #            can only access the S3 data through this application. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken",
    #     max_results: 1,
    #     grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #     grantee_identifier: "GranteeIdentifier",
    #     permission: "READ" # One of: ["READ", "WRITE", "READWRITE"],
    #     grant_scope: "S3Prefix",
    #     application_arn: "IdentityCenterApplicationArn"
    #   }
    #   options = {}
    #   response = client.list_access_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     access_grants_list: [
    #       {
    #         created_at: Time.now,
    #         access_grant_id: "AccessGrantId",
    #         access_grant_arn: "AccessGrantArn",
    #         grantee: {
    #           grantee_type: "DIRECTORY_USER" # One of: ["DIRECTORY_USER", "DIRECTORY_GROUP", "IAM"],
    #           grantee_identifier: "GranteeIdentifier"
    #         },
    #         permission: "READ" # One of: ["READ", "WRITE", "READWRITE"],
    #         access_grants_location_id: "AccessGrantsLocationId",
    #         access_grants_location_configuration: {
    #           s3_sub_prefix: "S3Prefix"
    #         },
    #         grant_scope: "S3Prefix",
    #         application_arn: "IdentityCenterApplicationArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessGrantsResult]
    def list_access_grants(params = {}, options = {})
      request = build_request(:list_access_grants, params)
      request.send_request(options)
    end

    # <p>Returns a list of S3 Access Grants instances. An S3 Access Grants instance serves as a logical grouping for
    #          your individual access grants. You can only have one S3 Access Grants instance per Region per
    #          account.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:ListAccessGrantsInstances</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessGrantsInstancesRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Instances</code> request in order to retrieve the next
    #            page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_grants_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     access_grants_instances_list: [
    #       {
    #         access_grants_instance_id: "AccessGrantsInstanceId",
    #         access_grants_instance_arn: "AccessGrantsInstanceArn",
    #         created_at: Time.now,
    #         identity_center_arn: "IdentityCenterArn",
    #         identity_center_instance_arn: "IdentityCenterArn",
    #         identity_center_application_arn: "IdentityCenterApplicationArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessGrantsInstancesResult]
    def list_access_grants_instances(params = {}, options = {})
      request = build_request(:list_access_grants_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of the locations registered in your S3 Access Grants instance.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:ListAccessGrantsLocations</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessGrantsLocationsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Access Grants Locations</code> request in order to retrieve the next
    #            page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    # @option params [String] :location_scope
    #   <p>The S3 path to the location that you are registering. The location scope can be the
    #            default S3 location <code>s3://</code>, the S3 path to a bucket
    #               <code>s3://<bucket></code>, or the S3 path to a bucket and prefix
    #               <code>s3://<bucket>/<prefix></code>. A prefix in S3 is a string of
    #            characters at the beginning of an object key name used to organize the objects that you
    #            store in your S3 buckets. For example, object key names that start with the
    #               <code>engineering/</code> prefix or object key names that start with the
    #               <code>marketing/campaigns/</code> prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken",
    #     max_results: 1,
    #     location_scope: "S3Prefix"
    #   }
    #   options = {}
    #   response = client.list_access_grants_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     access_grants_locations_list: [
    #       {
    #         created_at: Time.now,
    #         access_grants_location_id: "AccessGrantsLocationId",
    #         access_grants_location_arn: "AccessGrantsLocationArn",
    #         location_scope: "S3Prefix",
    #         iam_role_arn: "IAMRoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListAccessGrantsLocationsResult]
    def list_access_grants_locations(params = {}, options = {})
      request = build_request(:list_access_grants_locations, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns a list of the access points. You can retrieve up to 1,000 access points per call. If the call
    #          returns more than 1,000 access points (or the number specified in <code>maxResults</code>,
    #          whichever is less), the response will include a continuation token that you can use to list
    #          the additional access points.</p>
    #          <p>Returns only access points attached to S3 buckets by default. To return all access points specify
    #             <code>DataSourceType</code> as <code>ALL</code>.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>ListAccessPoints</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html">CreateAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html">DeleteAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html">GetAccessPoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessPointsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the account that owns the specified access points.</p>
    # @option params [String] :bucket
    #   <p>The name of the bucket whose associated access points you want to list.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @option params [String] :next_token
    #   <p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a
    #            continuation token in the <code>NextToken</code> field, then providing that value here
    #            causes Amazon S3 to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points that you want to include in the list. If the specified
    #            bucket has more than this number of access points, then the response will include a continuation
    #            token in the <code>NextToken</code> field that you can use to retrieve the next page of
    #            access points.</p>
    # @option params [String] :data_source_id
    #   <p>The unique identifier for the data source of the access point.</p>
    # @option params [String] :data_source_type
    #   <p>The type of the data source that the access point is attached to. Returns only access points attached to
    #            S3 buckets by default. To return all access points specify <code>DataSourceType</code> as
    #               <code>ALL</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #     data_source_id: "DataSourceId",
    #     data_source_type: "DataSourceType"
    #   }
    #   options = {}
    #   response = client.list_access_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_point_list: [
    #       {
    #         name: "AccessPointName", # required
    #         network_origin: "Internet" # One of: ["Internet", "VPC"], # required
    #         vpc_configuration: {
    #           vpc_id: "VpcId", # required
    #         },
    #         bucket: "AccessPointBucketName", # required
    #         access_point_arn: "S3AccessPointArn",
    #         alias: "Alias",
    #         bucket_account_id: "AccountId",
    #         data_source_id: "DataSourceId",
    #         data_source_type: "DataSourceType"
    #       }
    #     ],
    #     next_token: "NonEmptyMaxLength1024String"
    #   }
    # @return [Types::ListAccessPointsResult]
    def list_access_points(params = {}, options = {})
      request = build_request(:list_access_points, params)
      request.send_request(options)
    end

    # <p>Returns a list of the access points that are owned by the Amazon Web Services account and that are associated
    #          with the specified directory bucket.</p>
    #          <p>To list access points for general purpose buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html">ListAccesspoints</a>.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #             <code>s3express:ListAccessPointsForDirectoryBuckets</code>
    #          action.</p>
    #          <p>For information about REST API errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses">REST error responses</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessPointsForDirectoryBucketsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID that owns the access points.</p>
    # @option params [String] :directory_bucket
    #   <p>The name of the directory bucket associated with the access points you want to list.</p>
    # @option params [String] :next_token
    #   <p> If <code>NextToken</code> is returned, there are more access points available than requested in
    #            the <code>maxResults</code> value. The value of <code>NextToken</code> is a unique
    #            pagination token for each page. Make the call again using the returned token to retrieve
    #            the next page. Keep all other arguments unchanged. Each pagination token expires after 24
    #            hours. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points that you would like returned in the
    #               <code>ListAccessPointsForDirectoryBuckets</code> response. If the directory bucket is
    #            associated with more than this number of access points, the results include the pagination token
    #               <code>NextToken</code>. Make another call using the <code>NextToken</code> to retrieve
    #            more results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     directory_bucket: "BucketName",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_points_for_directory_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_point_list: [
    #       {
    #         name: "AccessPointName", # required
    #         network_origin: "Internet" # One of: ["Internet", "VPC"], # required
    #         vpc_configuration: {
    #           vpc_id: "VpcId", # required
    #         },
    #         bucket: "AccessPointBucketName", # required
    #         access_point_arn: "S3AccessPointArn",
    #         alias: "Alias",
    #         bucket_account_id: "AccountId",
    #         data_source_id: "DataSourceId",
    #         data_source_type: "DataSourceType"
    #       }
    #     ],
    #     next_token: "NonEmptyMaxLength1024String"
    #   }
    # @return [Types::ListAccessPointsForDirectoryBucketsResult]
    def list_access_points_for_directory_buckets(params = {}, options = {})
      request = build_request(:list_access_points_for_directory_buckets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns some or all (up to 1,000) access points associated with the Object Lambda Access Point per call. If there
    #          are more access points than what can be returned in one call, the response will include a
    #          continuation token that you can use to list the additional access points.</p>
    #          <p>The following actions are related to
    #          <code>ListAccessPointsForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html">CreateAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html">DeleteAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html">GetAccessPointForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListAccessPointsForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :next_token
    #   <p>If the list has more access points than can be returned in one call to this API, this field
    #            contains a continuation token that you can provide in subsequent calls to this API to
    #            retrieve additional access points.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access points that you want to include in the list. The response may
    #            contain fewer access points but will never contain more. If there are more than this number of
    #            access points, then the response will include a continuation token in the <code>NextToken</code>
    #            field that you can use to retrieve the next page of access points.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_points_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     object_lambda_access_point_list: [
    #       {
    #         name: "ObjectLambdaAccessPointName", # required
    #         object_lambda_access_point_arn: "ObjectLambdaAccessPointArn",
    #         alias: {
    #           value: "ObjectLambdaAccessPointAliasValue",
    #           status: "PROVISIONING" # One of: ["PROVISIONING", "READY"]
    #         }
    #       }
    #     ],
    #     next_token: "NonEmptyMaxLength1024String"
    #   }
    # @return [Types::ListAccessPointsForObjectLambdaResult]
    def list_access_points_for_object_lambda(params = {}, options = {})
      request = build_request(:list_access_points_for_object_lambda, params)
      request.send_request(options)
    end

    # <p>Use this API to list the access grants that grant the caller access to Amazon S3 data through
    #          S3 Access Grants. The caller (grantee) can be an Identity and Access Management (IAM) identity or Amazon Web Services Identity Center
    #          corporate directory identity. You must pass the Amazon Web Services account of the S3 data owner
    #          (grantor) in the request. You can, optionally, narrow the results by
    #             <code>GrantScope</code>, using a fragment of the data's S3 path, and S3 Access Grants will return
    #          only the grants with a path that contains the path fragment. You can also pass the
    #             <code>AllowedByApplication</code> filter in the request, which returns only the grants
    #          authorized for applications, whether the application is the caller's Identity Center
    #          application or any other application (<code>ALL</code>). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-list-grants.html">List
    #             the caller's access grants</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:ListCallerAccessGrants</code> permission to use this
    #                   operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListCallerAccessGrantsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :grant_scope
    #   <p>The S3 path of the data that you would like to access. Must start with
    #               <code>s3://</code>. You can optionally pass only the beginning characters of a path, and
    #            S3 Access Grants will search for all applicable grants for the path fragment. </p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Pass this value into a
    #            subsequent <code>List Caller Access Grants</code> request in order to retrieve the next
    #            page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of access grants that you would like returned in the <code>List
    #               Caller Access Grants</code> response. If the results include the pagination token
    #               <code>NextToken</code>, make another call using the <code>NextToken</code> to determine
    #            if there are more results.</p>
    # @option params [Boolean] :allowed_by_application
    #   <p>If this optional parameter is passed in the request, a filter is applied to the results.
    #            The results will include only the access grants for the caller's Identity Center
    #            application or for any other applications (<code>ALL</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     grant_scope: "S3Prefix",
    #     next_token: "ContinuationToken",
    #     max_results: 1,
    #     allowed_by_application: false
    #   }
    #   options = {}
    #   response = client.list_caller_access_grants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     caller_access_grants_list: [
    #       {
    #         permission: "READ" # One of: ["READ", "WRITE", "READWRITE"],
    #         grant_scope: "S3Prefix",
    #         application_arn: "IdentityCenterApplicationArn"
    #       }
    #     ]
    #   }
    # @return [Types::ListCallerAccessGrantsResult]
    def list_caller_access_grants(params = {}, options = {})
      request = build_request(:list_caller_access_grants, params)
      request.send_request(options)
    end

    # <p>Lists current S3 Batch Operations jobs as well as the jobs that have ended within the last 90
    #          days for the Amazon Web Services account making the request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>ListJobs</code> operation, you must have permission to perform
    #                   the <code>s3:ListJobs</code> action.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <p></p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html">UpdateJobPriority</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [Array<String>] :job_statuses
    #   <p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this
    #            element.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results. Use the token that Amazon S3 returned
    #            in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous
    #               <code>List Jobs</code> request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code>
    #            response. If there are more jobs than this number, the response will include a pagination
    #            token in the <code>NextToken</code> field to enable you to retrieve the next page of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_statuses: ["Active" # One of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"]],
    #     next_token: "StringForNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "StringForNextToken",
    #     jobs: [
    #       {
    #         job_id: "JobId",
    #         description: "NonEmptyMaxLength256String",
    #         operation: "LambdaInvoke" # One of: ["LambdaInvoke", "S3PutObjectCopy", "S3PutObjectAcl", "S3PutObjectTagging", "S3DeleteObjectTagging", "S3InitiateRestoreObject", "S3PutObjectLegalHold", "S3PutObjectRetention", "S3ReplicateObject", "S3ComputeObjectChecksum"],
    #         priority: 1,
    #         status: "Active" # One of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"],
    #         creation_time: Time.now,
    #         termination_date: Time.now,
    #         progress_summary: {
    #           total_number_of_tasks: 1,
    #           number_of_tasks_succeeded: 1,
    #           number_of_tasks_failed: 1,
    #           timers: {
    #             elapsed_time_in_active_seconds: 1
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListJobsResult]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns a list of the Multi-Region Access Points currently associated with the specified Amazon Web Services account.
    #          Each call can return up to 100 Multi-Region Access Points, the maximum number of Multi-Region Access Points that can be
    #          associated with a single account.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to <code>ListMultiRegionAccessPoint</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html">CreateMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html">DeleteMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html">DescribeMultiRegionAccessPointOperation</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html">GetMultiRegionAccessPoint</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListMultiRegionAccessPointsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :next_token
    #   <p>Not currently used. Do not use this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>Not currently used. Do not use this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_multi_region_access_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_points: [
    #       {
    #         name: "MultiRegionAccessPointName",
    #         alias: "MultiRegionAccessPointAlias",
    #         created_at: Time.now,
    #         public_access_block: {
    #           block_public_acls: false,
    #           ignore_public_acls: false,
    #           block_public_policy: false,
    #           restrict_public_buckets: false
    #         },
    #         status: "READY" # One of: ["READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"],
    #         regions: [
    #           {
    #             bucket: "BucketName",
    #             region: "RegionName",
    #             bucket_account_id: "AccountId"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NonEmptyMaxLength1024String"
    #   }
    # @return [Types::ListMultiRegionAccessPointsResult]
    def list_multi_region_access_points(params = {}, options = {})
      request = build_request(:list_multi_region_access_points, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated
    #          sender of the request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using Amazon S3 on Outposts</a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <p>For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts
    #          endpoint hostname prefix and <code>x-amz-outpost-id</code> in your request, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples">Examples</a> section.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListRegionalBucketsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :next_token
    #   <p></p>
    # @option params [Integer] :max_results
    #   <p></p>
    # @option params [String] :outpost_id
    #   <p>The ID of the Outposts resource.</p>
    #            <note>
    #               <p>This ID is required by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #     outpost_id: "NonEmptyMaxLength64String"
    #   }
    #   options = {}
    #   response = client.list_regional_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regional_bucket_list: [
    #       {
    #         bucket: "BucketName", # required
    #         bucket_arn: "S3RegionalBucketArn",
    #         public_access_block_enabled: false, # required
    #         creation_date: Time.now, # required
    #         outpost_id: "NonEmptyMaxLength64String"
    #       }
    #     ],
    #     next_token: "NonEmptyMaxLength1024String"
    #   }
    # @return [Types::ListRegionalBucketsResult]
    def list_regional_buckets(params = {}, options = {})
      request = build_request(:list_regional_buckets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Gets a list of Amazon S3 Storage Lens configurations. For more information about S3 Storage Lens, see
    #             <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your
    #             storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:ListStorageLensConfigurations</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListStorageLensConfigurationsRequest] params
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken"
    #   }
    #   options = {}
    #   response = client.list_storage_lens_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     storage_lens_configuration_list: [
    #       {
    #         id: "ConfigId", # required
    #         storage_lens_arn: "StorageLensArn", # required
    #         home_region: "S3AWSRegion", # required
    #         is_enabled: false
    #       }
    #     ]
    #   }
    # @return [Types::ListStorageLensConfigurationsResult]
    def list_storage_lens_configurations(params = {}, options = {})
      request = build_request(:list_storage_lens_configurations, params)
      request.send_request(options)
    end

    # <p>
    # Lists all the Storage Lens groups in the specified home Region.
    # </p>
    #          <p>To use this operation, you must have the permission to perform the
    #       <code>s3:ListStorageLensGroups</code> action. For more information about the required Storage Lens
    #       Groups permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #          <p>For information about Storage Lens groups errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList">List of Amazon S3 Storage
    #       Lens error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListStorageLensGroupsRequest] params
    # @option params [String] :account_id
    #   <p>
    #      The Amazon Web Services account ID that owns the Storage Lens groups.
    #   </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results, or <code>null</code> if there are no more results.
    #      </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken"
    #   }
    #   options = {}
    #   response = client.list_storage_lens_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ContinuationToken",
    #     storage_lens_group_list: [
    #       {
    #         name: "StorageLensGroupName", # required
    #         storage_lens_group_arn: "StorageLensGroupArn", # required
    #         home_region: "S3AWSRegion", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListStorageLensGroupsResult]
    def list_storage_lens_groups(params = {}, options = {})
      request = build_request(:list_storage_lens_groups, params)
      request.send_request(options)
    end

    # <p>This operation allows you to list all of the tags for a specified resource. Each tag is
    #          a label consisting of a key and value. Tags can help you organize, track costs for, and
    #          control access to resources. </p>
    #          <note>
    #             <p>This operation is only supported for the following Amazon S3 resources:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-db-tagging.html">Access Points for directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-tagging.html">Access Points for general purpose buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html">Storage Lens groups</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html">S3 Access Grants instances, registered locations, and grants</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>For Storage Lens groups and S3 Access Grants, you must have the
    #                      <code>s3:ListTagsForResource</code> permission to use this operation. </p>
    #                <p>For more information about the required Storage Lens Groups permissions, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #             </dd>
    #             <dt>Directory bucket permissions</dt>
    #             <dd>
    #                <p>For directory buckets and access points for directory buckets, you must have the <code>s3express:ListTagsForResource</code> permission to use this operation. For more information about directory buckets policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-permissions.html">Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>For information about S3 Tagging errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList">List of Amazon S3
    #             Tagging error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :account_id
    #   <p> The Amazon Web Services account ID of the resource owner. </p>
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the S3 resource that you want to list tags for. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     resource_arn: "S3ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Updates the resource policy of the S3 Access Grants instance. </p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:PutAccessGrantsInstanceResourcePolicy</code>
    #                   permission to use this operation. </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutAccessGrantsInstanceResourcePolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :policy
    #   <p>The resource policy of the S3 Access Grants instance that you are updating.</p>
    # @option params [String] :organization
    #   <p>The Organization of the resource policy of the S3 Access Grants instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     policy: "PolicyDocument", # required
    #     organization: "Organization"
    #   }
    #   options = {}
    #   response = client.put_access_grants_instance_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyDocument",
    #     organization: "Organization",
    #     created_at: Time.now
    #   }
    # @return [Types::PutAccessGrantsInstanceResourcePolicyResult]
    def put_access_grants_instance_resource_policy(params = {}, options = {})
      request = build_request(:put_access_grants_instance_resource_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Replaces configuration for an Object Lambda Access Point.</p>
    #          <p>The following actions are related to
    #             <code>PutAccessPointConfigurationForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html">GetAccessPointConfigurationForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutAccessPointConfigurationForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    # @option params [Types::ObjectLambdaConfiguration] :configuration
    #   <p>Object Lambda Access Point configuration document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     configuration: { # required
    #       supporting_access_point: "ObjectLambdaSupportingAccessPointArn", # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: ["GetObject-Range" # One of: ["GetObject-Range", "GetObject-PartNumber", "HeadObject-Range", "HeadObject-PartNumber"]],
    #       transformation_configurations: [ # required
    #         {
    #           actions: ["GetObject" # One of: ["GetObject", "HeadObject", "ListObjects", "ListObjectsV2"]], # required
    #           content_transformation: { # required
    #             # One of:
    #             aws_lambda: {
    #               function_arn: "FunctionArnString", # required
    #               function_payload: "AwsLambdaTransformationPayload"
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_access_point_configuration_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_access_point_configuration_for_object_lambda(params = {}, options = {})
      request = build_request(:put_access_point_configuration_for_object_lambda, params)
      request.send_request(options)
    end

    # <p>Associates an access policy with the specified access point. Each access point can have only one policy,
    #          so a request made to this API replaces any existing policy associated with the specified
    #          access point.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>PutAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html">GetAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html">DeleteAccessPointPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutAccessPointPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for owner of the bucket associated with the specified access point.</p>
    # @option params [String] :name
    #   <p>The name of the access point that you want to associate with the specified policy.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the access point accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name></code>. For example, to access the access point <code>reports-ap</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>. The value must be URL encoded. </p>
    # @option params [String] :policy
    #   <p>The policy that you want to apply to the specified access point. For more information about access point
    #            policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing data access with Amazon S3
    #               access points</a> or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets.html">Managing access to
    #               shared datasets in directory buckets with access points</a> in the
    #               <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_access_point_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_access_point_policy(params = {}, options = {})
      request = build_request(:put_access_point_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates or replaces resource policy for an Object Lambda Access Point. For an example policy, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli">Creating Object Lambda Access Points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>PutAccessPointPolicyForObjectLambda</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html">DeleteAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html">GetAccessPointPolicyForObjectLambda</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutAccessPointPolicyForObjectLambdaRequest] params
    # @option params [String] :account_id
    #   <p>The account ID for the account that owns the specified Object Lambda Access Point.</p>
    # @option params [String] :name
    #   <p>The name of the Object Lambda Access Point.</p>
    # @option params [String] :policy
    #   <p>Object Lambda Access Point resource policy document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     policy: "ObjectLambdaPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_access_point_policy_for_object_lambda(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_access_point_policy_for_object_lambda(params = {}, options = {})
      request = build_request(:put_access_point_policy_for_object_lambda, params)
      request.send_request(options)
    end

    # <p>Creates or replaces the access point scope for a directory bucket. You can use the access point
    #          scope to restrict access to specific prefixes, API operations, or a combination of
    #          both.</p>
    #          <note>
    #             <p>You can specify any amount of prefixes, but the total length of characters of all
    #             prefixes must be less than 256 bytes in size.</p>
    #          </note>
    #          <p>To use this operation, you must have the permission to perform the
    #             <code>s3express:PutAccessPointScope</code>
    #          action.</p>
    #          <p>For information about REST API errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses">REST error responses</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutAccessPointScopeRequest] params
    # @option params [String] :account_id
    #   <p> The Amazon Web Services account ID that owns the access point with scope that you want to create or replace.
    #         </p>
    # @option params [String] :name
    #   <p>The name of the access point with the scope that you want to create or replace.</p>
    # @option params [Types::Scope] :scope
    #   <p>Object prefixes, API operations, or a combination of both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId", # required
    #     name: "AccessPointName", # required
    #     scope: { # required
    #       prefixes: ["Prefix"],
    #       permissions: ["GetObject" # One of: ["GetObject", "GetObjectAttributes", "ListMultipartUploadParts", "ListBucket", "ListBucketMultipartUploads", "PutObject", "DeleteObject", "AbortMultipartUpload"]]
    #     }
    #   }
    #   options = {}
    #   response = client.put_access_point_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_access_point_scope(params = {}, options = {})
      request = build_request(:put_access_point_scope, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket. To put a
    #             lifecycle configuration to an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a> in the <i>Amazon S3 API Reference</i>.
    #          </p>
    #          </note>
    #          <p>Creates a new lifecycle configuration for the S3 on Outposts bucket or replaces an
    #          existing lifecycle configuration. Outposts buckets only support lifecycle configurations
    #          that delete/expire objects after a certain period of time and abort incomplete multipart
    #          uploads.</p>
    #          <p></p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to
    #          <code>PutBucketLifecycleConfiguration</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html">DeleteBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutBucketLifecycleConfigurationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     lifecycle_configuration: {
    #       rules: [
    #         {
    #           expiration: {
    #             date: Time.now,
    #             days: 1,
    #             expired_object_delete_marker: false
    #           },
    #           id: "ID",
    #           filter: {
    #             prefix: "Prefix",
    #             tag: {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #             and: {
    #               prefix: "Prefix",
    #               tags: [
    #                 {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 }
    #               ],
    #               object_size_greater_than: 1,
    #               object_size_less_than: 1
    #             },
    #             object_size_greater_than: 1,
    #             object_size_less_than: 1
    #           },
    #           status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           transitions: [
    #             {
    #               date: Time.now,
    #               days: 1,
    #               storage_class: "GLACIER" # One of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #             }
    #           ],
    #           noncurrent_version_transitions: [
    #             {
    #               noncurrent_days: 1,
    #               storage_class: "GLACIER" # One of: ["GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"]
    #             }
    #           ],
    #           noncurrent_version_expiration: {
    #             noncurrent_days: 1,
    #             newer_noncurrent_versions: 1
    #           },
    #           abort_incomplete_multipart_upload: {
    #             days_after_initiation: 1
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_bucket_lifecycle_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_bucket_lifecycle_configuration(params = {}, options = {})
      request = build_request(:put_bucket_lifecycle_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action puts a bucket policy to an Amazon S3 on Outposts bucket. To put a policy on an
    #             S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html">PutBucketPolicy</a> in the
    #                <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Applies an Amazon S3 bucket policy to an Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>If you are using an identity other than the root user of the Amazon Web Services account that owns the
    #          Outposts bucket, the calling identity must have the <code>PutBucketPolicy</code>
    #          permissions on the specified Outposts bucket and belong to the bucket owner's account in
    #          order to use this action.</p>
    #          <p>If you don't have <code>PutBucketPolicy</code> permissions, Amazon S3 returns a <code>403
    #             Access Denied</code> error. If you have the correct permissions, but you're not using an
    #          identity that belongs to the bucket owner's account, Amazon S3 returns a <code>405 Method Not
    #             Allowed</code> error.</p>
    #          <important>
    #             <p> As a security precaution, the root user of the Amazon Web Services account that owns a bucket can
    #             always use this action, even if the policy explicitly denies the root user the ability
    #             to perform this action. </p>
    #          </important>
    #          <p>For more information about bucket policies, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html">Using Bucket Policies and User
    #             Policies</a>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>PutBucketPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html">GetBucketPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html">DeleteBucketPolicy</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutBucketPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @option params [Boolean] :confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change
    #            this bucket policy in the future.</p>
    #            <note>
    #               <p>This is not supported by Amazon S3 on Outposts buckets.</p>
    #            </note>
    # @option params [String] :policy
    #   <p>The bucket policy as a JSON document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     confirm_remove_self_bucket_access: false,
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_bucket_policy(params = {}, options = {})
      request = build_request(:put_bucket_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action creates an Amazon S3 on Outposts bucket's replication configuration. To create
    #             an S3 bucket's replication configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html">PutBucketReplication</a>
    #             in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Creates a replication configuration or replaces an existing one. For information about
    #          S3 replication on Outposts configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html">Replicating objects for
    #             S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>It can take a while to propagate <code>PUT</code> or <code>DELETE</code> requests for
    #             a replication configuration to all S3 on Outposts systems. Therefore, the replication
    #             configuration that's returned by a <code>GET</code> request soon after a
    #                <code>PUT</code> or <code>DELETE</code> request might return a more recent result
    #             than what's on the Outpost. If an Outpost is offline, the delay in updating the
    #             replication configuration on that Outpost can be significant.</p>
    #          </note>
    #          <p>Specify the replication configuration in the request body. In the replication
    #          configuration, you provide the following information:</p>
    #          <ul>
    #             <li>
    #                <p>The name of the destination bucket or buckets where you want S3 on Outposts to
    #                replicate objects</p>
    #             </li>
    #             <li>
    #                <p>The Identity and Access Management (IAM) role that S3 on Outposts can assume to replicate objects on
    #                your behalf</p>
    #             </li>
    #             <li>
    #                <p>Other relevant information, such as replication rules</p>
    #             </li>
    #          </ul>
    #          <p>A replication configuration must include at least one rule and can contain a maximum of
    #          100. Each rule identifies a subset of objects to replicate by filtering the objects in the
    #          source Outposts bucket. To choose additional subsets of objects to replicate, add a rule
    #          for each subset.</p>
    #          <p>To specify a subset of the objects in the source Outposts bucket to apply a replication
    #          rule to, add the <code>Filter</code> element as a child of the <code>Rule</code> element.
    #          You can filter objects based on an object key prefix, one or more object tags, or both.
    #          When you add the <code>Filter</code> element in the configuration, you must also add the
    #          following elements: <code>DeleteMarkerReplication</code>, <code>Status</code>, and
    #             <code>Priority</code>.</p>
    #          <p>Using <code>PutBucketReplication</code> on Outposts requires that both the source and
    #          destination buckets must have versioning enabled. For information about enabling versioning
    #          on a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsManagingVersioning.html">Managing S3 Versioning
    #             for your S3 on Outposts bucket</a>.</p>
    #          <p>For information about S3 on Outposts replication failure reasons, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes">Replication failure reasons</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>
    #             <b>Handling Replication of Encrypted Objects</b>
    #          </p>
    #          <p>Outposts buckets are encrypted at all times. All the objects in the source Outposts
    #          bucket are encrypted and can be replicated. Also, all the replicas in the destination
    #          Outposts bucket are encrypted with the same encryption key as the objects in the source
    #          Outposts bucket.</p>
    #          <p>
    #             <b>Permissions</b>
    #          </p>
    #          <p>To create a <code>PutBucketReplication</code> request, you must have
    #             <code>s3-outposts:PutReplicationConfiguration</code> permissions for the bucket. The
    #          Outposts bucket owner has this permission by default and can grant it to others. For more
    #          information about permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html">Setting up IAM with
    #             S3 on Outposts</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html">Managing access to
    #             S3 on Outposts buckets</a>. </p>
    #          <note>
    #             <p>To perform this operation, the user or role must also have the
    #                <code>iam:CreateRole</code> and <code>iam:PassRole</code> permissions. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">Granting a user permissions to
    #                pass a role to an Amazon Web Services service</a>.</p>
    #          </note>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html#API_control_PutBucketReplication_Examples">Examples</a> section.</p>
    #          <p>The following operations are related to <code>PutBucketReplication</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html">GetBucketReplication</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html">DeleteBucketReplication</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutBucketReplicationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>Specifies the S3 on Outposts bucket to set the configuration for.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @option params [Types::ReplicationConfiguration] :replication_configuration
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     replication_configuration: { # required
    #       role: "Role", # required
    #       rules: [ # required
    #         {
    #           id: "ID",
    #           priority: 1,
    #           prefix: "Prefix",
    #           filter: {
    #             prefix: "Prefix",
    #             tag: {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #             and: {
    #               prefix: "Prefix",
    #               tags: [
    #                 {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 }
    #               ]
    #             }
    #           },
    #           status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           source_selection_criteria: {
    #             sse_kms_encrypted_objects: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             },
    #             replica_modifications: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #             }
    #           },
    #           existing_object_replication: {
    #             status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           },
    #           destination: { # required
    #             account: "AccountId",
    #             bucket: "BucketIdentifierString", # required
    #             replication_time: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               time: { # required
    #                 minutes: 1
    #               }
    #             },
    #             access_control_translation: {
    #               owner: "Destination" # One of: ["Destination"], # required
    #             },
    #             encryption_configuration: {
    #               replica_kms_key_id: "ReplicaKmsKeyID"
    #             },
    #             metrics: {
    #               status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #               event_threshold: {
    #                 minutes: 1
    #               }
    #             },
    #             storage_class: "STANDARD" # One of: ["STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"]
    #           },
    #           delete_marker_replication: {
    #             status: "Enabled" # One of: ["Enabled", "Disabled"], # required
    #           },
    #           bucket: "BucketIdentifierString", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_bucket_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_bucket_replication(params = {}, options = {})
      request = build_request(:put_bucket_replication, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action puts tags on an Amazon S3 on Outposts bucket. To put tags on an S3 bucket, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html">PutBucketTagging</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Sets the tags for an S3 on Outposts bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">Using
    #             Amazon S3 on Outposts</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>Use tags to organize your Amazon Web Services bill to reflect your own cost structure. To do this,
    #          sign up to get your Amazon Web Services account bill with tag key values included. Then, to see the cost
    #          of combined resources, organize your billing information according to resources with the
    #          same tag key values. For example, you can tag several resources with a specific application
    #          name, and then organize your billing information to see the total cost of that application
    #          across several services. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Cost allocation and
    #             tagging</a>.</p>
    #          <note>
    #             <p>Within a bucket, if you add a tag that has the same key as an existing tag, the new
    #             value overwrites the old value. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html"> Using cost allocation in Amazon S3
    #                bucket tags</a>.</p>
    #          </note>
    #          <p>To use this action, you must have permissions to perform the
    #             <code>s3-outposts:PutBucketTagging</code> action. The Outposts bucket owner has this
    #          permission by default and can grant this permission to others. For more information about
    #          permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources"> Permissions Related to Bucket Subresource Operations</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html">Managing
    #             access permissions to your Amazon S3 resources</a>.</p>
    #          <p>
    #             <code>PutBucketTagging</code> has the following special errors:</p>
    #          <ul>
    #             <li>
    #                <p>Error code: <code>InvalidTagError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The tag provided was not a valid tag. This error can occur if
    #                      the tag did not pass input validation. For information about tag restrictions,
    #                      see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">
    #                         User-Defined Tag Restrictions</a> and <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html">
    #                         Amazon Web Services-Generated Cost Allocation Tag Restrictions</a>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>MalformedXMLError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The XML provided does not match the schema.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>OperationAbortedError </code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: A conflicting conditional action is currently in progress
    #                      against this resource. Try again.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Error code: <code>InternalError</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Description: The service was unable to apply the provided tag to the
    #                      bucket.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples">Examples</a> section.</p>
    #          <p>The following actions are related to <code>PutBucketTagging</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html">GetBucketTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html">DeleteBucketTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutBucketTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket.</p>
    #            <p>For using this parameter with Amazon S3 on Outposts with the REST API, you must specify the name and the x-amz-outpost-id as well.</p>
    #            <p>For using this parameter with S3 on Outposts with the Amazon Web Services SDK and CLI, you must  specify the ARN of the bucket accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name></code>. For example, to access the bucket <code>reports</code> through Outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>. The value must be URL encoded.  </p>
    # @option params [Types::Tagging] :tagging
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     tagging: { # required
    #       tag_set: [ # required
    #         {
    #           key: "TagKeyString", # required
    #           value: "TagValueString", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_bucket_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_bucket_tagging(params = {}, options = {})
      request = build_request(:put_bucket_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation sets the versioning state
    #             for
    #             S3 on Outposts
    #             buckets
    #             only. To set the versioning state for an S3 bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html">PutBucketVersioning</a> in the <i>Amazon S3 API Reference</i>. </p>
    #          </note>
    #          <p>Sets the versioning state for an S3 on Outposts bucket. With
    #          S3
    #          Versioning,
    #          you can save multiple distinct copies of your
    #          objects
    #          and recover from unintended user actions and application failures.</p>
    #          <p>You can set the versioning state to one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Enabled</b> - Enables versioning for the objects in
    #                the bucket. All objects added to the bucket receive a unique version ID.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Suspended</b> - Suspends versioning for the objects
    #                in the bucket. All objects added to the bucket receive the version ID
    #                   <code>null</code>.</p>
    #             </li>
    #          </ul>
    #          <p>If you've never set versioning on your bucket, it has no versioning state. In that case,
    #          a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html">
    #             GetBucketVersioning</a> request does not return a versioning state value.</p>
    #          <p>When you enable S3 Versioning, for each object in your bucket, you have a current
    #          version and zero or more noncurrent versions. You can configure your bucket S3 Lifecycle
    #          rules to expire noncurrent versions after a specified time period. For more information,
    #          see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html"> Creating and managing
    #             a lifecycle configuration for your S3 on Outposts bucket</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <p>If you have an object expiration lifecycle configuration in your non-versioned bucket
    #          and you want to maintain the same permanent delete behavior when you enable versioning, you
    #          must add a noncurrent expiration policy. The noncurrent expiration lifecycle configuration
    #          will manage the deletes of the noncurrent object versions in the version-enabled bucket.
    #          For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html">Versioning</a> in the <i>Amazon S3
    #             User Guide</i>.</p>
    #          <p>All Amazon S3 on Outposts REST API requests for this action require an additional parameter of <code>x-amz-outpost-id</code> to be passed with the request. In addition, you must use an S3 on Outposts endpoint hostname prefix instead of <code>s3-control</code>. For an example of the request syntax for Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname prefix and the <code>x-amz-outpost-id</code> derived by using the access point ARN, see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples">Examples</a> section.</p>
    #          <p>The following operations are related to <code>PutBucketVersioning</code> for
    #          S3 on Outposts.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html">GetBucketVersioning</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html">GetBucketLifecycleConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutBucketVersioningRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 on Outposts bucket.</p>
    # @option params [String] :bucket
    #   <p>The S3 on Outposts bucket to set the versioning state for.</p>
    # @option params [String] :mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value
    #            that is displayed on your authentication device.</p>
    # @option params [Types::VersioningConfiguration] :versioning_configuration
    #   <p>The root-level tag for the <code>VersioningConfiguration</code> parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     mfa: "MFA",
    #     versioning_configuration: { # required
    #       mfa_delete: "Enabled" # One of: ["Enabled", "Disabled"],
    #       status: "Enabled" # One of: ["Enabled", "Suspended"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_bucket_versioning(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_bucket_versioning(params = {}, options = {})
      request = build_request(:put_bucket_versioning, params)
      request.send_request(options)
    end

    # <p>Sets the supplied tag-set on an S3 Batch Operations job.</p>
    #          <p>A tag is a key-value pair. You can associate S3 Batch Operations tags with any job by sending
    #          a PUT request against the tagging subresource that is associated with the job. To modify
    #          the existing tag set, you can either replace the existing tag set entirely, or make changes
    #          within the existing tag set by retrieving the existing tag set using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>, modify that tag set, and use this operation to replace the tag
    #          set with the one you modified. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags">Controlling
    #             access and labeling jobs using tags</a> in the <i>Amazon S3 User Guide</i>. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If you send this request with an empty tag set, Amazon S3 deletes the existing
    #                   tag set on the Batch Operations job. If you use this method, you are charged for a Tier
    #                   1 Request (PUT). For more information, see <a href="http://aws.amazon.com/s3/pricing/">Amazon S3 pricing</a>.</p>
    #                </li>
    #                <li>
    #                   <p>For deleting existing tags for your Batch Operations job, a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a> request is preferred because it achieves the same
    #                   result without incurring charges.</p>
    #                </li>
    #                <li>
    #                   <p>A few things to consider about using tags:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Amazon S3 limits the maximum number of tags to 50 tags per job.</p>
    #                      </li>
    #                      <li>
    #                         <p>You can associate up to 50 tags with a job as long as they have unique
    #                         tag keys.</p>
    #                      </li>
    #                      <li>
    #                         <p>A tag key can be up to 128 Unicode characters in length, and tag values
    #                         can be up to 256 Unicode characters in length.</p>
    #                      </li>
    #                      <li>
    #                         <p>The key and values are case sensitive.</p>
    #                      </li>
    #                      <li>
    #                         <p>For tagging-related restrictions related to characters and encodings, see
    #                            <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>PutJobTagging</code> operation, you must have permission to
    #                   perform the <code>s3:PutJobTagging</code> action.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html">GetJobTagging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html">DeleteJobTagging</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutJobTaggingRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID for the S3 Batch Operations job whose tags you want to replace.</p>
    # @option params [Array<Types::S3Tag>] :tags
    #   <p>The set of tags to associate with the S3 Batch Operations job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_job_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutJobTaggingResult]
    def put_job_tagging(params = {}, options = {})
      request = build_request(:put_job_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Associates an access control policy with the specified Multi-Region Access Point. Each Multi-Region Access Point can have only
    #          one policy, so a request made to this action replaces any existing policy that is
    #          associated with the specified Multi-Region Access Point.</p>
    #          <p>This action will always be routed to the US West (Oregon) Region. For more information
    #          about the restrictions around working with Multi-Region Access Points, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointRestrictions.html">Multi-Region Access Point
    #             restrictions and limitations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <p>The following actions are related to
    #          <code>PutMultiRegionAccessPointPolicy</code>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html">GetMultiRegionAccessPointPolicy</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html">GetMultiRegionAccessPointPolicyStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutMultiRegionAccessPointPolicyRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token used to identify the request and guarantee that requests are
    #            unique.</p>
    # @option params [Types::PutMultiRegionAccessPointPolicyInput] :details
    #   <p>A container element containing the details of the policy for the Multi-Region Access Point.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #       policy: "Policy", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_multi_region_access_point_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_token_arn: "AsyncRequestTokenARN"
    #   }
    # @return [Types::PutMultiRegionAccessPointPolicyResult]
    def put_multi_region_access_point_policy(params = {}, options = {})
      request = build_request(:put_multi_region_access_point_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Creates or modifies the <code>PublicAccessBlock</code> configuration for an
    #          Amazon Web Services account. For this operation, users must have the
    #             <code>s3:PutAccountPublicAccessBlock</code> permission. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html">
    #             Using Amazon S3 block public access</a>.</p>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html">GetPublicAccessBlock</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html">DeletePublicAccessBlock</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutPublicAccessBlockRequest] params
    # @option params [Types::PublicAccessBlockConfiguration] :public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified
    #            Amazon Web Services account.</p>
    # @option params [String] :account_id
    #   <p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration
    #            you want to set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     public_access_block_configuration: { # required
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false
    #     },
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.put_public_access_block(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_public_access_block(params = {}, options = {})
      request = build_request(:put_public_access_block, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Puts an Amazon S3 Storage Lens configuration. For more information about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Working with
    #             Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>. For a complete list of S3 Storage Lens metrics, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html">S3 Storage Lens metrics glossary</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:PutStorageLensConfiguration</code> action. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to use Amazon S3 Storage Lens</a> in the
    #                <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutStorageLensConfigurationRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @option params [Types::StorageLensConfiguration] :storage_lens_configuration
    #   <p>The S3 Storage Lens configuration.</p>
    # @option params [Array<Types::StorageLensTag>] :tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #     storage_lens_configuration: { # required
    #       id: "ConfigId", # required
    #       account_level: { # required
    #         activity_metrics: {
    #           is_enabled: false
    #         },
    #         bucket_level: { # required
    #           activity_metrics: {
    #             is_enabled: false
    #           },
    #           prefix_level: {
    #             storage_metrics: { # required
    #               is_enabled: false,
    #               selection_criteria: {
    #                 delimiter: "StorageLensPrefixLevelDelimiter",
    #                 max_depth: 1,
    #                 min_storage_bytes_percentage: 1.0
    #               }
    #             }
    #           },
    #           advanced_cost_optimization_metrics: {
    #             is_enabled: false
    #           },
    #           advanced_data_protection_metrics: {
    #             is_enabled: false
    #           },
    #           detailed_status_codes_metrics: {
    #             is_enabled: false
    #           }
    #         },
    #         advanced_cost_optimization_metrics: {
    #           is_enabled: false
    #         },
    #         advanced_data_protection_metrics: {
    #           is_enabled: false
    #         },
    #         detailed_status_codes_metrics: {
    #           is_enabled: false
    #         },
    #         storage_lens_group_level: {
    #           selection_criteria: {
    #             include: ["StorageLensGroupArn"],
    #             exclude: ["StorageLensGroupArn"]
    #           }
    #         }
    #       },
    #       include: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"]
    #       },
    #       exclude: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"]
    #       },
    #       data_export: {
    #         s3_bucket_destination: {
    #           format: "CSV" # One of: ["CSV", "Parquet"], # required
    #           output_schema_version: "V_1" # One of: ["V_1"], # required
    #           account_id: "AccountId", # required
    #           arn: "S3BucketArnString", # required
    #           prefix: "Prefix",
    #           encryption: {
    #             sses3: {
    #             },
    #             ssekms: {
    #               key_id: "SSEKMSKeyId", # required
    #             }
    #           }
    #         },
    #         cloud_watch_metrics: {
    #           is_enabled: false, # required
    #         }
    #       },
    #       is_enabled: false, # required
    #       aws_org: {
    #         arn: "AwsOrgArn", # required
    #       },
    #       storage_lens_arn: "StorageLensArn"
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_storage_lens_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_storage_lens_configuration(params = {}, options = {})
      request = build_request(:put_storage_lens_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Put or replace tags on an existing Amazon S3 Storage Lens configuration. For more information
    #          about S3 Storage Lens, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html">Assessing your storage activity and usage with Amazon S3 Storage Lens </a> in the
    #             <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>To use this action, you must have permission to perform the
    #                <code>s3:PutStorageLensConfigurationTagging</code> action. For more information, see
    #                <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html">Setting permissions to
    #                use Amazon S3 Storage Lens</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::PutStorageLensConfigurationTaggingRequest] params
    # @option params [String] :config_id
    #   <p>The ID of the S3 Storage Lens configuration.</p>
    # @option params [String] :account_id
    #   <p>The account ID of the requester.</p>
    # @option params [Array<Types::StorageLensTag>] :tags
    #   <p>The tag set of the S3 Storage Lens configuration.</p>
    #            <note>
    #               <p>You can set up to a maximum of 50 tags.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_storage_lens_configuration_tagging(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutStorageLensConfigurationTaggingResult]
    def put_storage_lens_configuration_tagging(params = {}, options = {})
      request = build_request(:put_storage_lens_configuration_tagging, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This operation is not supported by directory buckets.</p>
    #          </note>
    #          <p>Submits an updated route configuration for a Multi-Region Access Point. This API operation updates the
    #          routing status for the specified Regions from active to passive, or from passive to active.
    #          A value of <code>0</code> indicates a passive status, which means that traffic won't be
    #          routed to the specified Region. A value of <code>100</code> indicates an active status,
    #          which means that traffic will be routed to the specified Region. At least one Region must
    #          be active at all times.</p>
    #          <p>When the routing configuration is changed, any in-progress operations (uploads, copies,
    #          deletes, and so on) to formerly active Regions will continue to run to their final
    #          completion state (success or failure). The routing configurations of any Regions that
    #          aren’t specified remain unchanged.</p>
    #          <note>
    #             <p>Updated routing configurations might not be immediately applied. It can take up to 2
    #             minutes for your changes to take effect.</p>
    #          </note>
    #          <p>To submit routing control changes and failover requests, use the Amazon S3 failover control
    #          infrastructure endpoints in these five Amazon Web Services Regions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>us-east-1</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>us-west-2</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ap-southeast-2</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ap-northeast-1</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>eu-west-1</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::SubmitMultiRegionAccessPointRoutesRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the Multi-Region Access Point.</p>
    # @option params [String] :mrap
    #   <p>The Multi-Region Access Point ARN.</p>
    # @option params [Array<Types::MultiRegionAccessPointRoute>] :route_updates
    #   <p>The different routes that make up the new route configuration. Active routes return a
    #            value of <code>100</code>, and passive routes return a value of <code>0</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     mrap: "MultiRegionAccessPointId", # required
    #     route_updates: [ # required
    #       {
    #         bucket: "BucketName",
    #         region: "RegionName",
    #         traffic_dial_percentage: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.submit_multi_region_access_point_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SubmitMultiRegionAccessPointRoutesResult]
    def submit_multi_region_access_point_routes(params = {}, options = {})
      request = build_request(:submit_multi_region_access_point_routes, params)
      request.send_request(options)
    end

    # <p> Creates a new user-defined tag or updates an existing tag. Each tag is a label consisting of a key and value that is applied to your resource. Tags can help you organize, track costs for, and control access to your resources. You can add up to 50 Amazon Web Services resource tags for each S3 resource. </p>
    #          <note>
    #             <p>This operation is only supported for the following Amazon S3 resource:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-db-tagging.html">Access Points for directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-tagging.html">Access Points for general purpose buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html">S3 Storage Lens groups</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html">S3 Access Grants instances, registered locations, or grants</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <note>
    #             <p>This operation is only supported for the following Amazon S3 resource:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Directory
    #                      buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html">S3 Storage Lens
    #                      groups</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html">S3 Access Grants instances,
    #                      registered locations, or grants</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>For Storage Lens groups and S3 Access Grants, you must have the
    #                      <code>s3:TagResource</code> permission to use this operation. </p>
    #                <p>For more information about the required Storage Lens Groups permissions, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #             </dd>
    #             <dt>Directory bucket permissions</dt>
    #             <dd>
    #                <p>For directory buckets and access points for directory buckets, you must have the <code>s3express:TagResource</code> permission to use this operation. For more information about directory buckets policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-permissions.html">Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>For information about S3 Tagging errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList">List of Amazon S3 Tagging error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :account_id
    #   <p>
    #   The Amazon Web Services account ID that created the S3 resource that you're trying to add tags to or the requester's account ID. 
    #   </p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 resource that you're applying tags to. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The Amazon Web Services resource tags that you want to add to the specified S3 resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     resource_arn: "S3ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>This operation removes the specified user-defined tags from an S3 resource. You can pass
    #          one or more tag keys. </p>
    #          <note>
    #             <p>This operation is only supported for the following Amazon S3 resources:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-db-tagging.html">Access Points for directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-tagging.html">Access Points for general purpose buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Directory buckets</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-lens-groups.html">Storage Lens groups</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-grants-tagging.html">S3 Access Grants instances, registered locations, and grants</a>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>For Storage Lens groups and S3 Access Grants, you must have the
    #                      <code>s3:UntagResource</code> permission to use this operation. </p>
    #                <p>For more information about the required Storage Lens Groups permissions, see
    #                      <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #             </dd>
    #             <dt>Directory bucket permissions</dt>
    #             <dd>
    #                <p>For directory buckets and access points for directory buckets, you must have
    #                   the <code>s3express:UntagResource</code> permission to use this operation.
    #                   For more information about directory buckets policies and permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-permissions.html">Identity and Access Management (IAM) for S3 Express One Zone</a> in the <i>Amazon S3 User Guide</i>.</p>
    #             </dd>
    #             <dt>HTTP Host header syntax</dt>
    #             <dd>
    #                <p>
    #                   <b>Directory buckets </b> - The HTTP Host header syntax is <code>s3express-control.<i>region</i>.amazonaws.com</code>.</p>
    #             </dd>
    #          </dl>
    #          <p>For information about S3 Tagging errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3TaggingErrorCodeList">List of Amazon S3
    #             Tagging error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :account_id
    #   <p> The Amazon Web Services account ID that owns the resource that you're trying to remove the tags from.
    #         </p>
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 resource that you're removing tags from. The
    #            tagged resource can be a directory bucket, S3 Storage Lens group or S3 Access Grants instance,
    #            registered location, or grant.</p>
    # @option params [Array<String>] :tag_keys
    #   <p> The array of tag key-value pairs that you're trying to remove from of the S3 resource.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     resource_arn: "S3ResourceArn", # required
    #     tag_keys: ["TagKeyString"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the IAM role of a registered location in your S3 Access Grants instance.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:UpdateAccessGrantsLocation</code> permission to use
    #                   this operation. </p>
    #             </dd>
    #             <dt>Additional Permissions</dt>
    #             <dd>
    #                <p>You must also have the following permission: <code>iam:PassRole</code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::UpdateAccessGrantsLocationRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the S3 Access Grants instance.</p>
    # @option params [String] :access_grants_location_id
    #   <p>The ID of the registered location that you are updating. S3 Access Grants assigns this ID when you
    #            register the location. S3 Access Grants assigns the ID <code>default</code> to the default location
    #               <code>s3://</code> and assigns an auto-generated ID to other locations that you
    #            register. </p>
    #            <p>The ID of the registered location to which you are granting access. S3 Access Grants assigned this
    #            ID when you registered the location. S3 Access Grants assigns the ID <code>default</code> to the
    #            default location <code>s3://</code> and assigns an auto-generated ID to other locations
    #            that you register. </p>
    #            <p>If you are passing the <code>default</code> location, you cannot create an access grant
    #            for the entire default location. You must also specify a bucket or a bucket and prefix in
    #            the <code>Subprefix</code> field. </p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the registered location. S3 Access Grants
    #            assumes this role to manage access to the registered location. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     access_grants_location_id: "AccessGrantsLocationId", # required
    #     iam_role_arn: "IAMRoleArn", # required
    #   }
    #   options = {}
    #   response = client.update_access_grants_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_at: Time.now,
    #     access_grants_location_id: "AccessGrantsLocationId",
    #     access_grants_location_arn: "AccessGrantsLocationArn",
    #     location_scope: "S3Prefix",
    #     iam_role_arn: "IAMRoleArn"
    #   }
    # @return [Types::UpdateAccessGrantsLocationResult]
    def update_access_grants_location(params = {}, options = {})
      request = build_request(:update_access_grants_location, params)
      request.send_request(options)
    end

    # <p>Updates an existing S3 Batch Operations job's priority. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>UpdateJobPriority</code> operation, you must have permission
    #                   to perform the <code>s3:UpdateJobPriority</code> action.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::UpdateJobPriorityRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID for the job whose priority you want to update.</p>
    # @option params [Integer] :priority
    #   <p>The priority you want to assign to this job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     priority: 1, # required
    #   }
    #   options = {}
    #   response = client.update_job_priority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     priority: 1, # required
    #   }
    # @return [Types::UpdateJobPriorityResult]
    def update_job_priority(params = {}, options = {})
      request = build_request(:update_job_priority, params)
      request.send_request(options)
    end

    # <p>Updates the status for the specified job. Use this operation to confirm that you want to
    #          run a job or to cancel an existing job. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html">S3 Batch Operations</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>To use the <code>UpdateJobStatus</code> operation, you must have permission to
    #                   perform the <code>s3:UpdateJobStatus</code> action.</p>
    #             </dd>
    #          </dl>
    #          <p>Related actions include:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html">CreateJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html">ListJobs</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html">DescribeJob</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html">UpdateJobStatus</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::UpdateJobStatusRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID associated with the S3 Batch Operations job.</p>
    # @option params [String] :job_id
    #   <p>The ID of the job whose status you want to update.</p>
    # @option params [String] :requested_job_status
    #   <p>The status that you want to move the specified job to.</p>
    # @option params [String] :status_update_reason
    #   <p>A description of the reason why you want to change the specified job's status. This
    #            field can be any string up to the maximum length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     requested_job_status: "Cancelled" # One of: ["Cancelled", "Ready"], # required
    #     status_update_reason: "JobStatusUpdateReason"
    #   }
    #   options = {}
    #   response = client.update_job_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     status: "Active" # One of: ["Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"],
    #     status_update_reason: "JobStatusUpdateReason"
    #   }
    # @return [Types::UpdateJobStatusResult]
    def update_job_status(params = {}, options = {})
      request = build_request(:update_job_status, params)
      request.send_request(options)
    end

    # <p>
    # Updates the existing Storage Lens group.</p>
    #          <p>To use this operation, you must have the permission to perform the
    #       <code>s3:UpdateStorageLensGroup</code> action. For more information about the required Storage Lens
    #       Groups permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_iam_permissions.html#storage_lens_groups_permissions">Setting account permissions to use S3 Storage Lens groups</a>.</p>
    #          <p>For information about Storage Lens groups errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#S3LensErrorCodeList">List of Amazon S3 Storage
    #       Lens error codes</a>.</p>
    #          <important>
    #             <p>You must URL encode any signed header values that contain spaces. For example, if your header value is <code>my  file.txt</code>, containing two spaces after <code>my</code>, you must URL encode this value to <code>my%20%20file.txt</code>.</p>
    #          </important>
    # @param [Hash, Types::UpdateStorageLensGroupRequest] params
    # @option params [String] :name
    #   <p>
    #   The name of the Storage Lens group that you want to update.
    #   </p>
    # @option params [String] :account_id
    #   <p>
    #   The Amazon Web Services account ID of the Storage Lens group owner.
    #   </p>
    # @option params [Types::StorageLensGroup] :storage_lens_group
    #   <p>
    #   The JSON file that contains the Storage Lens group configuration.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StorageLensGroupName", # required
    #     account_id: "AccountId",
    #     storage_lens_group: { # required
    #       name: "StorageLensGroupName", # required
    #       filter: { # required
    #         match_any_prefix: ["Prefix"],
    #         match_any_suffix: ["Suffix"],
    #         match_any_tag: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           }
    #         ],
    #         match_object_age: {
    #           days_greater_than: 1,
    #           days_less_than: 1
    #         },
    #         match_object_size: {
    #           bytes_greater_than: 1,
    #           bytes_less_than: 1
    #         },
    #         and: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         },
    #         or: {
    #           match_any_prefix: ["Prefix"],
    #           match_any_suffix: ["Suffix"],
    #           match_any_tag: [
    #             {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             }
    #           ],
    #           match_object_age: {
    #             days_greater_than: 1,
    #             days_less_than: 1
    #           },
    #           match_object_size: {
    #             bytes_greater_than: 1,
    #             bytes_less_than: 1
    #           }
    #         }
    #       },
    #       storage_lens_group_arn: "StorageLensGroupArn"
    #     }
    #   }
    #   options = {}
    #   response = client.update_storage_lens_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_storage_lens_group(params = {}, options = {})
      request = build_request(:update_storage_lens_group, params)
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
      context[:gem_name] = 'aws-sdk-s3control'
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
          rest_xml: Aws::Core::RestXml
        }
      end
    end
  end
end
