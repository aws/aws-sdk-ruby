# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:redshiftserverless)

module Aws::RedshiftServerless
  # An API client for Aws::RedshiftServerless.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RedshiftServerless
    @identifier = :redshiftserverless

    add_plugin(::Aws::RedshiftServerless::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RedshiftServerless::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Converts a recovery point to a snapshot. For more information about recovery points and snapshots, 
    #          see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html">Working with snapshots and recovery points</a>.</p>
    # @param [Hash, Types::ConvertRecoveryPointToSnapshotRequest] params
    # @option params [String] :recovery_point_id
    #   <p>The unique identifier of the recovery point.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot.</p>
    # @option params [Integer] :retention_period
    #   <p>How long to retain the snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag objects</a> 
    #            to associate with the created snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_point_id: "String", # required
    #     snapshot_name: "String", # required
    #     retention_period: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.convert_recovery_point_to_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       namespace_name: "String",
    #       namespace_arn: "String",
    #       snapshot_name: "String",
    #       snapshot_create_time: Time.now,
    #       admin_username: "String",
    #       status: "SnapshotStatus",
    #       kms_key_id: "KmsKeyId",
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       snapshot_retention_period: 1,
    #       snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       snapshot_arn: "String",
    #       accounts_with_restore_access: ["String"],
    #       accounts_with_provisioned_restore_access: ["String"],
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::ConvertRecoveryPointToSnapshotResponse]
    def convert_recovery_point_to_snapshot(params = {}, options = {})
      request = build_request(:convert_recovery_point_to_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a custom domain association for Amazon Redshift Serverless.</p>
    # @param [Hash, Types::CreateCustomDomainAssociationRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name to associate with the workgroup.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #     custom_domain_name: "CustomDomainName", # required
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #   }
    #   options = {}
    #   response = client.create_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_domain_name: "CustomDomainName",
    #     workgroup_name: "WorkgroupName",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     custom_domain_certificate_expiry_time: Time.now
    #   }
    # @return [Types::CreateCustomDomainAssociationResponse]
    def create_custom_domain_association(params = {}, options = {})
      request = build_request(:create_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Redshift Serverless managed VPC endpoint.</p>
    # @param [Hash, Types::CreateEndpointAccessRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the VPC endpoint. An endpoint name must contain 1-30 characters. 
    #            Valid characters are A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. 
    #            The name can't contain two consecutive hyphens or end with a hyphen.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The unique identifers of subnets from which 
    #            Amazon Redshift Serverless chooses one to deploy a VPC endpoint.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup to associate with the VPC endpoint.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The unique identifiers of the security group that defines the ports, 
    #            protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>
    # @option params [String] :owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #     subnet_ids: ["SubnetId"], # required
    #     workgroup_name: "String", # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     owner_account: "OwnerAccount"
    #   }
    #   options = {}
    #   response = client.create_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_name: "String",
    #       endpoint_status: "String",
    #       workgroup_name: "String",
    #       endpoint_create_time: Time.now,
    #       port: 1,
    #       address: "String",
    #       subnet_ids: ["SubnetId"],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "VpcSecurityGroupId",
    #           status: "String"
    #         }
    #       ],
    #       vpc_endpoint: {
    #         vpc_endpoint_id: "String",
    #         vpc_id: "String",
    #         network_interfaces: [
    #           {
    #             network_interface_id: "String",
    #             subnet_id: "String",
    #             private_ip_address: "String",
    #             availability_zone: "String",
    #             ipv6_address: "String"
    #           }
    #         ]
    #       },
    #       endpoint_arn: "String"
    #     }
    #   }
    # @return [Types::CreateEndpointAccessResponse]
    def create_endpoint_access(params = {}, options = {})
      request = build_request(:create_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Creates a namespace in Amazon Redshift Serverless.</p>
    # @param [Hash, Types::CreateNamespaceRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace.</p>
    # @option params [String] :admin_username
    #   <p>The username of the administrator for the first database created in the namespace.</p>
    # @option params [String] :admin_user_password
    #   <p>The password of the administrator for the first database created in the namespace.</p>
    #            <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p>
    # @option params [String] :db_name
    #   <p>The name of the first database created in the namespace.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace.</p>
    # @option params [Array<String>] :iam_roles
    #   <p>A list of IAM roles to associate with the namespace.</p>
    # @option params [Array<String>] :log_exports
    #   <p>The types of logs the namespace can export. 
    #            Available export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag instances.</p>
    # @option params [Boolean] :manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. 
    #            You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. 
    #            If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses 
    #            <code>adminUserPassword</code> for the admin user account's password.
    #         </p>
    # @option params [String] :admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. 
    #            You can only use this parameter if <code>manageAdminPassword</code> is true.</p>
    # @option params [String] :redshift_idc_application_arn
    #   <p>The ARN for the Redshift application that integrates with IAM Identity Center.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     admin_username: "DbUser",
    #     admin_user_password: "DbPassword",
    #     db_name: "String",
    #     kms_key_id: "String",
    #     default_iam_role_arn: "String",
    #     iam_roles: ["IamRoleArn"],
    #     log_exports: ["LogExport"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     manage_admin_password: false,
    #     admin_password_secret_kms_key_id: "KmsKeyId",
    #     redshift_idc_application_arn: "RedshiftIdcApplicationArn"
    #   }
    #   options = {}
    #   response = client.create_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::CreateNamespaceResponse]
    def create_namespace(params = {}, options = {})
      request = build_request(:create_namespace, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Redshift Serverless reservation, which gives you the option to commit to a specified number of Redshift Processing Units (RPUs) 
    #          for a year at a discount from Serverless on-demand (OD) rates.</p>
    # @param [Hash, Types::CreateReservationRequest] params
    # @option params [Integer] :capacity
    #   <p>The number of Redshift Processing Units (RPUs) to reserve.</p>
    # @option params [String] :offering_id
    #   <p>The ID of the offering associated with the reservation. The offering determines the payment schedule for the reservation.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services 
    #            SDK populates this field. This token must be a valid UUIDv4 value. For more information about idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">
    #               Making retries safe with idempotent APIs
    #            </a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity: 1, # required
    #     offering_id: "OfferingId", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation: {
    #       reservation_id: "ReservationId",
    #       reservation_arn: "ReservationArn",
    #       start_date: Time.now,
    #       end_date: Time.now,
    #       capacity: 1,
    #       offering: {
    #         offering_id: "OfferingId",
    #         duration: 1,
    #         upfront_charge: 1.0,
    #         hourly_charge: 1.0,
    #         currency_code: "CurrencyCode",
    #         offering_type: "OfferingType"
    #       },
    #       status: "Status"
    #     }
    #   }
    # @return [Types::CreateReservationResponse]
    def create_reservation(params = {}, options = {})
      request = build_request(:create_reservation, params)
      request.send_request(options)
    end

    # <p>Creates a scheduled action. A scheduled action contains a schedule and an Amazon Redshift API action. 
    #          For example, you can create a schedule of when to run the <code>CreateSnapshot</code> API operation.</p>
    # @param [Hash, Types::CreateScheduledActionRequest] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    # @option params [Types::TargetAction] :target_action
    #   <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p>
    #            <p>
    #               <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code>
    #            </p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>
    #            <ul>
    #               <li>
    #                  <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see 
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. 
    #            This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots. (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. 
    #            For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for 
    #               Amazon Redshift</a> in the Amazon Redshift Management Guide</p>
    # @option params [String] :namespace_name
    #   <p>The name of the namespace for which to create a scheduled action.</p>
    # @option params [Boolean] :enabled
    #   <p>Indicates whether the schedule is enabled. If false, the scheduled action does not trigger. For more information about <code>state</code> 
    #            of the scheduled action, see <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_ScheduledAction.html">ScheduledAction</a>.</p>
    # @option params [String] :scheduled_action_description
    #   <p>The description of the scheduled action.</p>
    # @option params [Time] :start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger.</p>
    # @option params [Time] :end_time
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "ScheduledActionName", # required
    #     target_action: { # required
    #       # One of:
    #       create_snapshot: {
    #         namespace_name: "NamespaceName", # required
    #         snapshot_name_prefix: "SnapshotNamePrefix", # required
    #         retention_period: 1,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     },
    #     schedule: { # required
    #       # One of:
    #       at: Time.now,
    #       cron: "String"
    #     },
    #     role_arn: "IamRoleArn", # required
    #     namespace_name: "NamespaceName", # required
    #     enabled: false,
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.create_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action: {
    #       scheduled_action_name: "ScheduledActionName",
    #       schedule: {
    #         # One of:
    #         at: Time.now,
    #         cron: "String"
    #       },
    #       scheduled_action_description: "String",
    #       next_invocations: [Time.now],
    #       role_arn: "IamRoleArn",
    #       state: "State",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       target_action: {
    #         # One of:
    #         create_snapshot: {
    #           namespace_name: "NamespaceName", # required
    #           snapshot_name_prefix: "SnapshotNamePrefix", # required
    #           retention_period: 1,
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       namespace_name: "NamespaceName",
    #       scheduled_action_uuid: "String"
    #     }
    #   }
    # @return [Types::CreateScheduledActionResponse]
    def create_scheduled_action(params = {}, options = {})
      request = build_request(:create_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of all databases in a namespace.
    #          For more information about snapshots, see 
    #          <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery-points.html">
    #          Working with snapshots and recovery points</a>.</p>
    # @param [Hash, Types::CreateSnapshotRequest] params
    # @option params [String] :namespace_name
    #   <p>The namespace to create a snapshot for.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot.</p>
    # @option params [Integer] :retention_period
    #   <p>How long to retain the created snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of <a href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag objects</a> to associate with the snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "String", # required
    #     snapshot_name: "String", # required
    #     retention_period: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       namespace_name: "String",
    #       namespace_arn: "String",
    #       snapshot_name: "String",
    #       snapshot_create_time: Time.now,
    #       admin_username: "String",
    #       status: "SnapshotStatus",
    #       kms_key_id: "KmsKeyId",
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       snapshot_retention_period: 1,
    #       snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       snapshot_arn: "String",
    #       accounts_with_restore_access: ["String"],
    #       accounts_with_provisioned_restore_access: ["String"],
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::CreateSnapshotResponse]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot copy configuration that lets you copy snapshots to another Amazon Web Services Region.</p>
    # @param [Hash, Types::CreateSnapshotCopyConfigurationRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to copy snapshots from.</p>
    # @option params [String] :destination_region
    #   <p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>
    # @option params [Integer] :snapshot_retention_period
    #   <p>The retention period of the snapshots that you copy to the destination Amazon Web Services Region.</p>
    # @option params [String] :destination_kms_key_id
    #   <p>The KMS key to use to encrypt your snapshots in the destination Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     destination_region: "String", # required
    #     snapshot_retention_period: 1,
    #     destination_kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.create_snapshot_copy_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_copy_configuration: { # required
    #       snapshot_copy_configuration_id: "String",
    #       snapshot_copy_configuration_arn: "String",
    #       namespace_name: "NamespaceName",
    #       destination_region: "String",
    #       snapshot_retention_period: 1,
    #       destination_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::CreateSnapshotCopyConfigurationResponse]
    def create_snapshot_copy_configuration(params = {}, options = {})
      request = build_request(:create_snapshot_copy_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a usage limit for a specified Amazon Redshift Serverless usage type. The usage limit is identified by the returned usage limit identifier.
    #       </p>
    # @param [Hash, Types::CreateUsageLimitRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.</p>
    # @option params [String] :usage_type
    #   <p>The type of Amazon Redshift Serverless usage to create a usage limit for.</p>
    # @option params [Integer] :amount
    #   <p>The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data
    #            transferred between Regions in cross-account sharing. The value must be a positive number.</p>
    # @option params [String] :period
    #   <p>The time period that the amount applies to. A weekly period begins on Sunday. The default is monthly.</p>
    # @option params [String] :breach_action
    #   <p>The action that Amazon Redshift Serverless takes when the limit is reached. The default is log.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     usage_type: "UsageLimitUsageType", # required
    #     amount: 1, # required
    #     period: "UsageLimitPeriod",
    #     breach_action: "UsageLimitBreachAction"
    #   }
    #   options = {}
    #   response = client.create_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit: {
    #       usage_limit_id: "String",
    #       usage_limit_arn: "String",
    #       resource_arn: "String",
    #       usage_type: "UsageLimitUsageType",
    #       amount: 1,
    #       period: "UsageLimitPeriod",
    #       breach_action: "UsageLimitBreachAction"
    #     }
    #   }
    # @return [Types::CreateUsageLimitResponse]
    def create_usage_limit(params = {}, options = {})
      request = build_request(:create_usage_limit, params)
      request.send_request(options)
    end

    # <p>Creates an workgroup in Amazon Redshift Serverless.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #          you own in a Region from reaching or being reached from the internet through internet
    #          gateways and egress-only internet gateways. If a workgroup is in an account with VPC BPA
    #          turned on, the following capabilities are blocked: </p>
    #          <ul>
    #             <li>
    #                <p>Creating a public access workgroup</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private workgroup to public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is
    #                public</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @param [Hash, Types::CreateWorkgroupRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the created workgroup.</p>
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to associate with the workgroup.</p>
    # @option params [Integer] :base_capacity
    #   <p>The base data warehouse capacity of the workgroup in Redshift Processing Units (RPUs).</p>
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>The value that specifies whether to turn on enhanced virtual 
    #            private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC instead of over the internet.</p>
    # @option params [Array<Types::ConfigParameter>] :config_parameters
    #   <p>An array of parameters to set for advanced control over a database. The
    #            options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,
    #            <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let you define performance boundaries. For more information about query monitoring rules and available metrics, see 
    #            <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless">
    #               Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>An array of security group IDs to associate with the workgroup.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs to associate with the workgroup.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>A value that specifies whether the workgroup can be accessed from a public network.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A array of tag instances.</p>
    # @option params [Integer] :port
    #   <p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>
    # @option params [Types::PerformanceTarget] :price_performance_target
    #   <p>An object that represents the price performance target settings for the workgroup.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    # @option params [String] :track_name
    #   <p>An optional parameter for the name of the track for the workgroup. If you don't provide 
    #            a track name, the workgroup is assigned to the <code>current</code> track.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #     namespace_name: "NamespaceName", # required
    #     base_capacity: 1,
    #     enhanced_vpc_routing: false,
    #     config_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue"
    #       }
    #     ],
    #     security_group_ids: ["SecurityGroupId"],
    #     subnet_ids: ["SubnetId"],
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     port: 1,
    #     max_capacity: 1,
    #     price_performance_target: {
    #       status: "PerformanceTargetStatus",
    #       level: 1
    #     },
    #     ip_address_type: "IpAddressType",
    #     track_name: "TrackName"
    #   }
    #   options = {}
    #   response = client.create_workgroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workgroup: {
    #       workgroup_id: "String",
    #       workgroup_arn: "String",
    #       workgroup_name: "WorkgroupName",
    #       namespace_name: "String",
    #       base_capacity: 1,
    #       enhanced_vpc_routing: false,
    #       config_parameters: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue"
    #         }
    #       ],
    #       security_group_ids: ["SecurityGroupId"],
    #       subnet_ids: ["SubnetId"],
    #       status: "WorkgroupStatus",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       publicly_accessible: false,
    #       creation_date: Time.now,
    #       port: 1,
    #       custom_domain_name: "CustomDomainName",
    #       custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #       custom_domain_certificate_expiry_time: Time.now,
    #       workgroup_version: "String",
    #       patch_version: "String",
    #       max_capacity: 1,
    #       cross_account_vpcs: ["String"],
    #       ip_address_type: "IpAddressType",
    #       price_performance_target: {
    #         status: "PerformanceTargetStatus",
    #         level: 1
    #       },
    #       track_name: "TrackName",
    #       pending_track_name: "TrackName"
    #     }
    #   }
    # @return [Types::CreateWorkgroupResponse]
    def create_workgroup(params = {}, options = {})
      request = build_request(:create_workgroup, params)
      request.send_request(options)
    end

    # <p>Deletes a custom domain association for Amazon Redshift Serverless.</p>
    # @param [Hash, Types::DeleteCustomDomainAssociationRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #     custom_domain_name: "CustomDomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCustomDomainAssociationResponse]
    def delete_custom_domain_association(params = {}, options = {})
      request = build_request(:delete_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Redshift Serverless managed VPC endpoint.</p>
    # @param [Hash, Types::DeleteEndpointAccessRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the VPC endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_name: "String",
    #       endpoint_status: "String",
    #       workgroup_name: "String",
    #       endpoint_create_time: Time.now,
    #       port: 1,
    #       address: "String",
    #       subnet_ids: ["SubnetId"],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "VpcSecurityGroupId",
    #           status: "String"
    #         }
    #       ],
    #       vpc_endpoint: {
    #         vpc_endpoint_id: "String",
    #         vpc_id: "String",
    #         network_interfaces: [
    #           {
    #             network_interface_id: "String",
    #             subnet_id: "String",
    #             private_ip_address: "String",
    #             availability_zone: "String",
    #             ipv6_address: "String"
    #           }
    #         ]
    #       },
    #       endpoint_arn: "String"
    #     }
    #   }
    # @return [Types::DeleteEndpointAccessResponse]
    def delete_endpoint_access(params = {}, options = {})
      request = build_request(:delete_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Deletes a namespace from Amazon Redshift Serverless. 
    #          Before you delete the namespace, you can create a final snapshot that has all of the data within the namespace.</p>
    # @param [Hash, Types::DeleteNamespaceRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to delete.</p>
    # @option params [String] :final_snapshot_name
    #   <p>The name of the snapshot to be created before the namespace is deleted.</p>
    # @option params [Integer] :final_snapshot_retention_period
    #   <p>How long to retain the final snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     final_snapshot_name: "String",
    #     final_snapshot_retention_period: 1
    #   }
    #   options = {}
    #   response = client.delete_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::DeleteNamespaceResponse]
    def delete_namespace(params = {}, options = {})
      request = build_request(:delete_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes the specified resource policy.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a scheduled action.</p>
    # @param [Hash, Types::DeleteScheduledActionRequest] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "ScheduledActionName", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action: {
    #       scheduled_action_name: "ScheduledActionName",
    #       schedule: {
    #         # One of:
    #         at: Time.now,
    #         cron: "String"
    #       },
    #       scheduled_action_description: "String",
    #       next_invocations: [Time.now],
    #       role_arn: "IamRoleArn",
    #       state: "State",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       target_action: {
    #         # One of:
    #         create_snapshot: {
    #           namespace_name: "NamespaceName", # required
    #           snapshot_name_prefix: "SnapshotNamePrefix", # required
    #           retention_period: 1,
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       namespace_name: "NamespaceName",
    #       scheduled_action_uuid: "String"
    #     }
    #   }
    # @return [Types::DeleteScheduledActionResponse]
    def delete_scheduled_action(params = {}, options = {})
      request = build_request(:delete_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Deletes a snapshot from Amazon Redshift Serverless.</p>
    # @param [Hash, Types::DeleteSnapshotRequest] params
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       namespace_name: "String",
    #       namespace_arn: "String",
    #       snapshot_name: "String",
    #       snapshot_create_time: Time.now,
    #       admin_username: "String",
    #       status: "SnapshotStatus",
    #       kms_key_id: "KmsKeyId",
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       snapshot_retention_period: 1,
    #       snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       snapshot_arn: "String",
    #       accounts_with_restore_access: ["String"],
    #       accounts_with_provisioned_restore_access: ["String"],
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::DeleteSnapshotResponse]
    def delete_snapshot(params = {}, options = {})
      request = build_request(:delete_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes a snapshot copy configuration</p>
    # @param [Hash, Types::DeleteSnapshotCopyConfigurationRequest] params
    # @option params [String] :snapshot_copy_configuration_id
    #   <p>The ID of the snapshot copy configuration to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_copy_configuration_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot_copy_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_copy_configuration: { # required
    #       snapshot_copy_configuration_id: "String",
    #       snapshot_copy_configuration_arn: "String",
    #       namespace_name: "NamespaceName",
    #       destination_region: "String",
    #       snapshot_retention_period: 1,
    #       destination_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::DeleteSnapshotCopyConfigurationResponse]
    def delete_snapshot_copy_configuration(params = {}, options = {})
      request = build_request(:delete_snapshot_copy_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a usage limit from Amazon Redshift Serverless.</p>
    # @param [Hash, Types::DeleteUsageLimitRequest] params
    # @option params [String] :usage_limit_id
    #   <p>The unique identifier of the usage limit to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit: {
    #       usage_limit_id: "String",
    #       usage_limit_arn: "String",
    #       resource_arn: "String",
    #       usage_type: "UsageLimitUsageType",
    #       amount: 1,
    #       period: "UsageLimitPeriod",
    #       breach_action: "UsageLimitBreachAction"
    #     }
    #   }
    # @return [Types::DeleteUsageLimitResponse]
    def delete_usage_limit(params = {}, options = {})
      request = build_request(:delete_usage_limit, params)
      request.send_request(options)
    end

    # <p>Deletes a workgroup.</p>
    # @param [Hash, Types::DeleteWorkgroupRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_workgroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workgroup: { # required
    #       workgroup_id: "String",
    #       workgroup_arn: "String",
    #       workgroup_name: "WorkgroupName",
    #       namespace_name: "String",
    #       base_capacity: 1,
    #       enhanced_vpc_routing: false,
    #       config_parameters: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue"
    #         }
    #       ],
    #       security_group_ids: ["SecurityGroupId"],
    #       subnet_ids: ["SubnetId"],
    #       status: "WorkgroupStatus",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       publicly_accessible: false,
    #       creation_date: Time.now,
    #       port: 1,
    #       custom_domain_name: "CustomDomainName",
    #       custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #       custom_domain_certificate_expiry_time: Time.now,
    #       workgroup_version: "String",
    #       patch_version: "String",
    #       max_capacity: 1,
    #       cross_account_vpcs: ["String"],
    #       ip_address_type: "IpAddressType",
    #       price_performance_target: {
    #         status: "PerformanceTargetStatus",
    #         level: 1
    #       },
    #       track_name: "TrackName",
    #       pending_track_name: "TrackName"
    #     }
    #   }
    # @return [Types::DeleteWorkgroupResponse]
    def delete_workgroup(params = {}, options = {})
      request = build_request(:delete_workgroup, params)
      request.send_request(options)
    end

    # <p>Returns a database user name and temporary password with
    #          temporary authorization to log in to Amazon Redshift Serverless.</p>
    #          <p>By default, the temporary credentials expire in 900 seconds. 
    #          You can optionally specify a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes).</p>
    #          <p>The Identity and Access Management (IAM) user or role that runs 
    #       GetCredentials must have an IAM policy attached that allows access to all 
    #       necessary actions and resources.</p>
    #          <p>If the <code>DbName</code> parameter is specified, the IAM policy must 
    #       allow access to the resource dbname for the specified database name.</p>
    # @param [Hash, Types::GetCredentialsRequest] params
    # @option params [String] :db_name
    #   <p>The name of the database to get temporary authorization to log on to.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 64 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain only uppercase or lowercase letters, numbers, underscore, plus sign, period (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Must not contain a colon ( : ) or slash ( / ).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word. A list of reserved words can be found 
    #                  in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words </a> 
    #                  in the Amazon Redshift Database Developer Guide</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.
    #            The minimum is 900 seconds, and the maximum is 3600 seconds.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name associated with the workgroup. The custom domain name or the workgroup name must be included in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_name: "DbName",
    #     duration_seconds: 1,
    #     workgroup_name: "WorkgroupName",
    #     custom_domain_name: "CustomDomainName"
    #   }
    #   options = {}
    #   response = client.get_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_user: "DbUser",
    #     db_password: "DbPassword",
    #     expiration: Time.now,
    #     next_refresh_time: Time.now
    #   }
    # @return [Types::GetCredentialsResponse]
    def get_credentials(params = {}, options = {})
      request = build_request(:get_credentials, params)
      request.send_request(options)
    end

    # <p>Gets information about a specific custom domain association.</p>
    # @param [Hash, Types::GetCustomDomainAssociationRequest] params
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     custom_domain_name: "CustomDomainName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   }
    #   options = {}
    #   response = client.get_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_domain_name: "CustomDomainName",
    #     workgroup_name: "WorkgroupName",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     custom_domain_certificate_expiry_time: Time.now
    #   }
    # @return [Types::GetCustomDomainAssociationResponse]
    def get_custom_domain_association(params = {}, options = {})
      request = build_request(:get_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Returns information, such as the name, about a VPC endpoint.</p>
    # @param [Hash, Types::GetEndpointAccessRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the VPC endpoint to return information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_name: "String",
    #       endpoint_status: "String",
    #       workgroup_name: "String",
    #       endpoint_create_time: Time.now,
    #       port: 1,
    #       address: "String",
    #       subnet_ids: ["SubnetId"],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "VpcSecurityGroupId",
    #           status: "String"
    #         }
    #       ],
    #       vpc_endpoint: {
    #         vpc_endpoint_id: "String",
    #         vpc_id: "String",
    #         network_interfaces: [
    #           {
    #             network_interface_id: "String",
    #             subnet_id: "String",
    #             private_ip_address: "String",
    #             availability_zone: "String",
    #             ipv6_address: "String"
    #           }
    #         ]
    #       },
    #       endpoint_arn: "String"
    #     }
    #   }
    # @return [Types::GetEndpointAccessResponse]
    def get_endpoint_access(params = {}, options = {})
      request = build_request(:get_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Returns information about a namespace in Amazon Redshift Serverless.</p>
    # @param [Hash, Types::GetNamespaceRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #   }
    #   options = {}
    #   response = client.get_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::GetNamespaceResponse]
    def get_namespace(params = {}, options = {})
      request = build_request(:get_namespace, params)
      request.send_request(options)
    end

    # <p>Returns information about a recovery point.</p>
    # @param [Hash, Types::GetRecoveryPointRequest] params
    # @option params [String] :recovery_point_id
    #   <p>The unique identifier of the recovery point to return information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_point_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_point: {
    #       recovery_point_id: "String",
    #       recovery_point_create_time: Time.now,
    #       total_size_in_mega_bytes: 1.0,
    #       namespace_name: "NamespaceName",
    #       workgroup_name: "WorkgroupName",
    #       namespace_arn: "String"
    #     }
    #   }
    # @return [Types::GetRecoveryPointResponse]
    def get_recovery_point(params = {}, options = {})
      request = build_request(:get_recovery_point, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Redshift Serverless reservation. A reservation gives you the option to commit to a specified number of Redshift Processing Units (RPUs) 
    #          for a year at a discount from Serverless on-demand (OD) rates.</p>
    # @param [Hash, Types::GetReservationRequest] params
    # @option params [String] :reservation_id
    #   <p>The ID of the reservation to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reservation_id: "ReservationId", # required
    #   }
    #   options = {}
    #   response = client.get_reservation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation: { # required
    #       reservation_id: "ReservationId",
    #       reservation_arn: "ReservationArn",
    #       start_date: Time.now,
    #       end_date: Time.now,
    #       capacity: 1,
    #       offering: {
    #         offering_id: "OfferingId",
    #         duration: 1,
    #         upfront_charge: 1.0,
    #         hourly_charge: 1.0,
    #         currency_code: "CurrencyCode",
    #         offering_type: "OfferingType"
    #       },
    #       status: "Status"
    #     }
    #   }
    # @return [Types::GetReservationResponse]
    def get_reservation(params = {}, options = {})
      request = build_request(:get_reservation, params)
      request.send_request(options)
    end

    # <p>Returns the reservation offering. The offering determines the payment schedule for the reservation.</p>
    # @param [Hash, Types::GetReservationOfferingRequest] params
    # @option params [String] :offering_id
    #   <p>The identifier for the offering..</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_id: "OfferingId", # required
    #   }
    #   options = {}
    #   response = client.get_reservation_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation_offering: { # required
    #       offering_id: "OfferingId",
    #       duration: 1,
    #       upfront_charge: 1.0,
    #       hourly_charge: 1.0,
    #       currency_code: "CurrencyCode",
    #       offering_type: "OfferingType"
    #     }
    #   }
    # @return [Types::GetReservationOfferingResponse]
    def get_reservation_offering(params = {}, options = {})
      request = build_request(:get_reservation_offering, params)
      request.send_request(options)
    end

    # <p>Returns a resource policy.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_arn: "String",
    #       policy: "String"
    #     }
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns information about a scheduled action.</p>
    # @param [Hash, Types::GetScheduledActionRequest] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "ScheduledActionName", # required
    #   }
    #   options = {}
    #   response = client.get_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action: {
    #       scheduled_action_name: "ScheduledActionName",
    #       schedule: {
    #         # One of:
    #         at: Time.now,
    #         cron: "String"
    #       },
    #       scheduled_action_description: "String",
    #       next_invocations: [Time.now],
    #       role_arn: "IamRoleArn",
    #       state: "State",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       target_action: {
    #         # One of:
    #         create_snapshot: {
    #           namespace_name: "NamespaceName", # required
    #           snapshot_name_prefix: "SnapshotNamePrefix", # required
    #           retention_period: 1,
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       namespace_name: "NamespaceName",
    #       scheduled_action_uuid: "String"
    #     }
    #   }
    # @return [Types::GetScheduledActionResponse]
    def get_scheduled_action(params = {}, options = {})
      request = build_request(:get_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific snapshot.</p>
    # @param [Hash, Types::GetSnapshotRequest] params
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to return.</p>
    # @option params [String] :owner_account
    #   <p>The owner Amazon Web Services account of a snapshot shared with another user.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_name: "String",
    #     owner_account: "String",
    #     snapshot_arn: "String"
    #   }
    #   options = {}
    #   response = client.get_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       namespace_name: "String",
    #       namespace_arn: "String",
    #       snapshot_name: "String",
    #       snapshot_create_time: Time.now,
    #       admin_username: "String",
    #       status: "SnapshotStatus",
    #       kms_key_id: "KmsKeyId",
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       snapshot_retention_period: 1,
    #       snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       snapshot_arn: "String",
    #       accounts_with_restore_access: ["String"],
    #       accounts_with_provisioned_restore_access: ["String"],
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::GetSnapshotResponse]
    def get_snapshot(params = {}, options = {})
      request = build_request(:get_snapshot, params)
      request.send_request(options)
    end

    # <p>Returns information about a <code>TableRestoreStatus</code> object.</p>
    # @param [Hash, Types::GetTableRestoreStatusRequest] params
    # @option params [String] :table_restore_request_id
    #   <p>The ID of the <code>RestoreTableFromSnapshot</code> request to return status for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_restore_request_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_table_restore_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_restore_status: {
    #       table_restore_request_id: "String",
    #       status: "String",
    #       message: "String",
    #       request_time: Time.now,
    #       namespace_name: "String",
    #       workgroup_name: "String",
    #       snapshot_name: "String",
    #       progress_in_mega_bytes: 1,
    #       total_data_in_mega_bytes: 1,
    #       source_database_name: "String",
    #       source_schema_name: "String",
    #       source_table_name: "String",
    #       target_database_name: "String",
    #       target_schema_name: "String",
    #       new_table_name: "String",
    #       recovery_point_id: "String"
    #     }
    #   }
    # @return [Types::GetTableRestoreStatusResponse]
    def get_table_restore_status(params = {}, options = {})
      request = build_request(:get_table_restore_status, params)
      request.send_request(options)
    end

    # <p>Get the Redshift Serverless version for a specified track.</p>
    # @param [Hash, Types::GetTrackRequest] params
    # @option params [String] :track_name
    #   <p>The name of the track of which its version is fetched.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     track_name: "TrackName", # required
    #   }
    #   options = {}
    #   response = client.get_track(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     track: {
    #       track_name: "TrackName",
    #       workgroup_version: "String",
    #       update_targets: [
    #         {
    #           track_name: "TrackName",
    #           workgroup_version: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTrackResponse]
    def get_track(params = {}, options = {})
      request = build_request(:get_track, params)
      request.send_request(options)
    end

    # <p>Returns information about a usage limit.</p>
    # @param [Hash, Types::GetUsageLimitRequest] params
    # @option params [String] :usage_limit_id
    #   <p>The unique identifier of the usage limit to return information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit: {
    #       usage_limit_id: "String",
    #       usage_limit_arn: "String",
    #       resource_arn: "String",
    #       usage_type: "UsageLimitUsageType",
    #       amount: 1,
    #       period: "UsageLimitPeriod",
    #       breach_action: "UsageLimitBreachAction"
    #     }
    #   }
    # @return [Types::GetUsageLimitResponse]
    def get_usage_limit(params = {}, options = {})
      request = build_request(:get_usage_limit, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific workgroup.</p>
    # @param [Hash, Types::GetWorkgroupRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup to return information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #   }
    #   options = {}
    #   response = client.get_workgroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workgroup: { # required
    #       workgroup_id: "String",
    #       workgroup_arn: "String",
    #       workgroup_name: "WorkgroupName",
    #       namespace_name: "String",
    #       base_capacity: 1,
    #       enhanced_vpc_routing: false,
    #       config_parameters: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue"
    #         }
    #       ],
    #       security_group_ids: ["SecurityGroupId"],
    #       subnet_ids: ["SubnetId"],
    #       status: "WorkgroupStatus",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       publicly_accessible: false,
    #       creation_date: Time.now,
    #       port: 1,
    #       custom_domain_name: "CustomDomainName",
    #       custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #       custom_domain_certificate_expiry_time: Time.now,
    #       workgroup_version: "String",
    #       patch_version: "String",
    #       max_capacity: 1,
    #       cross_account_vpcs: ["String"],
    #       ip_address_type: "IpAddressType",
    #       price_performance_target: {
    #         status: "PerformanceTargetStatus",
    #         level: 1
    #       },
    #       track_name: "TrackName",
    #       pending_track_name: "TrackName"
    #     }
    #   }
    # @return [Types::GetWorkgroupResponse]
    def get_workgroup(params = {}, options = {})
      request = build_request(:get_workgroup, params)
      request.send_request(options)
    end

    # <p> Lists custom domain associations for Amazon Redshift Serverless.</p>
    # @param [Hash, Types::ListCustomDomainAssociationsRequest] params
    # @option params [String] :next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. 
    #            The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     custom_domain_name: "CustomDomainName",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString"
    #   }
    #   options = {}
    #   response = client.list_custom_domain_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     associations: [
    #       {
    #         custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #         custom_domain_certificate_expiry_time: Time.now,
    #         custom_domain_name: "CustomDomainName",
    #         workgroup_name: "WorkgroupName"
    #       }
    #     ]
    #   }
    # @return [Types::ListCustomDomainAssociationsResponse]
    def list_custom_domain_associations(params = {}, options = {})
      request = build_request(:list_custom_domain_associations, params)
      request.send_request(options)
    end

    # <p>Returns an array of <code>EndpointAccess</code> objects and relevant information.</p>
    # @param [Hash, Types::ListEndpointAccessRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListEndpointAccess</code> operation returns a <code>nextToken</code>,
    #            you can include the returned <code>nextToken</code> in following <code>ListEndpointAccess</code> operations,
    #            which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the VPC endpoint to return.</p>
    # @option params [String] :vpc_id
    #   <p>The unique identifier of the virtual private cloud with access to Amazon Redshift Serverless.</p>
    # @option params [String] :owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     workgroup_name: "String",
    #     vpc_id: "String",
    #     owner_account: "OwnerAccount"
    #   }
    #   options = {}
    #   response = client.list_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     endpoints: [ # required
    #       {
    #         endpoint_name: "String",
    #         endpoint_status: "String",
    #         workgroup_name: "String",
    #         endpoint_create_time: Time.now,
    #         port: 1,
    #         address: "String",
    #         subnet_ids: ["SubnetId"],
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "VpcSecurityGroupId",
    #             status: "String"
    #           }
    #         ],
    #         vpc_endpoint: {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           network_interfaces: [
    #             {
    #               network_interface_id: "String",
    #               subnet_id: "String",
    #               private_ip_address: "String",
    #               availability_zone: "String",
    #               ipv6_address: "String"
    #             }
    #           ]
    #         },
    #         endpoint_arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListEndpointAccessResponse]
    def list_endpoint_access(params = {}, options = {})
      request = build_request(:list_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Returns information about a list of specified managed workgroups in your account.</p>
    # @param [Hash, Types::ListManagedWorkgroupsRequest] params
    # @option params [String] :source_arn
    #   <p>The Amazon Resource Name (ARN) for the managed 
    #            workgroup in the AWS Glue Data Catalog.</p>
    # @option params [String] :next_token
    #   <p>If your initial ListManagedWorkgroups operation returns a nextToken, 
    #            you can include the returned nextToken in following ListManagedWorkgroups 
    #            operations, which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number 
    #            of results to return. You can use nextToken to display the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_arn: "SourceArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_workgroups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     managed_workgroups: [
    #       {
    #         managed_workgroup_name: "ManagedWorkgroupName",
    #         managed_workgroup_id: "String",
    #         source_arn: "SourceArn",
    #         status: "CREATING" # One of: ["CREATING", "DELETING", "MODIFYING", "AVAILABLE", "NOT_AVAILABLE"],
    #         creation_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedWorkgroupsResponse]
    def list_managed_workgroups(params = {}, options = {})
      request = build_request(:list_managed_workgroups, params)
      request.send_request(options)
    end

    # <p>Returns information about a list of specified namespaces.</p>
    # @param [Hash, Types::ListNamespacesRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListNamespaces</code> operation returns a <code>nextToken</code>,
    #            you can include the returned <code>nextToken</code> in following <code>ListNamespaces</code> operations,
    #            which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     namespaces: [ # required
    #       {
    #         namespace_arn: "String",
    #         namespace_id: "String",
    #         namespace_name: "NamespaceName",
    #         admin_username: "DbUser",
    #         db_name: "String",
    #         kms_key_id: "String",
    #         default_iam_role_arn: "String",
    #         iam_roles: ["IamRoleArn"],
    #         log_exports: ["LogExport"],
    #         status: "NamespaceStatus",
    #         creation_date: Time.now,
    #         admin_password_secret_arn: "String",
    #         admin_password_secret_kms_key_id: "KmsKeyId"
    #       }
    #     ]
    #   }
    # @return [Types::ListNamespacesResponse]
    def list_namespaces(params = {}, options = {})
      request = build_request(:list_namespaces, params)
      request.send_request(options)
    end

    # <p>Returns an array of recovery points.</p>
    # @param [Hash, Types::ListRecoveryPointsRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListRecoveryPoints</code> operation returns a <code>nextToken</code>,
    #            you can include the returned <code>nextToken</code> in following <code>ListRecoveryPoints</code> operations,
    #            which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @option params [Time] :start_time
    #   <p>The time when the recovery point's creation was initiated.</p>
    # @option params [Time] :end_time
    #   <p>The time when creation of the recovery point finished.</p>
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to list recovery points for.</p>
    # @option params [String] :namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace from which to list recovery points.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     namespace_name: "NamespaceName",
    #     namespace_arn: "String"
    #   }
    #   options = {}
    #   response = client.list_recovery_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_points: [
    #       {
    #         recovery_point_id: "String",
    #         recovery_point_create_time: Time.now,
    #         total_size_in_mega_bytes: 1.0,
    #         namespace_name: "NamespaceName",
    #         workgroup_name: "WorkgroupName",
    #         namespace_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRecoveryPointsResponse]
    def list_recovery_points(params = {}, options = {})
      request = build_request(:list_recovery_points, params)
      request.send_request(options)
    end

    # <p>Returns the current reservation offerings in your account.</p>
    # @param [Hash, Types::ListReservationOfferingsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_reservation_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservation_offerings_list: [ # required
    #       {
    #         offering_id: "OfferingId",
    #         duration: 1,
    #         upfront_charge: 1.0,
    #         hourly_charge: 1.0,
    #         currency_code: "CurrencyCode",
    #         offering_type: "OfferingType"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListReservationOfferingsResponse]
    def list_reservation_offerings(params = {}, options = {})
      request = build_request(:list_reservation_offerings, params)
      request.send_request(options)
    end

    # <p>Returns a list of Reservation objects.</p>
    # @param [Hash, Types::ListReservationsRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_reservations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reservations_list: [ # required
    #       {
    #         reservation_id: "ReservationId",
    #         reservation_arn: "ReservationArn",
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         capacity: 1,
    #         offering: {
    #           offering_id: "OfferingId",
    #           duration: 1,
    #           upfront_charge: 1.0,
    #           hourly_charge: 1.0,
    #           currency_code: "CurrencyCode",
    #           offering_type: "OfferingType"
    #         },
    #         status: "Status"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListReservationsResponse]
    def list_reservations(params = {}, options = {})
      request = build_request(:list_reservations, params)
      request.send_request(options)
    end

    # <p>Returns a list of scheduled actions. You can use the flags to filter the list of returned scheduled actions.</p>
    # @param [Hash, Types::ListScheduledActionsRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. Use <code>nextToken</code> to display the next page of results.</p>
    # @option params [String] :namespace_name
    #   <p>The name of namespace associated with the scheduled action to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     namespace_name: "NamespaceName"
    #   }
    #   options = {}
    #   response = client.list_scheduled_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     scheduled_actions: [
    #       {
    #         namespace_name: "NamespaceName",
    #         scheduled_action_name: "ScheduledActionName"
    #       }
    #     ]
    #   }
    # @return [Types::ListScheduledActionsResponse]
    def list_scheduled_actions(params = {}, options = {})
      request = build_request(:list_scheduled_actions, params)
      request.send_request(options)
    end

    # <p>Returns a list of snapshot copy configurations.</p>
    # @param [Hash, Types::ListSnapshotCopyConfigurationsRequest] params
    # @option params [String] :namespace_name
    #   <p>The namespace from which to list all snapshot copy configurations.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using 
    #            the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use <code>nextToken</code> to display the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_snapshot_copy_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     snapshot_copy_configurations: [ # required
    #       {
    #         snapshot_copy_configuration_id: "String",
    #         snapshot_copy_configuration_arn: "String",
    #         namespace_name: "NamespaceName",
    #         destination_region: "String",
    #         snapshot_retention_period: 1,
    #         destination_kms_key_id: "KmsKeyId"
    #       }
    #     ]
    #   }
    # @return [Types::ListSnapshotCopyConfigurationsResponse]
    def list_snapshot_copy_configurations(params = {}, options = {})
      request = build_request(:list_snapshot_copy_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of snapshots.</p>
    # @param [Hash, Types::ListSnapshotsRequest] params
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. 
    #            The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @option params [String] :namespace_name
    #   <p>The namespace from which to list all snapshots.</p>
    # @option params [String] :namespace_arn
    #   <p>The Amazon Resource Name (ARN) of the namespace from which to list all snapshots.</p>
    # @option params [String] :owner_account
    #   <p>The owner Amazon Web Services account of the snapshot.</p>
    # @option params [Time] :start_time
    #   <p>The time when the creation of the snapshot was initiated.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp showing when the snapshot creation finished.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     namespace_name: "String",
    #     namespace_arn: "String",
    #     owner_account: "String",
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.list_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     snapshots: [
    #       {
    #         namespace_name: "String",
    #         namespace_arn: "String",
    #         snapshot_name: "String",
    #         snapshot_create_time: Time.now,
    #         admin_username: "String",
    #         status: "SnapshotStatus",
    #         kms_key_id: "KmsKeyId",
    #         owner_account: "String",
    #         total_backup_size_in_mega_bytes: 1.0,
    #         actual_incremental_backup_size_in_mega_bytes: 1.0,
    #         backup_progress_in_mega_bytes: 1.0,
    #         current_backup_rate_in_mega_bytes_per_second: 1.0,
    #         estimated_seconds_to_completion: 1,
    #         elapsed_time_in_seconds: 1,
    #         snapshot_retention_period: 1,
    #         snapshot_remaining_days: 1,
    #         snapshot_retention_start_time: Time.now,
    #         snapshot_arn: "String",
    #         accounts_with_restore_access: ["String"],
    #         accounts_with_provisioned_restore_access: ["String"],
    #         admin_password_secret_arn: "String",
    #         admin_password_secret_kms_key_id: "KmsKeyId"
    #       }
    #     ]
    #   }
    # @return [Types::ListSnapshotsResponse]
    def list_snapshots(params = {}, options = {})
      request = build_request(:list_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns information about an array of <code>TableRestoreStatus</code> objects.</p>
    # @param [Hash, Types::ListTableRestoreStatusRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListTableRestoreStatus</code> operation returns a nextToken, 
    #            you can include the returned <code>nextToken</code> in following <code>ListTableRestoreStatus</code>
    #            operations. This will return results on the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to 
    #            return. You can use nextToken to display the next page of results.</p>
    # @option params [String] :namespace_name
    #   <p>The namespace from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations .</p>
    # @option params [String] :workgroup_name
    #   <p>The workgroup from which to list all of the statuses of <code>RestoreTableFromSnapshot</code> operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     namespace_name: "String",
    #     workgroup_name: "String"
    #   }
    #   options = {}
    #   response = client.list_table_restore_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     table_restore_statuses: [
    #       {
    #         table_restore_request_id: "String",
    #         status: "String",
    #         message: "String",
    #         request_time: Time.now,
    #         namespace_name: "String",
    #         workgroup_name: "String",
    #         snapshot_name: "String",
    #         progress_in_mega_bytes: 1,
    #         total_data_in_mega_bytes: 1,
    #         source_database_name: "String",
    #         source_schema_name: "String",
    #         source_table_name: "String",
    #         target_database_name: "String",
    #         target_schema_name: "String",
    #         new_table_name: "String",
    #         recovery_point_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTableRestoreStatusResponse]
    def list_table_restore_status(params = {}, options = {})
      request = build_request(:list_table_restore_status, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>List the Amazon Redshift Serverless versions.</p>
    # @param [Hash, Types::ListTracksRequest] params
    # @option params [String] :next_token
    #   <p>If your initial <code>ListTracksRequest</code> operation returns a 
    #            <code>nextToken</code>, you can include the returned <code>nextToken</code>
    #            in following <code>ListTracksRequest</code> operations, which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of response records to return in each call. 
    #            If the number of remaining response records exceeds the specified 
    #            MaxRecords value, a value is returned in a marker field of the response. 
    #            You can retrieve the next set of records by retrying the command with the 
    #            returned marker value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tracks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tracks: [
    #       {
    #         track_name: "TrackName",
    #         workgroup_version: "String",
    #         update_targets: [
    #           {
    #             track_name: "TrackName",
    #             workgroup_version: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTracksResponse]
    def list_tracks(params = {}, options = {})
      request = build_request(:list_tracks, params)
      request.send_request(options)
    end

    # <p>Lists all usage limits within Amazon Redshift Serverless.</p>
    # @param [Hash, Types::ListUsageLimitsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) associated with the resource whose usage limits you want to list.</p>
    # @option params [String] :usage_type
    #   <p>The Amazon Redshift Serverless feature whose limits you want to see.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListUsageLimits</code> operation returns a <code>nextToken</code>,
    #            you can include the returned <code>nextToken</code> in following <code>ListUsageLimits</code> operations,
    #            which returns results in the next page.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to get the next page of results. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String",
    #     usage_type: "UsageLimitUsageType",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_usage_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limits: [
    #       {
    #         usage_limit_id: "String",
    #         usage_limit_arn: "String",
    #         resource_arn: "String",
    #         usage_type: "UsageLimitUsageType",
    #         amount: 1,
    #         period: "UsageLimitPeriod",
    #         breach_action: "UsageLimitBreachAction"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUsageLimitsResponse]
    def list_usage_limits(params = {}, options = {})
      request = build_request(:list_usage_limits, params)
      request.send_request(options)
    end

    # <p>Returns information about a list of specified workgroups.</p>
    # @param [Hash, Types::ListWorkgroupsRequest] params
    # @option params [String] :next_token
    #   <p>If your initial ListWorkgroups operation returns a <code>nextToken</code>,
    #            you can include the returned <code>nextToken</code> in following ListNamespaces operations,
    #            which returns results in the next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return.
    #            You can use <code>nextToken</code> to display the next page of results.</p>
    # @option params [String] :owner_account
    #   <p>The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     owner_account: "OwnerAccount"
    #   }
    #   options = {}
    #   response = client.list_workgroups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     workgroups: [ # required
    #       {
    #         workgroup_id: "String",
    #         workgroup_arn: "String",
    #         workgroup_name: "WorkgroupName",
    #         namespace_name: "String",
    #         base_capacity: 1,
    #         enhanced_vpc_routing: false,
    #         config_parameters: [
    #           {
    #             parameter_key: "ParameterKey",
    #             parameter_value: "ParameterValue"
    #           }
    #         ],
    #         security_group_ids: ["SecurityGroupId"],
    #         subnet_ids: ["SubnetId"],
    #         status: "WorkgroupStatus",
    #         endpoint: {
    #           address: "String",
    #           port: 1,
    #           vpc_endpoints: [
    #             {
    #               vpc_endpoint_id: "String",
    #               vpc_id: "String",
    #               network_interfaces: [
    #                 {
    #                   network_interface_id: "String",
    #                   subnet_id: "String",
    #                   private_ip_address: "String",
    #                   availability_zone: "String",
    #                   ipv6_address: "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         publicly_accessible: false,
    #         creation_date: Time.now,
    #         port: 1,
    #         custom_domain_name: "CustomDomainName",
    #         custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #         custom_domain_certificate_expiry_time: Time.now,
    #         workgroup_version: "String",
    #         patch_version: "String",
    #         max_capacity: 1,
    #         cross_account_vpcs: ["String"],
    #         ip_address_type: "IpAddressType",
    #         price_performance_target: {
    #           status: "PerformanceTargetStatus",
    #           level: 1
    #         },
    #         track_name: "TrackName",
    #         pending_track_name: "TrackName"
    #       }
    #     ]
    #   }
    # @return [Types::ListWorkgroupsResponse]
    def list_workgroups(params = {}, options = {})
      request = build_request(:list_workgroups, params)
      request.send_request(options)
    end

    # <p>Creates or updates a resource policy. Currently, you can use policies to share snapshots across Amazon Web Services accounts.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account to create or update a resource policy for.</p>
    # @option params [String] :policy
    #   <p>The policy to create or update. For example, the following policy grants a user authorization to restore a snapshot.</p>
    #            <p>
    #               <code>"{\"Version\": \"2012-10-17\", \"Statement\" : 
    #               [{ \"Sid\": \"AllowUserRestoreFromSnapshot\", \"Principal\":{\"AWS\": 
    #               [\"739247239426\"]}, \"Action\": [\"redshift-serverless:RestoreFromSnapshot\"]
    #               , \"Effect\": \"Allow\" }]}"</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     policy: "String", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: {
    #       resource_arn: "String",
    #       policy: "String"
    #     }
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Restore the data from a recovery point.</p>
    # @param [Hash, Types::RestoreFromRecoveryPointRequest] params
    # @option params [String] :recovery_point_id
    #   <p>The unique identifier of the recovery point to restore from.</p>
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to restore data into.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup used to restore data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recovery_point_id: "String", # required
    #     namespace_name: "NamespaceName", # required
    #     workgroup_name: "WorkgroupName", # required
    #   }
    #   options = {}
    #   response = client.restore_from_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recovery_point_id: "String",
    #     namespace: {
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::RestoreFromRecoveryPointResponse]
    def restore_from_recovery_point(params = {}, options = {})
      request = build_request(:restore_from_recovery_point, params)
      request.send_request(options)
    end

    # <p>Restores a namespace from a snapshot.</p>
    # @param [Hash, Types::RestoreFromSnapshotRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to restore the snapshot to.</p>
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup used to restore the snapshot.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to restore from. Must not be specified at the same time as <code>snapshotArn</code>.</p>
    # @option params [String] :snapshot_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to restore from. Required if restoring
    #            from a provisioned cluster to Amazon Redshift Serverless. Must not be specified at the same time as
    #               <code>snapshotName</code>.</p>
    #            <p>The format of the ARN is arn:aws:redshift:&lt;region&gt;:&lt;account_id&gt;:snapshot:&lt;cluster_identifier&gt;/&lt;snapshot_identifier&gt;.</p>
    # @option params [String] :owner_account
    #   <p>The Amazon Web Services account that owns the snapshot.</p>
    # @option params [Boolean] :manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the restored 
    #            snapshot's admin credentials. If <code>MmanageAdminPassword</code> is false or not set, 
    #            Amazon Redshift uses the admin credentials that the namespace or cluster 
    #            had at the time the snapshot was taken.</p>
    # @option params [String] :admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     workgroup_name: "WorkgroupName", # required
    #     snapshot_name: "String",
    #     snapshot_arn: "String",
    #     owner_account: "String",
    #     manage_admin_password: false,
    #     admin_password_secret_kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.restore_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_name: "String",
    #     owner_account: "String",
    #     namespace: {
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::RestoreFromSnapshotResponse]
    def restore_from_snapshot(params = {}, options = {})
      request = build_request(:restore_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Restores a table from a recovery point to your Amazon Redshift Serverless instance. You can't use this operation to restore tables with interleaved sort keys.</p>
    # @param [Hash, Types::RestoreTableFromRecoveryPointRequest] params
    # @option params [String] :namespace_name
    #   <p>Namespace of the recovery point to restore from.</p>
    # @option params [String] :workgroup_name
    #   <p>The workgroup to restore the table to.</p>
    # @option params [String] :recovery_point_id
    #   <p>The ID of the recovery point to restore the table from.</p>
    # @option params [String] :source_database_name
    #   <p>The name of the source database that contains the table being restored.</p>
    # @option params [String] :source_schema_name
    #   <p>The name of the source schema that contains the table being restored.</p>
    # @option params [String] :source_table_name
    #   <p>The name of the source table being restored.</p>
    # @option params [String] :target_database_name
    #   <p>The name of the database to restore the table to.</p>
    # @option params [String] :target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    # @option params [String] :new_table_name
    #   <p>The name of the table to create from the restore operation.</p>
    # @option params [Boolean] :activate_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive. If true, the names are case sensitive. If false, the names are not case sensitive. The default is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "String", # required
    #     workgroup_name: "String", # required
    #     recovery_point_id: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     new_table_name: "String", # required
    #     activate_case_sensitive_identifier: false
    #   }
    #   options = {}
    #   response = client.restore_table_from_recovery_point(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_restore_status: {
    #       table_restore_request_id: "String",
    #       status: "String",
    #       message: "String",
    #       request_time: Time.now,
    #       namespace_name: "String",
    #       workgroup_name: "String",
    #       snapshot_name: "String",
    #       progress_in_mega_bytes: 1,
    #       total_data_in_mega_bytes: 1,
    #       source_database_name: "String",
    #       source_schema_name: "String",
    #       source_table_name: "String",
    #       target_database_name: "String",
    #       target_schema_name: "String",
    #       new_table_name: "String",
    #       recovery_point_id: "String"
    #     }
    #   }
    # @return [Types::RestoreTableFromRecoveryPointResponse]
    def restore_table_from_recovery_point(params = {}, options = {})
      request = build_request(:restore_table_from_recovery_point, params)
      request.send_request(options)
    end

    # <p>Restores a table from a snapshot to your Amazon Redshift Serverless instance. You can't use this operation to
    #          restore tables with <a href="https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved">interleaved sort keys</a>.</p>
    # @param [Hash, Types::RestoreTableFromSnapshotRequest] params
    # @option params [String] :namespace_name
    #   <p>The namespace of the snapshot to restore from.</p>
    # @option params [String] :workgroup_name
    #   <p>The workgroup to restore the table to.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to restore the table from.</p>
    # @option params [String] :source_database_name
    #   <p>The name of the source database that contains the table being restored.</p>
    # @option params [String] :source_schema_name
    #   <p>The name of the source schema that contains the table being restored.</p>
    # @option params [String] :source_table_name
    #   <p>The name of the source table being restored.</p>
    # @option params [String] :target_database_name
    #   <p>The name of the database to restore the table to.</p>
    # @option params [String] :target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    # @option params [String] :new_table_name
    #   <p>The name of the table to create from the restore operation.</p>
    # @option params [Boolean] :activate_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table 
    #            are case sensitive. If true, the names are case sensitive. If 
    #            false, the names are not case sensitive. The default is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "String", # required
    #     workgroup_name: "String", # required
    #     snapshot_name: "String", # required
    #     source_database_name: "String", # required
    #     source_schema_name: "String",
    #     source_table_name: "String", # required
    #     target_database_name: "String",
    #     target_schema_name: "String",
    #     new_table_name: "String", # required
    #     activate_case_sensitive_identifier: false
    #   }
    #   options = {}
    #   response = client.restore_table_from_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_restore_status: {
    #       table_restore_request_id: "String",
    #       status: "String",
    #       message: "String",
    #       request_time: Time.now,
    #       namespace_name: "String",
    #       workgroup_name: "String",
    #       snapshot_name: "String",
    #       progress_in_mega_bytes: 1,
    #       total_data_in_mega_bytes: 1,
    #       source_database_name: "String",
    #       source_schema_name: "String",
    #       source_table_name: "String",
    #       target_database_name: "String",
    #       target_schema_name: "String",
    #       new_table_name: "String",
    #       recovery_point_id: "String"
    #     }
    #   }
    # @return [Types::RestoreTableFromSnapshotResponse]
    def restore_table_from_snapshot(params = {}, options = {})
      request = build_request(:restore_table_from_snapshot, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The map of the key-value pairs used to tag the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
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

    # <p>Removes a tag or set of tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag or set of tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates an Amazon Redshift Serverless certificate associated with a custom domain.</p>
    # @param [Hash, Types::UpdateCustomDomainAssociationRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup associated with the database.</p>
    # @option params [String] :custom_domain_name
    #   <p>The custom domain name associated with the workgroup.</p>
    # @option params [String] :custom_domain_certificate_arn
    #   <p>The custom domain name’s certificate Amazon resource name (ARN). This is optional.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #     custom_domain_name: "CustomDomainName", # required
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString", # required
    #   }
    #   options = {}
    #   response = client.update_custom_domain_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     custom_domain_name: "CustomDomainName",
    #     workgroup_name: "WorkgroupName",
    #     custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #     custom_domain_certificate_expiry_time: Time.now
    #   }
    # @return [Types::UpdateCustomDomainAssociationResponse]
    def update_custom_domain_association(params = {}, options = {})
      request = build_request(:update_custom_domain_association, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Redshift Serverless managed endpoint.</p>
    # @param [Hash, Types::UpdateEndpointAccessRequest] params
    # @option params [String] :endpoint_name
    #   <p>The name of the VPC endpoint to update.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>The list of VPC security groups associated with the endpoint after the endpoint is modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "String", # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"]
    #   }
    #   options = {}
    #   response = client.update_endpoint_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       endpoint_name: "String",
    #       endpoint_status: "String",
    #       workgroup_name: "String",
    #       endpoint_create_time: Time.now,
    #       port: 1,
    #       address: "String",
    #       subnet_ids: ["SubnetId"],
    #       vpc_security_groups: [
    #         {
    #           vpc_security_group_id: "VpcSecurityGroupId",
    #           status: "String"
    #         }
    #       ],
    #       vpc_endpoint: {
    #         vpc_endpoint_id: "String",
    #         vpc_id: "String",
    #         network_interfaces: [
    #           {
    #             network_interface_id: "String",
    #             subnet_id: "String",
    #             private_ip_address: "String",
    #             availability_zone: "String",
    #             ipv6_address: "String"
    #           }
    #         ]
    #       },
    #       endpoint_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateEndpointAccessResponse]
    def update_endpoint_access(params = {}, options = {})
      request = build_request(:update_endpoint_access, params)
      request.send_request(options)
    end

    # <p>Updates a namespace with the specified settings. Unless required, you can't update multiple parameters in one request. For example,
    #       you must specify both <code>adminUsername</code> and <code>adminUserPassword</code> to update either field, but you can't update both <code>kmsKeyId</code>
    #       and <code>logExports</code> in a single request.</p>
    # @param [Hash, Types::UpdateNamespaceRequest] params
    # @option params [String] :namespace_name
    #   <p>The name of the namespace to update. You can't update the name of a namespace once it is created.</p>
    # @option params [String] :admin_user_password
    #   <p>The password of the administrator for the first database created in the namespace. This parameter must be updated together
    #         with <code>adminUsername</code>.</p>
    #            <p>You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. </p>
    # @option params [String] :admin_username
    #   <p>The username of the administrator for the first database created in the namespace. This parameter must be updated
    #         together with <code>adminUserPassword</code>.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service key used to encrypt your data.</p>
    # @option params [String] :default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace. This parameter must be updated together
    #         with <code>iamRoles</code>.</p>
    # @option params [Array<String>] :iam_roles
    #   <p>A list of IAM roles to associate with the namespace. This parameter must be updated together with <code>defaultIamRoleArn</code>.</p>
    # @option params [Array<String>] :log_exports
    #   <p>The types of logs the namespace can export. The export types are <code>userlog</code>, <code>connectionlog</code>, and <code>useractivitylog</code>.</p>
    # @option params [Boolean] :manage_admin_password
    #   <p>If <code>true</code>, Amazon Redshift uses Secrets Manager to manage the namespace's admin credentials. 
    #            You can't use <code>adminUserPassword</code> if <code>manageAdminPassword</code> is true. 
    #            If <code>manageAdminPassword</code> is false or not set, Amazon Redshift uses 
    #            <code>adminUserPassword</code> for the admin user account's password.
    #         </p>
    # @option params [String] :admin_password_secret_kms_key_id
    #   <p>The ID of the Key Management Service (KMS) key used to encrypt and store the namespace's admin credentials secret. 
    #            You can only use this parameter if <code>manageAdminPassword</code> is true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     admin_user_password: "DbPassword",
    #     admin_username: "DbUser",
    #     kms_key_id: "String",
    #     default_iam_role_arn: "String",
    #     iam_roles: ["IamRoleArn"],
    #     log_exports: ["LogExport"],
    #     manage_admin_password: false,
    #     admin_password_secret_kms_key_id: "KmsKeyId"
    #   }
    #   options = {}
    #   response = client.update_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: { # required
    #       namespace_arn: "String",
    #       namespace_id: "String",
    #       namespace_name: "NamespaceName",
    #       admin_username: "DbUser",
    #       db_name: "String",
    #       kms_key_id: "String",
    #       default_iam_role_arn: "String",
    #       iam_roles: ["IamRoleArn"],
    #       log_exports: ["LogExport"],
    #       status: "NamespaceStatus",
    #       creation_date: Time.now,
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::UpdateNamespaceResponse]
    def update_namespace(params = {}, options = {})
      request = build_request(:update_namespace, params)
      request.send_request(options)
    end

    # <p>Updates a scheduled action.</p>
    # @param [Hash, Types::UpdateScheduledActionRequest] params
    # @option params [String] :scheduled_action_name
    #   <p>The name of the scheduled action to update to.</p>
    # @option params [Types::TargetAction] :target_action
    #   <p>A JSON format string of the Amazon Redshift Serverless API operation with input parameters. The following is an example of a target action.</p>
    #            <p>
    #               <code>"{"CreateSnapshot": {"NamespaceName": "sampleNamespace","SnapshotName": "sampleSnapshot", "retentionPeriod": "1"}}"</code>
    #            </p>
    # @option params [Types::Schedule] :schedule
    #   <p>The schedule for a one-time (at timestamp format) or recurring (cron format) scheduled action. Schedule invocations must be separated by at least one hour. Times are in UTC.</p>
    #            <ul>
    #               <li>
    #                  <p>Format of at timestamp is <code>yyyy-mm-ddThh:mm:ss</code>. For example, <code>2016-03-04T17:27:00</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Format of cron expression is <code>(Minutes Hours Day-of-month Month Day-of-week Year)</code>. For example, <code>"(0 10 ? * MON *)"</code>. For more information, see 
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions">Cron Expressions</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role to assume to run the scheduled action. This IAM role must have permission to run the Amazon Redshift Serverless API operation in the scheduled action. 
    #            This IAM role must allow the Amazon Redshift scheduler to schedule creating snapshots (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf. 
    #            For more information about the IAM role to use with the Amazon Redshift scheduler, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for 
    #               Amazon Redshift</a> in the Amazon Redshift Management Guide</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether to enable the scheduled action.</p>
    # @option params [String] :scheduled_action_description
    #   <p>The descripion of the scheduled action to update to.</p>
    # @option params [Time] :start_time
    #   <p>The start time in UTC of the scheduled action to update to.</p>
    # @option params [Time] :end_time
    #   <p>The end time in UTC of the scheduled action to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_action_name: "ScheduledActionName", # required
    #     target_action: {
    #       # One of:
    #       create_snapshot: {
    #         namespace_name: "NamespaceName", # required
    #         snapshot_name_prefix: "SnapshotNamePrefix", # required
    #         retention_period: 1,
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     },
    #     schedule: {
    #       # One of:
    #       at: Time.now,
    #       cron: "String"
    #     },
    #     role_arn: "IamRoleArn",
    #     enabled: false,
    #     scheduled_action_description: "String",
    #     start_time: Time.now,
    #     end_time: Time.now
    #   }
    #   options = {}
    #   response = client.update_scheduled_action(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_action: {
    #       scheduled_action_name: "ScheduledActionName",
    #       schedule: {
    #         # One of:
    #         at: Time.now,
    #         cron: "String"
    #       },
    #       scheduled_action_description: "String",
    #       next_invocations: [Time.now],
    #       role_arn: "IamRoleArn",
    #       state: "State",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       target_action: {
    #         # One of:
    #         create_snapshot: {
    #           namespace_name: "NamespaceName", # required
    #           snapshot_name_prefix: "SnapshotNamePrefix", # required
    #           retention_period: 1,
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         }
    #       },
    #       namespace_name: "NamespaceName",
    #       scheduled_action_uuid: "String"
    #     }
    #   }
    # @return [Types::UpdateScheduledActionResponse]
    def update_scheduled_action(params = {}, options = {})
      request = build_request(:update_scheduled_action, params)
      request.send_request(options)
    end

    # <p>Updates a snapshot.</p>
    # @param [Hash, Types::UpdateSnapshotRequest] params
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot.</p>
    # @option params [Integer] :retention_period
    #   <p>The new retention period of the snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_name: "String", # required
    #     retention_period: 1
    #   }
    #   options = {}
    #   response = client.update_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       namespace_name: "String",
    #       namespace_arn: "String",
    #       snapshot_name: "String",
    #       snapshot_create_time: Time.now,
    #       admin_username: "String",
    #       status: "SnapshotStatus",
    #       kms_key_id: "KmsKeyId",
    #       owner_account: "String",
    #       total_backup_size_in_mega_bytes: 1.0,
    #       actual_incremental_backup_size_in_mega_bytes: 1.0,
    #       backup_progress_in_mega_bytes: 1.0,
    #       current_backup_rate_in_mega_bytes_per_second: 1.0,
    #       estimated_seconds_to_completion: 1,
    #       elapsed_time_in_seconds: 1,
    #       snapshot_retention_period: 1,
    #       snapshot_remaining_days: 1,
    #       snapshot_retention_start_time: Time.now,
    #       snapshot_arn: "String",
    #       accounts_with_restore_access: ["String"],
    #       accounts_with_provisioned_restore_access: ["String"],
    #       admin_password_secret_arn: "String",
    #       admin_password_secret_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::UpdateSnapshotResponse]
    def update_snapshot(params = {}, options = {})
      request = build_request(:update_snapshot, params)
      request.send_request(options)
    end

    # <p>Updates a snapshot copy configuration.</p>
    # @param [Hash, Types::UpdateSnapshotCopyConfigurationRequest] params
    # @option params [String] :snapshot_copy_configuration_id
    #   <p>The ID of the snapshot copy configuration to update.</p>
    # @option params [Integer] :snapshot_retention_period
    #   <p>The new retention period of how long to keep a snapshot in the destination Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_copy_configuration_id: "String", # required
    #     snapshot_retention_period: 1
    #   }
    #   options = {}
    #   response = client.update_snapshot_copy_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_copy_configuration: { # required
    #       snapshot_copy_configuration_id: "String",
    #       snapshot_copy_configuration_arn: "String",
    #       namespace_name: "NamespaceName",
    #       destination_region: "String",
    #       snapshot_retention_period: 1,
    #       destination_kms_key_id: "KmsKeyId"
    #     }
    #   }
    # @return [Types::UpdateSnapshotCopyConfigurationResponse]
    def update_snapshot_copy_configuration(params = {}, options = {})
      request = build_request(:update_snapshot_copy_configuration, params)
      request.send_request(options)
    end

    # <p>Update a usage limit in Amazon Redshift Serverless. You can't update the usage type or period of a usage limit.</p>
    # @param [Hash, Types::UpdateUsageLimitRequest] params
    # @option params [String] :usage_limit_id
    #   <p>The identifier of the usage limit to update.</p>
    # @option params [Integer] :amount
    #   <p>The new limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. 
    #            If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. 
    #            The value must be a positive number.</p>
    # @option params [String] :breach_action
    #   <p>The new action that Amazon Redshift Serverless takes when the limit is reached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_limit_id: "String", # required
    #     amount: 1,
    #     breach_action: "UsageLimitBreachAction"
    #   }
    #   options = {}
    #   response = client.update_usage_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_limit: {
    #       usage_limit_id: "String",
    #       usage_limit_arn: "String",
    #       resource_arn: "String",
    #       usage_type: "UsageLimitUsageType",
    #       amount: 1,
    #       period: "UsageLimitPeriod",
    #       breach_action: "UsageLimitBreachAction"
    #     }
    #   }
    # @return [Types::UpdateUsageLimitResponse]
    def update_usage_limit(params = {}, options = {})
      request = build_request(:update_usage_limit, params)
      request.send_request(options)
    end

    # <p>Updates a workgroup with the specified configuration settings. You can't update multiple parameters in one request. For example,
    #       you can update <code>baseCapacity</code> or <code>port</code> in a single request, but you can't update both in the same request.</p>
    #          <p>VPC Block Public Access (BPA) enables you to block resources in VPCs and subnets that
    #          you own in a Region from reaching or being reached from the internet through internet
    #          gateways and egress-only internet gateways. If a workgroup is in an account with VPC BPA
    #          turned on, the following capabilities are blocked: </p>
    #          <ul>
    #             <li>
    #                <p>Creating a public access workgroup</p>
    #             </li>
    #             <li>
    #                <p>Modifying a private workgroup to public</p>
    #             </li>
    #             <li>
    #                <p>Adding a subnet with VPC BPA turned on to the workgroup when the workgroup is
    #                public</p>
    #             </li>
    #          </ul>
    #          <p>For more information about VPC BPA, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html">Block public access to VPCs and
    #             subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    # @param [Hash, Types::UpdateWorkgroupRequest] params
    # @option params [String] :workgroup_name
    #   <p>The name of the workgroup to update. You can't update the name of a workgroup once it is created.</p>
    # @option params [Integer] :base_capacity
    #   <p>The new base data warehouse capacity in Redshift Processing Units (RPUs).</p>
    # @option params [Boolean] :enhanced_vpc_routing
    #   <p>The value that specifies whether to turn on enhanced virtual 
    #            private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.</p>
    # @option params [Array<Types::ConfigParameter>] :config_parameters
    #   <p>An array of parameters to set for advanced control over a database. The
    #            options are <code>auto_mv</code>, <code>datestyle</code>, <code>enable_case_sensitive_identifier</code>, <code>enable_user_activity_logging</code>,
    #            <code>query_group</code>, <code>search_path</code>, <code>require_ssl</code>, <code>use_fips_ssl</code>, and query monitoring metrics that let you 
    #            define performance boundaries. For more information about query monitoring rules and available metrics, see 
    #            <a href="https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless"> 
    #               Query monitoring metrics for Amazon Redshift Serverless</a>.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>A value that specifies whether the workgroup can be accessible from a public network.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>An array of VPC subnet IDs to associate with the workgroup.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>An array of security group IDs to associate with the workgroup.</p>
    # @option params [Integer] :port
    #   <p>The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.</p>
    # @option params [Integer] :max_capacity
    #   <p>The maximum data-warehouse capacity Amazon Redshift Serverless uses to serve queries. The max capacity is specified in RPUs.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address type that the workgroup supports. Possible values are <code>ipv4</code> and <code>dualstack</code>.</p>
    # @option params [Types::PerformanceTarget] :price_performance_target
    #   <p>An object that represents the price performance target settings for the workgroup.</p>
    # @option params [String] :track_name
    #   <p>An optional parameter for the name of the track for the workgroup. If you don't provide 
    #            a track name, the workgroup is assigned to the <code>current</code> track.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workgroup_name: "WorkgroupName", # required
    #     base_capacity: 1,
    #     enhanced_vpc_routing: false,
    #     config_parameters: [
    #       {
    #         parameter_key: "ParameterKey",
    #         parameter_value: "ParameterValue"
    #       }
    #     ],
    #     publicly_accessible: false,
    #     subnet_ids: ["SubnetId"],
    #     security_group_ids: ["SecurityGroupId"],
    #     port: 1,
    #     max_capacity: 1,
    #     ip_address_type: "IpAddressType",
    #     price_performance_target: {
    #       status: "PerformanceTargetStatus",
    #       level: 1
    #     },
    #     track_name: "TrackName"
    #   }
    #   options = {}
    #   response = client.update_workgroup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workgroup: { # required
    #       workgroup_id: "String",
    #       workgroup_arn: "String",
    #       workgroup_name: "WorkgroupName",
    #       namespace_name: "String",
    #       base_capacity: 1,
    #       enhanced_vpc_routing: false,
    #       config_parameters: [
    #         {
    #           parameter_key: "ParameterKey",
    #           parameter_value: "ParameterValue"
    #         }
    #       ],
    #       security_group_ids: ["SecurityGroupId"],
    #       subnet_ids: ["SubnetId"],
    #       status: "WorkgroupStatus",
    #       endpoint: {
    #         address: "String",
    #         port: 1,
    #         vpc_endpoints: [
    #           {
    #             vpc_endpoint_id: "String",
    #             vpc_id: "String",
    #             network_interfaces: [
    #               {
    #                 network_interface_id: "String",
    #                 subnet_id: "String",
    #                 private_ip_address: "String",
    #                 availability_zone: "String",
    #                 ipv6_address: "String"
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       publicly_accessible: false,
    #       creation_date: Time.now,
    #       port: 1,
    #       custom_domain_name: "CustomDomainName",
    #       custom_domain_certificate_arn: "CustomDomainCertificateArnString",
    #       custom_domain_certificate_expiry_time: Time.now,
    #       workgroup_version: "String",
    #       patch_version: "String",
    #       max_capacity: 1,
    #       cross_account_vpcs: ["String"],
    #       ip_address_type: "IpAddressType",
    #       price_performance_target: {
    #         status: "PerformanceTargetStatus",
    #         level: 1
    #       },
    #       track_name: "TrackName",
    #       pending_track_name: "TrackName"
    #     }
    #   }
    # @return [Types::UpdateWorkgroupResponse]
    def update_workgroup(params = {}, options = {})
      request = build_request(:update_workgroup, params)
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
      context[:gem_name] = 'aws-sdk-redshiftserverless'
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
    end
  end
end
