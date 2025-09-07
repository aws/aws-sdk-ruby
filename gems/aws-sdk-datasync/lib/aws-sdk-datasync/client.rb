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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::DataSync
  # An API client for Aws::DataSync.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::FmrsService

    add_plugin(::Aws::DataSync::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::DataSync::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Stops an DataSync task execution that's in progress. The transfer of some
    #       files are abruptly interrupted. File contents that're transferred to the destination might be
    #       incomplete or inconsistent with the source files.</p>
    #          <p>However, if you start a new task execution using the same task and allow it to finish,
    #       file content on the destination will be complete and consistent. This applies to other
    #       unexpected failures that interrupt a task execution. In all of these cases, DataSync
    #       successfully completes the transfer when you start the next task execution.</p>
    # @param [Hash, Types::CancelTaskExecutionRequest] params
    # @option params [String] :task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_execution_arn: "TaskExecutionArn", # required
    #   }
    #   options = {}
    #   response = client.cancel_task_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelTaskExecutionResponse]
    def cancel_task_execution(params = {}, options = {})
      request = build_request(:cancel_task_execution, params)
      request.send_request(options)
    end

    # <p>Activates an DataSync agent that you deploy in your storage environment.
    #       The activation process associates the agent with your Amazon Web Services account.</p>
    #          <p>If you haven't deployed an agent yet, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html">Do I need a DataSync
    #         agent?</a>
    #          </p>
    # @param [Hash, Types::CreateAgentRequest] params
    # @option params [String] :activation_key
    #   <p>Specifies your DataSync agent's activation key. If you don't have an
    #         activation key, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html">Activating your agent</a>.</p>
    # @option params [String] :agent_name
    #   <p>Specifies a name for your agent. We recommend specifying a name that you can
    #         remember.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services resources. We recommend creating at least one tag for your agent.</p>
    # @option params [String] :vpc_endpoint_id
    #   <p>Specifies the ID of the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/choose-service-endpoint.html#datasync-in-vpc">VPC service
    #           endpoint</a> that you're using. For example, a VPC endpoint ID looks like
    #           <code>vpce-01234d5aff67890e1</code>.</p>
    #            <important>
    #               <p>The VPC service endpoint you use must include the DataSync service name (for
    #           example, <code>com.amazonaws.us-east-2.datasync</code>).</p>
    #            </important>
    # @option params [Array<String>] :subnet_arns
    #   <p>Specifies the ARN of the subnet where your VPC service endpoint is located. You can only
    #         specify one ARN.</p>
    # @option params [Array<String>] :security_group_arns
    #   <p>Specifies the Amazon Resource Name (ARN) of the security group that allows traffic between
    #         your agent and VPC service endpoint. You can only specify one ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     activation_key: "ActivationKey", # required
    #     agent_name: "TagValue",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     vpc_endpoint_id: "VpcEndpointId",
    #     subnet_arns: ["Ec2SubnetArn"],
    #     security_group_arns: ["Ec2SecurityGroupArn"]
    #   }
    #   options = {}
    #   response = client.create_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_arn: "AgentArn"
    #   }
    # @return [Types::CreateAgentResponse]
    def create_agent(params = {}, options = {})
      request = build_request(:create_agent, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for a Microsoft Azure Blob Storage
    #       container. DataSync can use this location as a transfer source or destination.
    #       You can make transfers with or without a <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-creating-agent">DataSync agent</a> that connects to your
    #       container.</p>
    #          <p>Before you begin, make sure you know <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access">how DataSync accesses Azure Blob Storage</a> and works with <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers">access tiers</a> and <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#blob-types">blob types</a>.</p>
    # @param [Hash, Types::CreateLocationAzureBlobRequest] params
    # @option params [String] :container_url
    #   <p>Specifies the URL of the Azure Blob Storage container involved in your transfer.</p>
    # @option params [String] :authentication_type
    #   <p>Specifies the authentication method DataSync uses to access your Azure Blob
    #         Storage. DataSync can access blob storage using a shared access signature
    #         (SAS).</p>
    # @option params [Types::AzureBlobSasConfiguration] :sas_configuration
    #   <p>Specifies the SAS configuration that allows DataSync to access your Azure Blob
    #         Storage.</p>
    #            <note>
    #               <p>If you provide an authentication token using <code>SasConfiguration</code>, but do not
    #           provide secret configuration details using <code>CmkSecretConfig</code> or
    #             <code>CustomSecretConfig</code>, then DataSync stores the token using your
    #             Amazon Web Services account's secrets manager secret.</p>
    #            </note>
    # @option params [String] :blob_type
    #   <p>Specifies the type of blob that you want your objects or files to be when transferring
    #         them into Azure Blob Storage. Currently, DataSync only supports moving data into
    #         Azure Blob Storage as block blobs. For more information on blob types, see the <a href="https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs">Azure Blob Storage documentation</a>.</p>
    # @option params [String] :access_tier
    #   <p>Specifies the access tier that you want your objects or files transferred into. This only
    #         applies when using the location as a transfer destination. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers">Access tiers</a>.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies path segments if you want to limit your transfer to a virtual directory in your
    #         container (for example, <code>/my/images</code>).</p>
    # @option params [Array<String>] :agent_arns
    #   <p>(Optional) Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #         can connect with your Azure Blob Storage container. If you are setting up an agentless
    #         cross-cloud transfer, you do not need to specify a value for this parameter.</p>
    #            <p>You can specify more than one agent. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html">Using multiple
    #           agents for your transfer</a>.</p>
    #            <note>
    #               <p>Make sure you configure this parameter correctly when you first create your storage
    #           location. You cannot add or remove agents from a storage location after you create
    #           it.</p>
    #            </note>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services
    #         resources. We recommend creating at least a name tag for your transfer location.</p>
    # @option params [Types::CmkSecretConfig] :cmk_secret_config
    #   <p>Specifies configuration information for a DataSync-managed secret, which
    #         includes the authentication token that DataSync uses to access a specific AzureBlob
    #         storage location, with a customer-managed KMS key.</p>
    #            <p>When you include this paramater as part of a <code>CreateLocationAzureBlob</code> request,
    #         you provide only the KMS key ARN. DataSync uses this KMS key together with the authentication token you specify for
    #           <code>SasConfiguration</code> to create a DataSync-managed secret to store the
    #         location access credentials.</p>
    #            <p>Make sure the DataSync has permission to access the KMS key that
    #         you specify.</p>
    #            <note>
    #               <p>You can use either <code>CmkSecretConfig</code> (with <code>SasConfiguration</code>) or
    #             <code>CustomSecretConfig</code> (without <code>SasConfiguration</code>) to provide
    #           credentials for a <code>CreateLocationAzureBlob</code> request. Do not provide both
    #           parameters for the same request.</p>
    #            </note>
    # @option params [Types::CustomSecretConfig] :custom_secret_config
    #   <p>Specifies configuration information for a customer-managed Secrets Manager secret where
    #         the authentication token for an AzureBlob storage location is stored in plain text. This
    #         configuration includes the secret ARN, and the ARN for an IAM role that
    #         provides access to the secret.</p>
    #            <note>
    #               <p>You can use either <code>CmkSecretConfig</code> (with <code>SasConfiguration</code>) or
    #             <code>CustomSecretConfig</code> (without <code>SasConfiguration</code>) to provide
    #           credentials for a <code>CreateLocationAzureBlob</code> request. Do not provide both
    #           parameters for the same request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_url: "AzureBlobContainerUrl", # required
    #     authentication_type: "SAS" # One of: ["SAS", "NONE"], # required
    #     sas_configuration: {
    #       token: "AzureBlobSasToken", # required
    #     },
    #     blob_type: "BLOCK" # One of: ["BLOCK"],
    #     access_tier: "HOT" # One of: ["HOT", "COOL", "ARCHIVE"],
    #     subdirectory: "AzureBlobSubdirectory",
    #     agent_arns: ["AgentArn"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_location_azure_blob(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationAzureBlobResponse]
    def create_location_azure_blob(params = {}, options = {})
      request = build_request(:create_location_azure_blob, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon EFS file system.
    #         DataSync can use this location as a source or destination for transferring
    #       data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-access">accesses
    #           Amazon EFS file systems</a>.</p>
    # @param [Hash, Types::CreateLocationEfsRequest] params
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your Amazon EFS file system. This is where DataSync reads or writes data on your file system (depending on if this is a source or
    #         destination location).</p>
    #            <p>By default, DataSync uses the root directory (or <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">access point</a> if you provide one by using
    #           <code>AccessPointArn</code>). You can also include subdirectories using forward slashes (for
    #         example, <code>/path/to/folder</code>).</p>
    # @option params [String] :efs_filesystem_arn
    #   <p>Specifies the ARN for your Amazon EFS file system.</p>
    # @option params [Types::Ec2Config] :ec2_config
    #   <p>Specifies the subnet and security groups DataSync uses to connect to one of
    #         your Amazon EFS file system's <a href="https://docs.aws.amazon.com/efs/latest/ug/accessing-fs.html">mount targets</a>.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies the key-value pair that represents a tag that you want to add to the
    #         resource. The value can be an empty string. This value helps you manage, filter, and search
    #         for your resources. We recommend that you create a name tag for your location.</p>
    # @option params [String] :access_point_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses
    #         to mount your Amazon EFS file system.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam">Accessing
    #           restricted file systems</a>.</p>
    # @option params [String] :file_system_access_role_arn
    #   <p>Specifies an Identity and Access Management (IAM) role that allows DataSync to access your Amazon EFS file system.</p>
    #            <p>For information on creating this role, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role">Creating a DataSync
    #           IAM role for file system access</a>.</p>
    # @option params [String] :in_transit_encryption
    #   <p>Specifies whether you want DataSync to use Transport Layer Security (TLS) 1.2
    #         encryption when it transfers data to or from your Amazon EFS file system.</p>
    #            <p>If you specify an access point using <code>AccessPointArn</code> or an IAM
    #         role using <code>FileSystemAccessRoleArn</code>, you must set this parameter to
    #           <code>TLS1_2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "EfsSubdirectory",
    #     efs_filesystem_arn: "EfsFilesystemArn", # required
    #     ec2_config: { # required
    #       subnet_arn: "Ec2SubnetArn", # required
    #       security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     access_point_arn: "EfsAccessPointArn",
    #     file_system_access_role_arn: "IamRoleArn",
    #     in_transit_encryption: "NONE" # One of: ["NONE", "TLS1_2"]
    #   }
    #   options = {}
    #   response = client.create_location_efs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationEfsResponse]
    def create_location_efs(params = {}, options = {})
      request = build_request(:create_location_efs, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon FSx for Lustre file
    #       system. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html#create-lustre-location-access">accesses FSx for Lustre file systems</a>.</p>
    # @param [Hash, Types::CreateLocationFsxLustreRequest] params
    # @option params [String] :fsx_filesystem_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for Lustre file
    #         system.</p>
    # @option params [Array<String>] :security_group_arns
    #   <p>Specifies the Amazon Resource Names (ARNs) of up to five security groups that provide
    #         access to your FSx for Lustre file system.</p>
    #            <p>The security groups must be able to access the file system's ports. The file system must
    #         also allow access from the security groups. For information about file system access, see the
    #           <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/limit-access-security-groups.html">
    #                  <i>Amazon FSx for Lustre User Guide</i>
    #               </a>.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your FSx for Lustre file system. The path can include
    #         subdirectories.</p>
    #            <p>When the location is used as a source, DataSync reads data from the mount path.
    #         When the location is used as a destination, DataSync writes data to the mount path.
    #         If you don't include this parameter, DataSync uses the file system's root directory
    #           (<code>/</code>).</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services
    #         resources. We recommend creating at least a name tag for your location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     subdirectory: "FsxLustreSubdirectory",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_fsx_lustre(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationFsxLustreResponse]
    def create_location_fsx_lustre(params = {}, options = {})
      request = build_request(:create_location_fsx_lustre, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon FSx for NetApp ONTAP file
    #       system. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html#create-ontap-location-access">accesses FSx for ONTAP file systems</a>.</p>
    # @param [Hash, Types::CreateLocationFsxOntapRequest] params
    # @option params [Types::FsxProtocol] :protocol
    #   <p>Specifies the data transfer protocol that DataSync uses to access your
    #           Amazon FSx file system.</p>
    # @option params [Array<String>] :security_group_arns
    #   <p>Specifies the Amazon EC2 security groups that provide access to your file system's
    #         preferred subnet.</p>
    #            <p>The security groups must allow outbound traffic on the following ports (depending on the
    #         protocol you use):</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Network File System (NFS)</b>: TCP ports 111, 635, and
    #             2049</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Server Message Block (SMB)</b>: TCP port 445</p>
    #               </li>
    #            </ul>
    #            <p>Your file system's security groups must also allow inbound traffic on the same
    #         ports.</p>
    # @option params [String] :storage_virtual_machine_arn
    #   <p>Specifies the ARN of the storage virtual machine (SVM) in your file system where you want
    #         to copy data to or from.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a path to the file share in the SVM where you want to transfer data to or
    #         from.</p>
    #            <p>You can specify a junction path (also known as a mount point), qtree path (for NFS file
    #         shares), or share name (for SMB file shares). For example, your mount path might be
    #           <code>/vol1</code>, <code>/vol1/tree1</code>, or <code>/share1</code>.</p>
    #            <note>
    #               <p>Don't specify a junction path in the SVM's root volume. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html">Managing FSx for ONTAP storage virtual machines</a> in the <i>Amazon FSx for NetApp ONTAP User Guide</i>.</p>
    #            </note>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services
    #         resources. We recommend creating at least a name tag for your location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protocol: { # required
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       }
    #     },
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     storage_virtual_machine_arn: "StorageVirtualMachineArn", # required
    #     subdirectory: "FsxOntapSubdirectory",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_fsx_ontap(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationFsxOntapResponse]
    def create_location_fsx_ontap(params = {}, options = {})
      request = build_request(:create_location_fsx_ontap, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon FSx for OpenZFS file
    #       system. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html#create-openzfs-access">accesses
    #           FSx for OpenZFS file systems</a>.</p>
    #          <note>
    #             <p>Request parameters related to <code>SMB</code> aren't supported with the
    #           <code>CreateLocationFsxOpenZfs</code> operation.</p>
    #          </note>
    # @param [Hash, Types::CreateLocationFsxOpenZfsRequest] params
    # @option params [String] :fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.</p>
    # @option params [Types::FsxProtocol] :protocol
    #   <p>The type of protocol that DataSync uses to access your file system.</p>
    # @option params [Array<String>] :security_group_arns
    #   <p>The ARNs of the security groups that are used to configure the FSx for OpenZFS file
    #         system.</p>
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the location's path that must begin with <code>/fsx</code>. DataSync uses this subdirectory to read or write data (depending on whether the file
    #         system is a source or destination location).</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The value
    #         can be an empty string. This value helps you manage, filter, and search for your resources. We
    #         recommend that you create a name tag for your location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     protocol: { # required
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       }
    #     },
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     subdirectory: "FsxOpenZfsSubdirectory",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_fsx_open_zfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationFsxOpenZfsResponse]
    def create_location_fsx_open_zfs(params = {}, options = {})
      request = build_request(:create_location_fsx_open_zfs, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon FSx for Windows File Server file
    #       system. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-location-access">accesses
    #           FSx for Windows File Server file systems</a>.</p>
    # @param [Hash, Types::CreateLocationFsxWindowsRequest] params
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your file system using forward slashes. This is where DataSync reads or writes data (depending on if this is a source or destination
    #         location).</p>
    # @option params [String] :fsx_filesystem_arn
    #   <p>Specifies the Amazon Resource Name (ARN) for the FSx for Windows File Server file
    #         system.</p>
    # @option params [Array<String>] :security_group_arns
    #   <p>Specifies the ARNs of the Amazon EC2 security groups that provide access to your
    #         file system's preferred subnet.</p>
    #            <p>The security groups that you specify must be able to communicate with your file system's
    #         security groups. For information about configuring security groups for file system access, see
    #         the <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/limit-access-security-groups.html">
    #                  <i>Amazon FSx for Windows File Server User Guide</i>
    #               </a>.</p>
    #            <note>
    #               <p>If you choose a security group that doesn't allow connections from within itself, do one
    #           of the following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Configure the security group to allow it to communicate within itself.</p>
    #                  </li>
    #                  <li>
    #                     <p>Choose a different security group that can communicate with the mount target's
    #               security group.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services
    #         resources. We recommend creating at least a name tag for your location.</p>
    # @option params [String] :user
    #   <p>Specifies the user with the permissions to mount and access the files, folders, and file
    #         metadata in your FSx for Windows File Server file system.</p>
    #            <p>For information about choosing a user with the right level of access for your transfer,
    #         see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions">required permissions</a> for FSx for Windows File Server locations.</p>
    # @option params [String] :domain
    #   <p>Specifies the name of the Windows domain that the FSx for Windows File Server file system
    #         belongs to.</p>
    #            <p>If you have multiple Active Directory domains in your environment, configuring this
    #         parameter makes sure that DataSync connects to the right file system.</p>
    # @option params [String] :password
    #   <p>Specifies the password of the user with the permissions to mount and access the files,
    #         folders, and file metadata in your FSx for Windows File Server file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "FsxWindowsSubdirectory",
    #     fsx_filesystem_arn: "FsxFilesystemArn", # required
    #     security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     user: "SmbUser", # required
    #     domain: "SmbDomain",
    #     password: "SmbPassword", # required
    #   }
    #   options = {}
    #   response = client.create_location_fsx_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationFsxWindowsResponse]
    def create_location_fsx_windows(params = {}, options = {})
      request = build_request(:create_location_fsx_windows, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for a Hadoop Distributed File System
    #       (HDFS). DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html#accessing-hdfs">accesses HDFS
    #         clusters</a>.</p>
    # @param [Hash, Types::CreateLocationHdfsRequest] params
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster. If the subdirectory isn't specified, it will default to
    #           <code>/</code>.</p>
    # @option params [Array<Types::HdfsNameNode>] :name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    # @option params [Integer] :block_size
    #   <p>The size of data blocks to write into the HDFS cluster. The block size must be a multiple
    #         of 512 bytes. The default block size is 128 mebibytes (MiB).</p>
    # @option params [Integer] :replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. By
    #         default, data is replicated to three DataNodes.</p>
    # @option params [String] :kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    # @option params [Types::QopConfiguration] :qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer protection settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. If <code>QopConfiguration</code> isn't specified, <code>RpcProtection</code> and
    #           <code>DataTransferProtection</code> default to <code>PRIVACY</code>. If you set
    #           <code>RpcProtection</code> or <code>DataTransferProtection</code>, the other parameter
    #         assumes the same value. </p>
    # @option params [String] :authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    # @option params [String] :simple_user
    #   <p>The user name used to identify the client on the host operating system. </p>
    #            <note>
    #               <p>If <code>SIMPLE</code> is specified for <code>AuthenticationType</code>, this parameter
    #           is required. </p>
    #            </note>
    # @option params [String] :kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    # @option params [String] :kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address.</p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required. </p>
    #            </note>
    # @option params [String] :kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Names (ARNs) of the DataSync agents that can connect to your
    #         HDFS cluster.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The value
    #         can be an empty string. We recommend using tags to name your resources. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "HdfsSubdirectory",
    #     name_nodes: [ # required
    #       {
    #         hostname: "HdfsServerHostname", # required
    #         port: 1, # required
    #       }
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: "KmsKeyProviderUri",
    #     qop_configuration: {
    #       rpc_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"],
    #       data_transfer_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #     },
    #     authentication_type: "SIMPLE" # One of: ["SIMPLE", "KERBEROS"], # required
    #     simple_user: "HdfsUser",
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb5_conf: "data",
    #     agent_arns: ["AgentArn"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_hdfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationHdfsResponse]
    def create_location_hdfs(params = {}, options = {})
      request = build_request(:create_location_hdfs, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for a Network File System (NFS) file
    #       server. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs">accesses NFS file
    #         servers</a>.</p>
    # @param [Hash, Types::CreateLocationNfsRequest] params
    # @option params [String] :subdirectory
    #   <p>Specifies the export path in your NFS file server that you want DataSync to
    #         mount.</p>
    #            <p>This path (or a subdirectory of the path) is where DataSync transfers data to
    #         or from. For information on configuring an export for DataSync, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs">Accessing NFS file servers</a>.</p>
    # @option params [String] :server_hostname
    #   <p>Specifies the DNS name or IP address (IPv4 or IPv6) of the NFS file server that your DataSync agent connects to.</p>
    # @option params [Types::OnPremConfig] :on_prem_config
    #   <p>Specifies the Amazon Resource Name (ARN) of the DataSync agent that can
    #         connect to your NFS file server.</p>
    #            <p>You can specify more than one agent. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#multiple-agents">Using multiple DataSync agents</a>.</p>
    # @option params [Types::NfsMountOptions] :mount_options
    #   <p>Specifies the options that DataSync can use to mount your NFS file
    #         server.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services resources. We recommend creating at least a name tag for your location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "NfsSubdirectory", # required
    #     server_hostname: "ServerHostname", # required
    #     on_prem_config: { # required
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_nfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationNfsResponse]
    def create_location_nfs(params = {}, options = {})
      request = build_request(:create_location_nfs, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an object storage system. DataSync can use this location as a source or destination for transferring data. You
    #       can make transfers with or without a <a href="https://docs.aws.amazon.com/datasync/latest/userguide/do-i-need-datasync-agent.html#when-agent-required">DataSync
    #         agent</a>.</p>
    #          <p>Before you begin, make sure that you understand the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html#create-object-location-prerequisites">prerequisites</a> for DataSync to work with object storage systems.</p>
    # @param [Hash, Types::CreateLocationObjectStorageRequest] params
    # @option params [String] :server_hostname
    #   <p>Specifies the domain name or IP address (IPv4 or IPv6) of the object storage server that
    #         your DataSync agent connects to.</p>
    # @option params [Integer] :server_port
    #   <p>Specifies the port that your object storage server accepts inbound network traffic on (for
    #         example, port 443).</p>
    # @option params [String] :server_protocol
    #   <p>Specifies the protocol that your object storage server uses to communicate. If not specified, the default
    #         value is <code>HTTPS</code>.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies the object prefix for your object storage server. If this is a source location,
    #           DataSync only copies objects with this prefix. If this is a destination location,
    #           DataSync writes all objects with this prefix. </p>
    # @option params [String] :bucket_name
    #   <p>Specifies the name of the object storage bucket involved in the transfer.</p>
    # @option params [String] :access_key
    #   <p>Specifies the access key (for example, a user name) if credentials are required to
    #         authenticate with the object storage server.</p>
    # @option params [String] :secret_key
    #   <p>Specifies the secret key (for example, a password) if credentials are required to
    #         authenticate with the object storage server.</p>
    #            <note>
    #               <p>If you provide a secret using <code>SecretKey</code>, but do not provide secret
    #           configuration details using <code>CmkSecretConfig</code> or <code>CustomSecretConfig</code>,
    #           then DataSync stores the token using your Amazon Web Services account's Secrets Manager secret.</p>
    #            </note>
    # @option params [Array<String>] :agent_arns
    #   <p>(Optional) Specifies the Amazon Resource Names (ARNs) of the DataSync agents
    #         that can connect with your object storage system. If you are setting up an agentless
    #         cross-cloud transfer, you do not need to specify a value for this parameter.</p>
    #            <note>
    #               <p>Make sure you configure this parameter correctly when you first create your storage
    #           location. You cannot add or remove agents from a storage location after you create
    #           it.</p>
    #            </note>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies the key-value pair that represents a tag that you want to add to the resource.
    #         Tags can help you manage, filter, and search for your resources. We recommend creating a name
    #         tag for your location.</p>
    # @option params [String] :server_certificate
    #   <p>Specifies a certificate chain for DataSync to authenticate with your object
    #         storage system if the system uses a private or self-signed certificate authority (CA). You
    #         must specify a single <code>.pem</code> file with a full certificate chain (for example,
    #           <code>file:///home/user/.ssh/object_storage_certificates.pem</code>).</p>
    #            <p>The certificate chain might include:</p>
    #            <ul>
    #               <li>
    #                  <p>The object storage system's certificate</p>
    #               </li>
    #               <li>
    #                  <p>All intermediate certificates (if there are any)</p>
    #               </li>
    #               <li>
    #                  <p>The root certificate of the signing CA</p>
    #               </li>
    #            </ul>
    #            <p>You can concatenate your certificates into a <code>.pem</code> file (which can be up to
    #         32768 bytes before base64 encoding). The following example <code>cat</code> command creates an
    #           <code>object_storage_certificates.pem</code> file that includes three certificates:</p>
    #            <p>
    #               <code>cat object_server_certificate.pem intermediate_certificate.pem
    #           ca_root_certificate.pem > object_storage_certificates.pem</code>
    #            </p>
    #            <p>To use this parameter, configure <code>ServerProtocol</code> to <code>HTTPS</code>.</p>
    # @option params [Types::CmkSecretConfig] :cmk_secret_config
    #   <p>Specifies configuration information for a DataSync-managed secret, which
    #         includes the <code>SecretKey</code> that DataSync uses to access a specific object
    #         storage location, with a customer-managed KMS key.</p>
    #            <p>When you include this paramater as part of a <code>CreateLocationObjectStorage</code>
    #         request, you provide only the KMS key ARN. DataSync uses this KMS key together with the value you specify for the <code>SecretKey</code> parameter
    #         to create a DataSync-managed secret to store the location access credentials.</p>
    #            <p>Make sure the DataSync has permission to access the KMS key that
    #         you specify.</p>
    #            <note>
    #               <p>You can use either <code>CmkSecretConfig</code> (with <code>SecretKey</code>) or
    #             <code>CustomSecretConfig</code> (without <code>SecretKey</code>) to provide credentials
    #           for a <code>CreateLocationObjectStorage</code> request. Do not provide both parameters for
    #           the same request.</p>
    #            </note>
    # @option params [Types::CustomSecretConfig] :custom_secret_config
    #   <p>Specifies configuration information for a customer-managed Secrets Manager secret where
    #         the secret key for a specific object storage location is stored in plain text. This
    #         configuration includes the secret ARN, and the ARN for an IAM role that
    #         provides access to the secret.</p>
    #            <note>
    #               <p>You can use either <code>CmkSecretConfig</code> (with <code>SecretKey</code>) or
    #             <code>CustomSecretConfig</code> (without <code>SecretKey</code>) to provide credentials
    #           for a <code>CreateLocationObjectStorage</code> request. Do not provide both parameters for
    #           the same request.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_hostname: "ServerHostname", # required
    #     server_port: 1,
    #     server_protocol: "HTTPS" # One of: ["HTTPS", "HTTP"],
    #     subdirectory: "S3Subdirectory",
    #     bucket_name: "ObjectStorageBucketName", # required
    #     access_key: "ObjectStorageAccessKey",
    #     secret_key: "ObjectStorageSecretKey",
    #     agent_arns: ["AgentArn"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     server_certificate: "data",
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_location_object_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationObjectStorageResponse]
    def create_location_object_storage(params = {}, options = {})
      request = build_request(:create_location_object_storage, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for an Amazon S3 bucket.
    #         DataSync can use this location as a source or destination for transferring
    #       data.</p>
    #          <important>
    #             <p>Before you begin, make sure that you read the following topics:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes">Storage
    #               class considerations with Amazon S3 locations</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests">Evaluating S3 request costs when using DataSync</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </important>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html">Configuring
    #         transfers with Amazon S3</a>.</p>
    # @param [Hash, Types::CreateLocationS3Request] params
    # @option params [String] :subdirectory
    #   <p>Specifies a prefix in the S3 bucket that DataSync reads from or writes to
    #         (depending on whether the bucket is a source or destination location).</p>
    #            <note>
    #               <p>DataSync can't transfer objects with a prefix that begins with a slash (<code>/</code>)
    #           or includes <code>//</code>, <code>/./</code>, or <code>/../</code> patterns. For
    #           example:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>/photos</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos//2006/January</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos/./2006/February</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos/../2006/March</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :s3_bucket_arn
    #   <p>Specifies the ARN of the S3 bucket that you want to use as a location. (When creating
    #         your DataSync task later, you specify whether this location is a transfer source or
    #         destination.) </p>
    #            <p>If your S3 bucket is located on an Outposts resource, you must specify an
    #           Amazon S3 access point. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing data access
    #           with Amazon S3 access points</a> in the <i>Amazon S3 User
    #           Guide</i>.</p>
    # @option params [String] :s3_storage_class
    #   <p>Specifies the storage class that you want your objects to use when Amazon S3 is a
    #         transfer destination.</p>
    #            <p>For buckets in Amazon Web Services Regions, the storage class defaults to
    #           <code>STANDARD</code>. For buckets on Outposts, the storage class defaults to
    #           <code>OUTPOSTS</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes">Storage class
    #           considerations with Amazon S3 transfers</a>.</p>
    # @option params [Types::S3Config] :s3_config
    #   <p>Specifies the Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that DataSync uses to access your S3 bucket.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access">Providing
    #             DataSync access to S3 buckets</a>.</p>
    # @option params [Array<String>] :agent_arns
    #   <p>(Amazon S3 on Outposts only) Specifies the Amazon Resource Name (ARN) of the
    #           DataSync agent on your Outpost.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent">Deploy your DataSync agent on Outposts</a>.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services resources. We recommend creating at least a name tag for your transfer location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "S3Subdirectory",
    #     s3_bucket_arn: "S3BucketArn", # required
    #     s3_storage_class: "STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_INSTANT_RETRIEVAL"],
    #     s3_config: { # required
    #       bucket_access_role_arn: "IamRoleArn", # required
    #     },
    #     agent_arns: ["AgentArn"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_location_s3(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationS3Response]
    def create_location_s3(params = {}, options = {})
      request = build_request(:create_location_s3, params)
      request.send_request(options)
    end

    # <p>Creates a transfer <i>location</i> for a Server Message Block (SMB) file
    #       server. DataSync can use this location as a source or destination for
    #       transferring data.</p>
    #          <p>Before you begin, make sure that you understand how DataSync accesses SMB
    #       file servers. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @param [Hash, Types::CreateLocationSmbRequest] params
    # @option params [String] :subdirectory
    #   <p>Specifies the name of the share exported by your SMB file server where DataSync
    #         will read or write data. You can include a subdirectory in the share path (for example,
    #           <code>/path/to/subdirectory</code>). Make sure that other SMB clients in your network can
    #         also mount this path.</p>
    #            <p>To copy all data in the subdirectory, DataSync must be able to mount the SMB
    #         share and access all of its data. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [String] :server_hostname
    #   <p>Specifies the domain name or IP address (IPv4 or IPv6) of the SMB file server that your DataSync agent connects to.</p>
    #            <note>
    #               <p>If you're using Kerberos authentication, you must specify a domain name.</p>
    #            </note>
    # @option params [String] :user
    #   <p>Specifies the user that can mount and access the files, folders, and file metadata in your
    #         SMB file server. This parameter applies only if <code>AuthenticationType</code> is set to
    #           <code>NTLM</code>.</p>
    #            <p>For information about choosing a user with the right level of access for your transfer,
    #         see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [String] :domain
    #   <p>Specifies the Windows domain name that your SMB file server belongs to. This parameter
    #         applies only if <code>AuthenticationType</code> is set to <code>NTLM</code>.</p>
    #            <p>If you have multiple domains in your environment, configuring this parameter makes sure
    #         that DataSync connects to the right file server.</p>
    # @option params [String] :password
    #   <p>Specifies the password of the user who can mount your SMB file server and has permission
    #         to access the files and folders involved in your transfer. This parameter applies only if
    #           <code>AuthenticationType</code> is set to <code>NTLM</code>.</p>
    # @option params [Array<String>] :agent_arns
    #   <p>Specifies the DataSync agent (or agents) that can connect to your SMB file
    #         server. You specify an agent by using its Amazon Resource Name (ARN).</p>
    # @option params [Types::SmbMountOptions] :mount_options
    #   <p>Specifies the version of the SMB protocol that DataSync uses to access your SMB
    #         file server.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies labels that help you categorize, filter, and search for your Amazon Web Services
    #         resources. We recommend creating at least a name tag for your location.</p>
    # @option params [String] :authentication_type
    #   <p>Specifies the authentication protocol that DataSync uses to connect to your SMB
    #         file server. DataSync supports <code>NTLM</code> (default) and <code>KERBEROS</code>
    #         authentication.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [Array<String>] :dns_ip_addresses
    #   <p>Specifies the IPv4 or IPv6 addresses for the DNS servers that your SMB file server belongs to.
    #         This parameter applies only if <code>AuthenticationType</code> is set to
    #         <code>KERBEROS</code>.</p>
    #            <p>If you have multiple domains in your environment, configuring this parameter makes sure
    #         that DataSync connects to the right SMB file server.</p>
    # @option params [String] :kerberos_principal
    #   <p>Specifies a Kerberos principal, which is an identity in your Kerberos realm that has
    #         permission to access the files, folders, and file metadata in your SMB file server.</p>
    #            <p>A Kerberos principal might look like <code>HOST/kerberosuser@MYDOMAIN.ORG</code>.</p>
    #            <p>Principal names are case sensitive. Your DataSync task execution will fail if
    #         the principal that you specify for this parameter doesn’t exactly match the principal that you
    #         use to create the keytab file.</p>
    # @option params [String] :kerberos_keytab
    #   <p>Specifies your Kerberos key table (keytab) file, which includes mappings between your
    #         Kerberos principal and encryption keys.</p>
    #            <p>To avoid task execution errors, make sure that the Kerberos principal that you use to
    #         create the keytab file matches exactly what you specify for <code>KerberosPrincipal</code>.
    #       </p>
    # @option params [String] :kerberos_krb5_conf
    #   <p>Specifies a Kerberos configuration file (<code>krb5.conf</code>) that defines your
    #         Kerberos realm configuration.</p>
    #            <p>The file must be base64 encoded. If you're using the CLI, the encoding is
    #         done for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subdirectory: "SmbSubdirectory", # required
    #     server_hostname: "ServerHostname", # required
    #     user: "SmbUser",
    #     domain: "SmbDomain",
    #     password: "SmbPassword",
    #     agent_arns: ["AgentArn"], # required
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     authentication_type: "NTLM" # One of: ["NTLM", "KERBEROS"],
    #     dns_ip_addresses: ["ServerIpAddress"],
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb5_conf: "data"
    #   }
    #   options = {}
    #   response = client.create_location_smb(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn"
    #   }
    # @return [Types::CreateLocationSmbResponse]
    def create_location_smb(params = {}, options = {})
      request = build_request(:create_location_smb, params)
      request.send_request(options)
    end

    # <p>Configures a <i>task</i>, which defines where and how DataSync
    #       transfers your data.</p>
    #          <p>A task includes a source location, destination location, and transfer options (such as
    #       bandwidth limits, scheduling, and more).</p>
    #          <important>
    #             <p>If you're planning to transfer data to or from an Amazon S3 location, review
    #           <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests">how
    #             DataSync can affect your S3 request charges</a> and the <a href="http://aws.amazon.com/datasync/pricing/">DataSync pricing page</a> before
    #         you begin.</p>
    #          </important>
    # @param [Hash, Types::CreateTaskRequest] params
    # @option params [String] :source_location_arn
    #   <p>Specifies the ARN of your transfer's source location.</p>
    # @option params [String] :destination_location_arn
    #   <p>Specifies the ARN of your transfer's destination location. </p>
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log group for
    #         monitoring your task.</p>
    #            <p>For Enhanced mode tasks, you don't need to specify anything. DataSync
    #         automatically sends logs to a CloudWatch log group named
    #         <code>/aws/datasync</code>.</p>
    # @option params [String] :name
    #   <p>Specifies the name of your task.</p>
    # @option params [Types::Options] :options
    #   <p>Specifies your task's settings, such as preserving file metadata, verifying data
    #         integrity, among other options.</p>
    # @option params [Array<Types::FilterRule>] :excludes
    #   <p>Specifies exclude filters that define the files, objects, and folders in your source
    #         location that you don't want DataSync to transfer. For more information and
    #         examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html">Specifying what DataSync transfers by using filters</a>.</p>
    # @option params [Types::TaskSchedule] :schedule
    #   <p>Specifies a schedule for when you want your task to run. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your
    #           task</a>.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies the tags that you want to apply to your task.</p>
    #            <p>
    #               <i>Tags</i> are key-value pairs that help you manage, filter, and search
    #         for your DataSync resources.</p>
    # @option params [Array<Types::FilterRule>] :includes
    #   <p>Specifies include filters that define the files, objects, and folders in your source
    #         location that you want DataSync to transfer. For more information and examples, see
    #           <a href="https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html">Specifying what
    #             DataSync transfers by using filters</a>.</p>
    # @option params [Types::ManifestConfig] :manifest_config
    #   <p>Configures a manifest, which is a list of files or objects that you want DataSync to transfer. For more information and configuration examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html">Specifying what DataSync transfers by using a manifest</a>.</p>
    #            <p>When using this parameter, your caller identity (the role that you're using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    # @option params [Types::TaskReportConfig] :task_report_config
    #   <p>Specifies how you want to configure a task report, which provides detailed information
    #         about your DataSync transfer. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html">Monitoring your DataSync
    #           transfers with task reports</a>.</p>
    #            <p>When using this parameter, your caller identity (the role that you're using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    # @option params [String] :task_mode
    #   <p>Specifies one of the following task modes for your data transfer:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENHANCED</code> - Transfer virtually unlimited numbers of objects with higher
    #             performance than Basic mode. Enhanced mode tasks optimize the data transfer process by
    #             listing, preparing, transferring, and verifying data in parallel. Enhanced mode is
    #             currently available for transfers between Amazon S3 locations, transfers between
    #             Azure Blob and Amazon S3 without an agent, and transfers between other clouds and
    #               Amazon S3 without an agent.</p>
    #                  <note>
    #                     <p>To create an Enhanced mode task, the IAM role that you use to call
    #               the <code>CreateTask</code> operation must have the
    #                 <code>iam:CreateServiceLinkedRole</code> permission.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BASIC</code> (default) - Transfer files or objects between Amazon Web Services
    #             storage and all other supported DataSync locations. Basic mode tasks are subject
    #             to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/datasync-limits.html">quotas</a> on the number of files, objects, and directories in a dataset. Basic
    #             mode sequentially prepares, transfers, and verifies data, making it slower than Enhanced
    #             mode for most workloads.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences">Understanding
    #           task mode differences</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_location_arn: "LocationArn", # required
    #     destination_location_arn: "LocationArn", # required
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     name: "TagValue",
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     schedule: {
    #       schedule_expression: "ScheduleExpressionCron", # required
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER" # One of: ["TRANSFER"],
    #       format: "CSV" # One of: ["CSV"],
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId"
    #         }
    #       }
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         }
    #       },
    #       output_type: "SUMMARY_ONLY" # One of: ["SUMMARY_ONLY", "STANDARD"],
    #       report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"],
    #       object_version_ids: "INCLUDE" # One of: ["INCLUDE", "NONE"],
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         }
    #       }
    #     },
    #     task_mode: "BASIC" # One of: ["BASIC", "ENHANCED"]
    #   }
    #   options = {}
    #   response = client.create_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_arn: "TaskArn"
    #   }
    # @return [Types::CreateTaskResponse]
    def create_task(params = {}, options = {})
      request = build_request(:create_task, params)
      request.send_request(options)
    end

    # <p>Removes an DataSync agent resource from your Amazon Web Services account.</p>
    #          <p>Keep in mind that this operation (which can't be undone) doesn't remove the agent's
    #       virtual machine (VM) or Amazon EC2 instance from your storage environment. For next
    #       steps, you can delete the VM or instance from your storage environment or reuse it to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/activate-agent.html">activate a new
    #         agent</a>.</p>
    # @param [Hash, Types::DeleteAgentRequest] params
    # @option params [String] :agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to delete. Use the <code>ListAgents</code>
    #         operation to return a list of agents for your account and Amazon Web Services Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_arn: "AgentArn", # required
    #   }
    #   options = {}
    #   response = client.delete_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAgentResponse]
    def delete_agent(params = {}, options = {})
      request = build_request(:delete_agent, params)
      request.send_request(options)
    end

    # <p>Deletes a transfer location resource from DataSync. </p>
    # @param [Hash, Types::DeleteLocationRequest] params
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the location to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLocationResponse]
    def delete_location(params = {}, options = {})
      request = build_request(:delete_location, params)
      request.send_request(options)
    end

    # <p>Deletes a transfer task resource from DataSync.</p>
    # @param [Hash, Types::DeleteTaskRequest] params
    # @option params [String] :task_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the task that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TaskArn", # required
    #   }
    #   options = {}
    #   response = client.delete_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTaskResponse]
    def delete_task(params = {}, options = {})
      request = build_request(:delete_task, params)
      request.send_request(options)
    end

    # <p>Returns information about an DataSync agent, such as its name, service
    #       endpoint type, and status.</p>
    # @param [Hash, Types::DescribeAgentRequest] params
    # @option params [String] :agent_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the DataSync agent that you want
    #         information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_arn: "AgentArn", # required
    #   }
    #   options = {}
    #   response = client.describe_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_arn: "AgentArn",
    #     name: "TagValue",
    #     status: "ONLINE" # One of: ["ONLINE", "OFFLINE"],
    #     last_connection_time: Time.now,
    #     creation_time: Time.now,
    #     endpoint_type: "PUBLIC" # One of: ["PUBLIC", "PRIVATE_LINK", "FIPS"],
    #     private_link_config: {
    #       vpc_endpoint_id: "VpcEndpointId",
    #       private_link_endpoint: "Endpoint",
    #       subnet_arns: ["Ec2SubnetArn"],
    #       security_group_arns: ["Ec2SecurityGroupArn"]
    #     },
    #     platform: {
    #       version: "AgentVersion"
    #     }
    #   }
    # @return [Types::DescribeAgentResponse]
    def describe_agent(params = {}, options = {})
      request = build_request(:describe_agent, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for Microsoft Azure
    #       Blob Storage is configured.</p>
    # @param [Hash, Types::DescribeLocationAzureBlobRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of your Azure Blob Storage transfer
    #         location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_azure_blob(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     authentication_type: "SAS" # One of: ["SAS", "NONE"],
    #     blob_type: "BLOCK" # One of: ["BLOCK"],
    #     access_tier: "HOT" # One of: ["HOT", "COOL", "ARCHIVE"],
    #     agent_arns: ["AgentArn"],
    #     creation_time: Time.now,
    #     managed_secret_config: {
    #       secret_arn: "SecretArn"
    #     },
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    # @return [Types::DescribeLocationAzureBlobResponse]
    def describe_location_azure_blob(params = {}, options = {})
      request = build_request(:describe_location_azure_blob, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an Amazon EFS file system is configured.</p>
    # @param [Hash, Types::DescribeLocationEfsRequest] params
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that you
    #         want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_efs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     ec2_config: {
    #       subnet_arn: "Ec2SubnetArn", # required
    #       security_group_arns: ["Ec2SecurityGroupArn"], # required
    #     },
    #     creation_time: Time.now,
    #     access_point_arn: "EfsAccessPointArn",
    #     file_system_access_role_arn: "IamRoleArn",
    #     in_transit_encryption: "NONE" # One of: ["NONE", "TLS1_2"]
    #   }
    # @return [Types::DescribeLocationEfsResponse]
    def describe_location_efs(params = {}, options = {})
      request = build_request(:describe_location_efs, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an Amazon FSx for Lustre file system is configured.</p>
    # @param [Hash, Types::DescribeLocationFsxLustreRequest] params
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Lustre location to describe.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_fsx_lustre(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     security_group_arns: ["Ec2SecurityGroupArn"],
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeLocationFsxLustreResponse]
    def describe_location_fsx_lustre(params = {}, options = {})
      request = build_request(:describe_location_fsx_lustre, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an Amazon FSx for NetApp ONTAP file system is configured.</p>
    #          <note>
    #             <p>If your location uses SMB, the <code>DescribeLocationFsxOntap</code> operation doesn't
    #         actually return a <code>Password</code>.</p>
    #          </note>
    # @param [Hash, Types::DescribeLocationFsxOntapRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file system
    #         location that you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_fsx_ontap(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     protocol: {
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       }
    #     },
    #     security_group_arns: ["Ec2SecurityGroupArn"],
    #     storage_virtual_machine_arn: "StorageVirtualMachineArn",
    #     fsx_filesystem_arn: "FsxFilesystemArn"
    #   }
    # @return [Types::DescribeLocationFsxOntapResponse]
    def describe_location_fsx_ontap(params = {}, options = {})
      request = build_request(:describe_location_fsx_ontap, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an Amazon FSx for OpenZFS file system is configured.</p>
    #          <note>
    #             <p>Response elements related to <code>SMB</code> aren't supported with the
    #           <code>DescribeLocationFsxOpenZfs</code> operation.</p>
    #          </note>
    # @param [Hash, Types::DescribeLocationFsxOpenZfsRequest] params
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS location to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_fsx_open_zfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     security_group_arns: ["Ec2SecurityGroupArn"],
    #     protocol: {
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       }
    #     },
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeLocationFsxOpenZfsResponse]
    def describe_location_fsx_open_zfs(params = {}, options = {})
      request = build_request(:describe_location_fsx_open_zfs, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an Amazon FSx for Windows File Server file system is configured.</p>
    # @param [Hash, Types::DescribeLocationFsxWindowsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for Windows File Server location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_fsx_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     security_group_arns: ["Ec2SecurityGroupArn"],
    #     creation_time: Time.now,
    #     user: "SmbUser",
    #     domain: "SmbDomain"
    #   }
    # @return [Types::DescribeLocationFsxWindowsResponse]
    def describe_location_fsx_windows(params = {}, options = {})
      request = build_request(:describe_location_fsx_windows, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for a Hadoop
    #       Distributed File System (HDFS) is configured.</p>
    # @param [Hash, Types::DescribeLocationHdfsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the HDFS location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_hdfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     name_nodes: [
    #       {
    #         hostname: "HdfsServerHostname", # required
    #         port: 1, # required
    #       }
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: "KmsKeyProviderUri",
    #     qop_configuration: {
    #       rpc_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"],
    #       data_transfer_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #     },
    #     authentication_type: "SIMPLE" # One of: ["SIMPLE", "KERBEROS"],
    #     simple_user: "HdfsUser",
    #     kerberos_principal: "KerberosPrincipal",
    #     agent_arns: ["AgentArn"],
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeLocationHdfsResponse]
    def describe_location_hdfs(params = {}, options = {})
      request = build_request(:describe_location_hdfs, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for a Network
    #       File System (NFS) file server is configured.</p>
    # @param [Hash, Types::DescribeLocationNfsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the NFS location that you want information
    #         about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_nfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     on_prem_config: {
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #     },
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeLocationNfsResponse]
    def describe_location_nfs(params = {}, options = {})
      request = build_request(:describe_location_nfs, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an object
    #       storage system is configured.</p>
    # @param [Hash, Types::DescribeLocationObjectStorageRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the object storage system location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_object_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     access_key: "ObjectStorageAccessKey",
    #     server_port: 1,
    #     server_protocol: "HTTPS" # One of: ["HTTPS", "HTTP"],
    #     agent_arns: ["AgentArn"],
    #     creation_time: Time.now,
    #     server_certificate: "data",
    #     managed_secret_config: {
    #       secret_arn: "SecretArn"
    #     },
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    # @return [Types::DescribeLocationObjectStorageResponse]
    def describe_location_object_storage(params = {}, options = {})
      request = build_request(:describe_location_object_storage, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for an S3 bucket
    #       is configured.</p>
    # @param [Hash, Types::DescribeLocationS3Request] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon S3 location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_s3(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     s3_storage_class: "STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_INSTANT_RETRIEVAL"],
    #     s3_config: {
    #       bucket_access_role_arn: "IamRoleArn", # required
    #     },
    #     agent_arns: ["AgentArn"],
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeLocationS3Response]
    def describe_location_s3(params = {}, options = {})
      request = build_request(:describe_location_s3, params)
      request.send_request(options)
    end

    # <p>Provides details about how an DataSync transfer location for a Server
    #       Message Block (SMB) file server is configured.</p>
    # @param [Hash, Types::DescribeLocationSmbRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the SMB location that you want information
    #         about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #   }
    #   options = {}
    #   response = client.describe_location_smb(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     location_arn: "LocationArn",
    #     location_uri: "LocationUri",
    #     agent_arns: ["AgentArn"],
    #     user: "SmbUser",
    #     domain: "SmbDomain",
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #     },
    #     creation_time: Time.now,
    #     dns_ip_addresses: ["ServerIpAddress"],
    #     kerberos_principal: "KerberosPrincipal",
    #     authentication_type: "NTLM" # One of: ["NTLM", "KERBEROS"]
    #   }
    # @return [Types::DescribeLocationSmbResponse]
    def describe_location_smb(params = {}, options = {})
      request = build_request(:describe_location_smb, params)
      request.send_request(options)
    end

    # <p>Provides information about a <i>task</i>, which defines where and how
    #         DataSync transfers your data.</p>
    # @param [Hash, Types::DescribeTaskRequest] params
    # @option params [String] :task_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the transfer task that you want information
    #         about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TaskArn", # required
    #   }
    #   options = {}
    #   response = client.describe_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_arn: "TaskArn",
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"],
    #     name: "TagValue",
    #     current_task_execution_arn: "TaskExecutionArn",
    #     source_location_arn: "LocationArn",
    #     destination_location_arn: "LocationArn",
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     source_network_interface_arns: ["NetworkInterfaceArn"],
    #     destination_network_interface_arns: ["NetworkInterfaceArn"],
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     schedule: {
    #       schedule_expression: "ScheduleExpressionCron", # required
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     error_code: "string",
    #     error_detail: "string",
    #     creation_time: Time.now,
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER" # One of: ["TRANSFER"],
    #       format: "CSV" # One of: ["CSV"],
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId"
    #         }
    #       }
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         }
    #       },
    #       output_type: "SUMMARY_ONLY" # One of: ["SUMMARY_ONLY", "STANDARD"],
    #       report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"],
    #       object_version_ids: "INCLUDE" # One of: ["INCLUDE", "NONE"],
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         }
    #       }
    #     },
    #     schedule_details: {
    #       status_update_time: Time.now,
    #       disabled_reason: "ScheduleDisabledReason",
    #       disabled_by: "USER" # One of: ["USER", "SERVICE"]
    #     },
    #     task_mode: "BASIC" # One of: ["BASIC", "ENHANCED"]
    #   }
    # @return [Types::DescribeTaskResponse]
    def describe_task(params = {}, options = {})
      request = build_request(:describe_task, params)
      request.send_request(options)
    end

    # <p>Provides information about an execution of your DataSync task. You can
    #       use this operation to help monitor the progress of an ongoing data transfer or check the
    #       results of the transfer.</p>
    #          <note>
    #             <p>Some <code>DescribeTaskExecution</code> response elements are only relevant to a
    #         specific task mode. For information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html#task-mode-differences">Understanding task mode differences</a> and <a href="https://docs.aws.amazon.com/datasync/latest/userguide/transfer-performance-counters.html">Understanding data
    #           transfer performance counters</a>.</p>
    #          </note>
    # @param [Hash, Types::DescribeTaskExecutionRequest] params
    # @option params [String] :task_execution_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the task execution that you want
    #         information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_execution_arn: "TaskExecutionArn", # required
    #   }
    #   options = {}
    #   response = client.describe_task_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_execution_arn: "TaskExecutionArn",
    #     status: "QUEUED" # One of: ["QUEUED", "CANCELLING", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"],
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER" # One of: ["TRANSFER"],
    #       format: "CSV" # One of: ["CSV"],
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId"
    #         }
    #       }
    #     },
    #     start_time: Time.now,
    #     estimated_files_to_transfer: 1,
    #     estimated_bytes_to_transfer: 1,
    #     files_transferred: 1,
    #     bytes_written: 1,
    #     bytes_transferred: 1,
    #     bytes_compressed: 1,
    #     result: {
    #       prepare_duration: 1,
    #       prepare_status: "PENDING" # One of: ["PENDING", "SUCCESS", "ERROR"],
    #       total_duration: 1,
    #       transfer_duration: 1,
    #       transfer_status: "PENDING" # One of: ["PENDING", "SUCCESS", "ERROR"],
    #       verify_duration: 1,
    #       verify_status: "PENDING" # One of: ["PENDING", "SUCCESS", "ERROR"],
    #       error_code: "string",
    #       error_detail: "string"
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         }
    #       },
    #       output_type: "SUMMARY_ONLY" # One of: ["SUMMARY_ONLY", "STANDARD"],
    #       report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"],
    #       object_version_ids: "INCLUDE" # One of: ["INCLUDE", "NONE"],
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         }
    #       }
    #     },
    #     files_deleted: 1,
    #     files_skipped: 1,
    #     files_verified: 1,
    #     report_result: {
    #       status: "PENDING" # One of: ["PENDING", "SUCCESS", "ERROR"],
    #       error_code: "string",
    #       error_detail: "string"
    #     },
    #     estimated_files_to_delete: 1,
    #     task_mode: "BASIC" # One of: ["BASIC", "ENHANCED"],
    #     files_prepared: 1,
    #     files_listed: {
    #       at_source: 1,
    #       at_destination_for_delete: 1
    #     },
    #     files_failed: {
    #       prepare: 1,
    #       transfer: 1,
    #       verify: 1,
    #       delete: 1
    #     },
    #     launch_time: Time.now,
    #     end_time: Time.now
    #   }
    # @return [Types::DescribeTaskExecutionResponse]
    def describe_task_execution(params = {}, options = {})
      request = build_request(:describe_task_execution, params)
      request.send_request(options)
    end

    # <p>Returns a list of DataSync agents that belong to an Amazon Web Services account in the Amazon Web Services Region specified in the request.</p>
    #          <p>With pagination, you can reduce the number of agents returned in a response. If you get
    #       a truncated list of agents in a response, the response contains a marker that you can specify
    #       in your next request to fetch the next page of agents.</p>
    #          <p>
    #             <code>ListAgents</code> is eventually consistent. This means the result of running the
    #       operation might not reflect that you just created or deleted an agent. For example, if you
    #       create an agent with <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateAgent.html">CreateAgent</a> and then
    #       immediately run <code>ListAgents</code>, that agent might not show up in the list right away.
    #       In situations like this, you can always confirm whether an agent has been created (or deleted)
    #       by using <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_DescribeAgent.html">DescribeAgent</a>.</p>
    # @param [Hash, Types::ListAgentsRequest] params
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of DataSync agents to list in a response. By
    #         default, a response shows a maximum of 100 agents.</p>
    # @option params [String] :next_token
    #   <p>Specifies an opaque string that indicates the position to begin the next list of
    #         results in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agents: [
    #       {
    #         agent_arn: "AgentArn",
    #         name: "TagValue",
    #         status: "ONLINE" # One of: ["ONLINE", "OFFLINE"],
    #         platform: {
    #           version: "AgentVersion"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAgentsResponse]
    def list_agents(params = {}, options = {})
      request = build_request(:list_agents, params)
      request.send_request(options)
    end

    # <p>Returns a list of source and destination locations.</p>
    #          <p>If you have more locations than are returned in a response (that is, the response
    #       returns only a truncated list of your agents), the response contains a token that you can
    #       specify in your next request to fetch the next page of locations.</p>
    # @param [Hash, Types::ListLocationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of locations to return.</p>
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         locations.</p>
    # @option params [Array<Types::LocationFilter>] :filters
    #   <p>You can use API filters to narrow down the list of resources returned by
    #           <code>ListLocations</code>. For example, to retrieve all tasks on a specific source
    #         location, you can use <code>ListLocations</code> with filter name <code>LocationType S3</code>
    #         and <code>Operator Equals</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "LocationUri" # One of: ["LocationUri", "LocationType", "CreationTime"], # required
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals" # One of: ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_locations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     locations: [
    #       {
    #         location_arn: "LocationArn",
    #         location_uri: "LocationUri"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLocationsResponse]
    def list_locations(params = {}, options = {})
      request = build_request(:list_locations, params)
      request.send_request(options)
    end

    # <p>Returns all the tags associated with an Amazon Web Services resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the resource that you want tag information
    #         on.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies how many results that you want in the response.</p>
    # @option params [String] :next_token
    #   <p>Specifies an opaque string that indicates the position to begin the next list of
    #         results in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     max_results: 1,
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

    # <p>Returns a list of executions for an DataSync transfer task.</p>
    # @param [Hash, Types::ListTaskExecutionsRequest] params
    # @option params [String] :task_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the task that you want execution
    #         information about.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies how many results you want in the response.</p>
    # @option params [String] :next_token
    #   <p>Specifies an opaque string that indicates the position at which to begin the next list
    #         of results in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TaskArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_task_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_executions: [
    #       {
    #         task_execution_arn: "TaskExecutionArn",
    #         status: "QUEUED" # One of: ["QUEUED", "CANCELLING", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"],
    #         task_mode: "BASIC" # One of: ["BASIC", "ENHANCED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTaskExecutionsResponse]
    def list_task_executions(params = {}, options = {})
      request = build_request(:list_task_executions, params)
      request.send_request(options)
    end

    # <p>Returns a list of the DataSync tasks you created.</p>
    # @param [Hash, Types::ListTasksRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of tasks to return.</p>
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         tasks.</p>
    # @option params [Array<Types::TaskFilter>] :filters
    #   <p>You can use API filters to narrow down the list of resources returned by
    #           <code>ListTasks</code>. For example, to retrieve all tasks on a specific source location,
    #         you can use <code>ListTasks</code> with filter name <code>LocationId</code> and <code>Operator
    #           Equals</code> with the ARN for the location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filters: [
    #       {
    #         name: "LocationId" # One of: ["LocationId", "CreationTime"], # required
    #         values: ["FilterAttributeValue"], # required
    #         operator: "Equals" # One of: ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_arn: "TaskArn",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"],
    #         name: "TagValue",
    #         task_mode: "BASIC" # One of: ["BASIC", "ENHANCED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTasksResponse]
    def list_tasks(params = {}, options = {})
      request = build_request(:list_tasks, params)
      request.send_request(options)
    end

    # <p>Starts an DataSync transfer task. For each task, you can only run one task
    #       execution at a time.</p>
    #          <p>There are several steps to a task execution. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#understand-task-execution-statuses">Task execution statuses</a>.</p>
    #          <important>
    #             <p>If you're planning to transfer data to or from an Amazon S3 location, review
    #           <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests">how
    #             DataSync can affect your S3 request charges</a> and the <a href="http://aws.amazon.com/datasync/pricing/">DataSync pricing page</a> before
    #         you begin.</p>
    #          </important>
    # @param [Hash, Types::StartTaskExecutionRequest] params
    # @option params [String] :task_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the task that you want to start.</p>
    # @option params [Types::Options] :override_options
    #   <p>Indicates how your transfer task is configured. These options include how DataSync handles files, objects, and their associated metadata during your transfer. You
    #         also can specify how to verify data integrity, set bandwidth limits for your task, among other
    #         options.</p>
    #            <p>Each option has a default value. Unless you need to, you don't have to configure any
    #         option before calling <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #            <p>You also can override your task options for each task execution. For example, you might
    #         want to adjust the <code>LogLevel</code> for an individual execution.</p>
    # @option params [Array<Types::FilterRule>] :includes
    #   <p>Specifies a list of filter rules that determines which files to include when running a
    #         task. The pattern should contain a single filter string that consists of the patterns to
    #         include. The patterns are delimited by "|" (that is, a pipe), for example,
    #           <code>"/folder1|/folder2"</code>. </p>
    # @option params [Array<Types::FilterRule>] :excludes
    #   <p>Specifies a list of filter rules that determines which files to exclude from a task. The
    #         list contains a single filter string that consists of the patterns to exclude. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    # @option params [Types::ManifestConfig] :manifest_config
    #   <p>Configures a manifest, which is a list of files or objects that you want DataSync to transfer. For more information and configuration examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html">Specifying what DataSync transfers by using a manifest</a>.</p>
    #            <p>When using this parameter, your caller identity (the role that you're using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    #            <p>To remove a manifest configuration, specify this parameter with an empty value.</p>
    # @option params [Types::TaskReportConfig] :task_report_config
    #   <p>Specifies how you want to configure a task report, which provides detailed information
    #         about your DataSync transfer. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html">Monitoring your DataSync
    #           transfers with task reports</a>.</p>
    #            <p>When using this parameter, your caller identity (the role that you're using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    #            <p>To remove a task report configuration, specify this parameter as empty.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies the tags that you want to apply to the Amazon Resource Name (ARN) representing
    #         the task execution.</p>
    #            <p>
    #               <i>Tags</i> are key-value pairs that help you manage, filter, and search for
    #         your DataSync resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TaskArn", # required
    #     override_options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     },
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER" # One of: ["TRANSFER"],
    #       format: "CSV" # One of: ["CSV"],
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId"
    #         }
    #       }
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         }
    #       },
    #       output_type: "SUMMARY_ONLY" # One of: ["SUMMARY_ONLY", "STANDARD"],
    #       report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"],
    #       object_version_ids: "INCLUDE" # One of: ["INCLUDE", "NONE"],
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         }
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
    #   response = client.start_task_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_execution_arn: "TaskExecutionArn"
    #   }
    # @return [Types::StartTaskExecutionResponse]
    def start_task_execution(params = {}, options = {})
      request = build_request(:start_task_execution, params)
      request.send_request(options)
    end

    # <p>Applies a <i>tag</i> to an Amazon Web Services resource. Tags are
    #       key-value pairs that can help you manage, filter, and search for your resources.</p>
    #          <p>These include DataSync resources, such as locations, tasks, and task
    #       executions.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the resource to apply the tag to.</p>
    # @option params [Array<Types::TagListEntry>] :tags
    #   <p>Specifies the tags that you want to apply to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # <p>Removes tags from an Amazon Web Services resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the resource to remove the tags
    #         from.</p>
    # @option params [Array<String>] :keys
    #   <p>Specifies the keys in the tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     keys: ["TagKey"], # required
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

    # <p>Updates the name of an DataSync agent.</p>
    # @param [Hash, Types::UpdateAgentRequest] params
    # @option params [String] :agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to update.</p>
    # @option params [String] :name
    #   <p>The name that you want to use to configure the agent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     agent_arn: "AgentArn", # required
    #     name: "TagValue"
    #   }
    #   options = {}
    #   response = client.update_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAgentResponse]
    def update_agent(params = {}, options = {})
      request = build_request(:update_agent, params)
      request.send_request(options)
    end

    # <p>Modifies the following configurations of the Microsoft Azure Blob Storage transfer
    #       location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html">Configuring DataSync transfers with Azure Blob Storage</a>.</p>
    # @param [Hash, Types::UpdateLocationAzureBlobRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the ARN of the Azure Blob Storage transfer location that you're updating.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies path segments if you want to limit your transfer to a virtual directory in your
    #         container (for example, <code>/my/images</code>).</p>
    # @option params [String] :authentication_type
    #   <p>Specifies the authentication method DataSync uses to access your Azure Blob
    #         Storage. DataSync can access blob storage using a shared access signature
    #         (SAS).</p>
    # @option params [Types::AzureBlobSasConfiguration] :sas_configuration
    #   <p>Specifies the SAS configuration that allows DataSync to access your Azure Blob
    #         Storage.</p>
    # @option params [String] :blob_type
    #   <p>Specifies the type of blob that you want your objects or files to be when transferring
    #         them into Azure Blob Storage. Currently, DataSync only supports moving data into
    #         Azure Blob Storage as block blobs. For more information on blob types, see the <a href="https://learn.microsoft.com/en-us/rest/api/storageservices/understanding-block-blobs--append-blobs--and-page-blobs">Azure Blob Storage documentation</a>.</p>
    # @option params [String] :access_tier
    #   <p>Specifies the access tier that you want your objects or files transferred into. This only
    #         applies when using the location as a transfer destination. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/creating-azure-blob-location.html#azure-blob-access-tiers">Access tiers</a>.</p>
    # @option params [Array<String>] :agent_arns
    #   <p>(Optional) Specifies the Amazon Resource Name (ARN) of the DataSync agent that
    #         can connect with your Azure Blob Storage container. If you are setting up an agentless
    #         cross-cloud transfer, you do not need to specify a value for this parameter.</p>
    #            <p>You can specify more than one agent. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/multiple-agents.html">Using multiple
    #           agents for your transfer</a>.</p>
    #            <note>
    #               <p>You cannot add or remove agents from a storage location after you initially create
    #           it.</p>
    #            </note>
    # @option params [Types::CmkSecretConfig] :cmk_secret_config
    #   <p>Specifies configuration information for a DataSync-managed secret, such as an
    #         authentication token or set of credentials that DataSync uses to access a specific
    #         transfer location, and a customer-managed KMS key.</p>
    # @option params [Types::CustomSecretConfig] :custom_secret_config
    #   <p>Specifies configuration information for a customer-managed secret, such as an
    #         authentication token or set of credentials that DataSync uses to access a specific
    #         transfer location, and a customer-managed KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "AzureBlobSubdirectory",
    #     authentication_type: "SAS" # One of: ["SAS", "NONE"],
    #     sas_configuration: {
    #       token: "AzureBlobSasToken", # required
    #     },
    #     blob_type: "BLOCK" # One of: ["BLOCK"],
    #     access_tier: "HOT" # One of: ["HOT", "COOL", "ARCHIVE"],
    #     agent_arns: ["AgentArn"],
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_location_azure_blob(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationAzureBlobResponse]
    def update_location_azure_blob(params = {}, options = {})
      request = build_request(:update_location_azure_blob, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon EFS transfer
    #       location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html">Configuring DataSync
    #         transfers with Amazon EFS</a>.</p>
    # @param [Hash, Types::UpdateLocationEfsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon EFS transfer location that
    #         you're updating.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your Amazon EFS file system. This is where DataSync reads or writes data on your file system (depending on if this is a source or
    #         destination location).</p>
    #            <p>By default, DataSync uses the root directory (or <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">access point</a> if you provide one by using
    #           <code>AccessPointArn</code>). You can also include subdirectories using forward slashes (for
    #         example, <code>/path/to/folder</code>).</p>
    # @option params [String] :access_point_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses
    #         to mount your Amazon EFS file system.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam">Accessing
    #           restricted Amazon EFS file systems</a>.</p>
    # @option params [String] :file_system_access_role_arn
    #   <p>Specifies an Identity and Access Management (IAM) role that allows DataSync to access your Amazon EFS file system.</p>
    #            <p>For information on creating this role, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html#create-efs-location-iam-role">Creating a DataSync
    #           IAM role for Amazon EFS file system access</a>.</p>
    # @option params [String] :in_transit_encryption
    #   <p>Specifies whether you want DataSync to use Transport Layer Security (TLS) 1.2
    #         encryption when it transfers data to or from your Amazon EFS file system.</p>
    #            <p>If you specify an access point using <code>AccessPointArn</code> or an IAM
    #         role using <code>FileSystemAccessRoleArn</code>, you must set this parameter to
    #           <code>TLS1_2</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "EfsSubdirectory",
    #     access_point_arn: "UpdatedEfsAccessPointArn",
    #     file_system_access_role_arn: "UpdatedEfsIamRoleArn",
    #     in_transit_encryption: "NONE" # One of: ["NONE", "TLS1_2"]
    #   }
    #   options = {}
    #   response = client.update_location_efs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationEfsResponse]
    def update_location_efs(params = {}, options = {})
      request = build_request(:update_location_efs, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon FSx for Lustre
    #       transfer location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-lustre-location.html">Configuring DataSync
    #         transfers with FSx for Lustre</a>.</p>
    # @param [Hash, Types::UpdateLocationFsxLustreRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for Lustre transfer location
    #         that you're updating.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your FSx for Lustre file system. The path can include
    #         subdirectories.</p>
    #            <p>When the location is used as a source, DataSync reads data from the mount path.
    #         When the location is used as a destination, DataSync writes data to the mount path.
    #         If you don't include this parameter, DataSync uses the file system's root directory
    #           (<code>/</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "SmbSubdirectory"
    #   }
    #   options = {}
    #   response = client.update_location_fsx_lustre(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationFsxLustreResponse]
    def update_location_fsx_lustre(params = {}, options = {})
      request = build_request(:update_location_fsx_lustre, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon FSx for NetApp ONTAP
    #       transfer location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-ontap-location.html">Configuring DataSync
    #         transfers with FSx for ONTAP</a>.</p>
    # @param [Hash, Types::UpdateLocationFsxOntapRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP transfer location
    #         that you're updating.</p>
    # @option params [Types::FsxUpdateProtocol] :protocol
    #   <p>Specifies the data transfer protocol that DataSync uses to access your Amazon FSx file system.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a path to the file share in the storage virtual machine (SVM) where you want to
    #         transfer data to or from.</p>
    #            <p>You can specify a junction path (also known as a mount point), qtree path (for NFS file
    #         shares), or share name (for SMB file shares). For example, your mount path might be
    #           <code>/vol1</code>, <code>/vol1/tree1</code>, or <code>/share1</code>.</p>
    #            <note>
    #               <p>Don't specify a junction path in the SVM's root volume. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-svms.html">Managing FSx for ONTAP storage virtual machines</a> in the <i>Amazon FSx for NetApp ONTAP User Guide</i>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     protocol: {
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "UpdateSmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword",
    #         user: "SmbUser"
    #       }
    #     },
    #     subdirectory: "FsxOntapSubdirectory"
    #   }
    #   options = {}
    #   response = client.update_location_fsx_ontap(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationFsxOntapResponse]
    def update_location_fsx_ontap(params = {}, options = {})
      request = build_request(:update_location_fsx_ontap, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon FSx for OpenZFS
    #       transfer location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-openzfs-location.html">Configuring DataSync
    #         transfers with FSx for OpenZFS</a>.</p>
    #          <note>
    #             <p>Request parameters related to <code>SMB</code> aren't supported with the
    #           <code>UpdateLocationFsxOpenZfs</code> operation.</p>
    #          </note>
    # @param [Hash, Types::UpdateLocationFsxOpenZfsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the FSx for OpenZFS transfer
    #         location that you're updating.</p>
    # @option params [Types::FsxProtocol] :protocol
    #   <p>Specifies the data transfer protocol that DataSync uses to access your
    #           Amazon FSx file system.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a subdirectory in the location's path that must begin with <code>/fsx</code>.
    #           DataSync uses this subdirectory to read or write data (depending on whether the
    #         file system is a source or destination location).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     protocol: {
    #       nfs: {
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       },
    #       smb: {
    #         domain: "SmbDomain",
    #         mount_options: {
    #           version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #         },
    #         password: "SmbPassword", # required
    #         user: "SmbUser", # required
    #       }
    #     },
    #     subdirectory: "SmbSubdirectory"
    #   }
    #   options = {}
    #   response = client.update_location_fsx_open_zfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationFsxOpenZfsResponse]
    def update_location_fsx_open_zfs(params = {}, options = {})
      request = build_request(:update_location_fsx_open_zfs, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon FSx for Windows File Server
    #       transfer location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html">Configuring DataSync
    #         transfers with FSx for Windows File Server</a>.</p>
    # @param [Hash, Types::UpdateLocationFsxWindowsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the ARN of the FSx for Windows File Server transfer location that you're
    #         updating.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your file system using forward slashes. DataSync uses
    #         this subdirectory to read or write data (depending on whether the file system is a source or
    #         destination location).</p>
    # @option params [String] :domain
    #   <p>Specifies the name of the Windows domain that your FSx for Windows File Server file system
    #         belongs to.</p>
    #            <p>If you have multiple Active Directory domains in your environment, configuring this
    #         parameter makes sure that DataSync connects to the right file system.</p>
    # @option params [String] :user
    #   <p>Specifies the user with the permissions to mount and access the files, folders, and file
    #         metadata in your FSx for Windows File Server file system.</p>
    #            <p>For information about choosing a user with the right level of access for your transfer,
    #         see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-fsx-location.html#create-fsx-windows-location-permissions">required permissions</a> for FSx for Windows File Server locations.</p>
    # @option params [String] :password
    #   <p>Specifies the password of the user with the permissions to mount and access the files,
    #         folders, and file metadata in your FSx for Windows File Server file system.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "FsxWindowsSubdirectory",
    #     domain: "UpdateSmbDomain",
    #     user: "SmbUser",
    #     password: "SmbPassword"
    #   }
    #   options = {}
    #   response = client.update_location_fsx_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationFsxWindowsResponse]
    def update_location_fsx_windows(params = {}, options = {})
      request = build_request(:update_location_fsx_windows, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Hadoop Distributed File System
    #       (HDFS) transfer location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-hdfs-location.html">Configuring DataSync
    #         transfers with an HDFS cluster</a>.</p>
    # @param [Hash, Types::UpdateLocationHdfsRequest] params
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the source HDFS cluster location.</p>
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster.</p>
    # @option params [Array<Types::HdfsNameNode>] :name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    # @option params [Integer] :block_size
    #   <p>The size of the data blocks to write into the HDFS cluster. </p>
    # @option params [Integer] :replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. </p>
    # @option params [String] :kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    # @option params [Types::QopConfiguration] :qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer privacy settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. </p>
    # @option params [String] :authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    # @option params [String] :simple_user
    #   <p>The user name used to identify the client on the host operating system.</p>
    # @option params [String] :kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    # @option params [String] :kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address.</p>
    # @option params [String] :kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text.</p>
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Names (ARNs) of the DataSync agents that can connect to your
    #         HDFS cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "HdfsSubdirectory",
    #     name_nodes: [
    #       {
    #         hostname: "HdfsServerHostname", # required
    #         port: 1, # required
    #       }
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: "KmsKeyProviderUri",
    #     qop_configuration: {
    #       rpc_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"],
    #       data_transfer_protection: "DISABLED" # One of: ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #     },
    #     authentication_type: "SIMPLE" # One of: ["SIMPLE", "KERBEROS"],
    #     simple_user: "HdfsUser",
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb5_conf: "data",
    #     agent_arns: ["AgentArn"]
    #   }
    #   options = {}
    #   response = client.update_location_hdfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationHdfsResponse]
    def update_location_hdfs(params = {}, options = {})
      request = build_request(:update_location_hdfs, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Network File System (NFS) transfer
    #       location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html">Configuring transfers with an NFS
    #         file server</a>.</p>
    # @param [Hash, Types::UpdateLocationNfsRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the NFS transfer location that you want to
    #         update.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies the export path in your NFS file server that you want DataSync to
    #         mount.</p>
    #            <p>This path (or a subdirectory of the path) is where DataSync transfers data to or
    #         from. For information on configuring an export for DataSync, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#accessing-nfs">Accessing NFS file servers</a>.</p>
    # @option params [String] :server_hostname
    #   <p>Specifies the DNS name or IP address (IPv4 or IPv6) of the NFS file server that your
    #           DataSync agent connects to.</p>
    # @option params [Types::OnPremConfig] :on_prem_config
    #   <p>The DataSync agents that can connect to your Network File System (NFS)
    #         file server.</p>
    # @option params [Types::NfsMountOptions] :mount_options
    #   <p>Specifies how DataSync can access a location using the NFS protocol.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "NfsSubdirectory",
    #     server_hostname: "ServerHostname",
    #     on_prem_config: {
    #       agent_arns: ["AgentArn"], # required
    #     },
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_location_nfs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationNfsResponse]
    def update_location_nfs(params = {}, options = {})
      request = build_request(:update_location_nfs, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the object storage transfer location
    #       that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Configuring DataSync
    #         transfers with an object storage system</a>.</p>
    # @param [Hash, Types::UpdateLocationObjectStorageRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the ARN of the object storage system location that you're updating.</p>
    # @option params [Integer] :server_port
    #   <p>Specifies the port that your object storage server accepts inbound network traffic on (for
    #         example, port 443).</p>
    # @option params [String] :server_protocol
    #   <p>Specifies the protocol that your object storage server uses to communicate.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies the object prefix for your object storage server. If this is a source location,
    #         DataSync only copies objects with this prefix. If this is a destination location, DataSync
    #         writes all objects with this prefix.</p>
    # @option params [String] :server_hostname
    #   <p>Specifies the domain name or IP address (IPv4 or IPv6) of the object storage server that
    #         your DataSync agent connects to.</p>
    # @option params [String] :access_key
    #   <p>Specifies the access key (for example, a user name) if credentials are required to
    #         authenticate with the object storage server.</p>
    # @option params [String] :secret_key
    #   <p>Specifies the secret key (for example, a password) if credentials are required to
    #         authenticate with the object storage server.</p>
    #            <note>
    #               <p>If you provide a secret using <code>SecretKey</code>, but do not provide secret
    #           configuration details using <code>CmkSecretConfig</code> or <code>CustomSecretConfig</code>,
    #           then DataSync stores the token using your Amazon Web Services account's Secrets Manager secret.</p>
    #            </note>
    # @option params [Array<String>] :agent_arns
    #   <p>(Optional) Specifies the Amazon Resource Names (ARNs) of the DataSync agents
    #         that can connect with your object storage system. If you are setting up an agentless
    #         cross-cloud transfer, you do not need to specify a value for this parameter.</p>
    #            <note>
    #               <p>You cannot add or remove agents from a storage location after you initially create
    #           it.</p>
    #            </note>
    # @option params [String] :server_certificate
    #   <p>Specifies a certificate chain for DataSync to authenticate with your object
    #         storage system if the system uses a private or self-signed certificate authority (CA). You
    #         must specify a single <code>.pem</code> file with a full certificate chain (for example,
    #           <code>file:///home/user/.ssh/object_storage_certificates.pem</code>).</p>
    #            <p>The certificate chain might include:</p>
    #            <ul>
    #               <li>
    #                  <p>The object storage system's certificate</p>
    #               </li>
    #               <li>
    #                  <p>All intermediate certificates (if there are any)</p>
    #               </li>
    #               <li>
    #                  <p>The root certificate of the signing CA</p>
    #               </li>
    #            </ul>
    #            <p>You can concatenate your certificates into a <code>.pem</code> file (which can be up to
    #         32768 bytes before base64 encoding). The following example <code>cat</code> command creates an
    #           <code>object_storage_certificates.pem</code> file that includes three certificates:</p>
    #            <p>
    #               <code>cat object_server_certificate.pem intermediate_certificate.pem
    #           ca_root_certificate.pem > object_storage_certificates.pem</code>
    #            </p>
    #            <p>To use this parameter, configure <code>ServerProtocol</code> to <code>HTTPS</code>.</p>
    #            <p>Updating this parameter doesn't interfere with tasks that you have in progress.</p>
    # @option params [Types::CmkSecretConfig] :cmk_secret_config
    #   <p>Specifies configuration information for a DataSync-managed secret, such as an
    #         authentication token or set of credentials that DataSync uses to access a specific
    #         transfer location, and a customer-managed KMS key.</p>
    # @option params [Types::CustomSecretConfig] :custom_secret_config
    #   <p>Specifies configuration information for a customer-managed secret, such as an
    #         authentication token or set of credentials that DataSync uses to access a specific
    #         transfer location, and a customer-managed KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     server_port: 1,
    #     server_protocol: "HTTPS" # One of: ["HTTPS", "HTTP"],
    #     subdirectory: "S3Subdirectory",
    #     server_hostname: "ServerHostname",
    #     access_key: "ObjectStorageAccessKey",
    #     secret_key: "ObjectStorageSecretKey",
    #     agent_arns: ["AgentArn"],
    #     server_certificate: "data",
    #     cmk_secret_config: {
    #       secret_arn: "SecretArn",
    #       kms_key_arn: "KmsKeyArn"
    #     },
    #     custom_secret_config: {
    #       secret_arn: "SecretArn",
    #       secret_access_role_arn: "IamRoleArnOrEmptyString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_location_object_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationObjectStorageResponse]
    def update_location_object_storage(params = {}, options = {})
      request = build_request(:update_location_object_storage, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Amazon S3 transfer location
    #       that you're using with DataSync.</p>
    #          <important>
    #             <p>Before you begin, make sure that you read the following topics:</p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes">Storage
    #               class considerations with Amazon S3 locations</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-s3-requests">Evaluating S3 request costs when using DataSync</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::UpdateLocationS3Request] params
    # @option params [String] :location_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the Amazon S3 transfer location that
    #         you're updating.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies a prefix in the S3 bucket that DataSync reads from or writes to
    #         (depending on whether the bucket is a source or destination location).</p>
    #            <note>
    #               <p>DataSync can't transfer objects with a prefix that begins with a slash (<code>/</code>)
    #           or includes <code>//</code>, <code>/./</code>, or <code>/../</code> patterns. For
    #           example:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>/photos</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos//2006/January</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos/./2006/February</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>photos/../2006/March</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :s3_storage_class
    #   <p>Specifies the storage class that you want your objects to use when Amazon S3 is a
    #         transfer destination.</p>
    #            <p>For buckets in Amazon Web Services Regions, the storage class defaults to
    #           <code>STANDARD</code>. For buckets on Outposts, the storage class defaults to
    #           <code>OUTPOSTS</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes">Storage class
    #           considerations with Amazon S3 transfers</a>.</p>
    # @option params [Types::S3Config] :s3_config
    #   <p>Specifies the Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that DataSync uses to access your S3 bucket.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#create-s3-location-access">Providing
    #             DataSync access to S3 buckets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "S3Subdirectory",
    #     s3_storage_class: "STANDARD" # One of: ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_INSTANT_RETRIEVAL"],
    #     s3_config: {
    #       bucket_access_role_arn: "IamRoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_location_s3(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationS3Response]
    def update_location_s3(params = {}, options = {})
      request = build_request(:update_location_s3, params)
      request.send_request(options)
    end

    # <p>Modifies the following configuration parameters of the Server Message Block (SMB) transfer
    #       location that you're using with DataSync.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html">Configuring DataSync
    #         transfers with an SMB file server</a>.</p>
    # @param [Hash, Types::UpdateLocationSmbRequest] params
    # @option params [String] :location_arn
    #   <p>Specifies the ARN of the SMB location that you want to update.</p>
    # @option params [String] :subdirectory
    #   <p>Specifies the name of the share exported by your SMB file server where DataSync
    #         will read or write data. You can include a subdirectory in the share path (for example,
    #           <code>/path/to/subdirectory</code>). Make sure that other SMB clients in your network can
    #         also mount this path.</p>
    #            <p>To copy all data in the specified subdirectory, DataSync must be able to mount
    #         the SMB share and access all of its data. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [String] :server_hostname
    #   <p>Specifies the domain name or IP address (IPv4 or IPv6) of the SMB file server that your DataSync agent connects to.</p>
    #            <note>
    #               <p>If you're using Kerberos authentication, you must specify a domain name.</p>
    #            </note>
    # @option params [String] :user
    #   <p>Specifies the user name that can mount your SMB file server and has permission to access
    #         the files and folders involved in your transfer. This parameter applies only if
    #           <code>AuthenticationType</code> is set to <code>NTLM</code>.</p>
    #            <p>For information about choosing a user with the right level of access for your transfer,
    #         see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [String] :domain
    #   <p>Specifies the Windows domain name that your SMB file server belongs to. This parameter
    #         applies only if <code>AuthenticationType</code> is set to <code>NTLM</code>.</p>
    #            <p>If you have multiple domains in your environment, configuring this parameter makes sure
    #         that DataSync connects to the right file server.</p>
    # @option params [String] :password
    #   <p>Specifies the password of the user who can mount your SMB file server and has permission
    #         to access the files and folders involved in your transfer. This parameter applies only if
    #           <code>AuthenticationType</code> is set to <code>NTLM</code>.</p>
    # @option params [Array<String>] :agent_arns
    #   <p>Specifies the DataSync agent (or agents) that can connect to your SMB file
    #         server. You specify an agent by using its Amazon Resource Name (ARN).</p>
    # @option params [Types::SmbMountOptions] :mount_options
    #   <p>Specifies the version of the Server Message Block (SMB) protocol that DataSync uses to access an SMB file server.</p>
    # @option params [String] :authentication_type
    #   <p>Specifies the authentication protocol that DataSync uses to connect to your SMB
    #         file server. DataSync supports <code>NTLM</code> (default) and <code>KERBEROS</code>
    #         authentication.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html#configuring-smb-permissions">Providing DataSync access to SMB file servers</a>.</p>
    # @option params [Array<String>] :dns_ip_addresses
    #   <p>Specifies the IP addresses (IPv4 or IPv6) for the DNS servers that your SMB file server belongs to.
    #         This parameter applies only if <code>AuthenticationType</code> is set to
    #         <code>KERBEROS</code>.</p>
    #            <p>If you have multiple domains in your environment, configuring this parameter makes sure
    #         that DataSync connects to the right SMB file server. </p>
    # @option params [String] :kerberos_principal
    #   <p>Specifies a Kerberos prinicpal, which is an identity in your Kerberos realm that has
    #         permission to access the files, folders, and file metadata in your SMB file server.</p>
    #            <p>A Kerberos principal might look like <code>HOST/kerberosuser@MYDOMAIN.ORG</code>.</p>
    #            <p>Principal names are case sensitive. Your DataSync task execution will fail if
    #         the principal that you specify for this parameter doesn’t exactly match the principal that you
    #         use to create the keytab file.</p>
    # @option params [String] :kerberos_keytab
    #   <p>Specifies your Kerberos key table (keytab) file, which includes mappings between your
    #         Kerberos principal and encryption keys.</p>
    #            <p>To avoid task execution errors, make sure that the Kerberos principal that you use to
    #         create the keytab file matches exactly what you specify for
    #         <code>KerberosPrincipal</code>.</p>
    # @option params [String] :kerberos_krb5_conf
    #   <p>Specifies a Kerberos configuration file (<code>krb5.conf</code>) that defines your
    #         Kerberos realm configuration.</p>
    #            <p>The file must be base64 encoded. If you're using the CLI, the encoding is
    #         done for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     location_arn: "LocationArn", # required
    #     subdirectory: "SmbSubdirectory",
    #     server_hostname: "ServerHostname",
    #     user: "SmbUser",
    #     domain: "SmbDomain",
    #     password: "SmbPassword",
    #     agent_arns: ["AgentArn"],
    #     mount_options: {
    #       version: "AUTOMATIC" # One of: ["AUTOMATIC", "SMB2", "SMB3", "SMB1", "SMB2_0"]
    #     },
    #     authentication_type: "NTLM" # One of: ["NTLM", "KERBEROS"],
    #     dns_ip_addresses: ["ServerIpAddress"],
    #     kerberos_principal: "KerberosPrincipal",
    #     kerberos_keytab: "data",
    #     kerberos_krb5_conf: "data"
    #   }
    #   options = {}
    #   response = client.update_location_smb(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLocationSmbResponse]
    def update_location_smb(params = {}, options = {})
      request = build_request(:update_location_smb, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a <i>task</i>, which defines where and how
    #         DataSync transfers your data.</p>
    # @param [Hash, Types::UpdateTaskRequest] params
    # @option params [String] :task_arn
    #   <p>Specifies the ARN of the task that you want to update.</p>
    # @option params [Types::Options] :options
    #   <p>Indicates how your transfer task is configured. These options include how DataSync handles files, objects, and their associated metadata during your transfer. You
    #         also can specify how to verify data integrity, set bandwidth limits for your task, among other
    #         options.</p>
    #            <p>Each option has a default value. Unless you need to, you don't have to configure any
    #         option before calling <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #            <p>You also can override your task options for each task execution. For example, you might
    #         want to adjust the <code>LogLevel</code> for an individual execution.</p>
    # @option params [Array<Types::FilterRule>] :excludes
    #   <p>Specifies exclude filters that define the files, objects, and folders in your source
    #         location that you don't want DataSync to transfer. For more information and
    #         examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html">Specifying what DataSync transfers by using filters</a>.</p>
    # @option params [Types::TaskSchedule] :schedule
    #   <p>Specifies a schedule for when you want your task to run. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your
    #           task</a>.</p>
    # @option params [String] :name
    #   <p>Specifies the name of your task.</p>
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of an Amazon CloudWatch log group for
    #         monitoring your task.</p>
    #            <p>For Enhanced mode tasks, you must use <code>/aws/datasync</code> as your log group
    #         name. For example:</p>
    #            <p>
    #               <code>arn:aws:logs:us-east-1:111222333444:log-group:/aws/datasync:*</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/configure-logging.html">Monitoring data transfers with
    #             CloudWatch Logs</a>.</p>
    # @option params [Array<Types::FilterRule>] :includes
    #   <p>Specifies include filters define the files, objects, and folders in your source location
    #         that you want DataSync to transfer. For more information and examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html">Specifying what DataSync transfers by using filters</a>.</p>
    # @option params [Types::ManifestConfig] :manifest_config
    #   <p>Configures a manifest, which is a list of files or objects that you want DataSync to transfer. For more information and configuration examples, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html">Specifying what DataSync transfers by using a manifest</a>.</p>
    #            <p>When using this parameter, your caller identity (the IAM role that you're
    #         using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    #            <p>To remove a manifest configuration, specify this parameter as empty.</p>
    # @option params [Types::TaskReportConfig] :task_report_config
    #   <p>Specifies how you want to configure a task report, which provides detailed information
    #         about your DataSync transfer. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html">Monitoring your DataSync
    #           transfers with task reports</a>.</p>
    #            <p>When using this parameter, your caller identity (the IAM role that you're
    #         using DataSync with) must have the <code>iam:PassRole</code> permission. The <a href="https://docs.aws.amazon.com/datasync/latest/userguide/security-iam-awsmanpol.html#security-iam-awsmanpol-awsdatasyncfullaccess">AWSDataSyncFullAccess</a> policy includes this permission.</p>
    #            <p>To remove a task report configuration, specify this parameter as empty.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_arn: "TaskArn", # required
    #     options: {
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     schedule: {
    #       schedule_expression: "ScheduleExpressionCron", # required
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     name: "TagValue",
    #     cloud_watch_log_group_arn: "LogGroupArn",
    #     includes: [
    #       {
    #         filter_type: "SIMPLE_PATTERN" # One of: ["SIMPLE_PATTERN"],
    #         value: "FilterValue"
    #       }
    #     ],
    #     manifest_config: {
    #       action: "TRANSFER" # One of: ["TRANSFER"],
    #       format: "CSV" # One of: ["CSV"],
    #       source: {
    #         s3: { # required
    #           manifest_object_path: "S3Subdirectory", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #           s3_bucket_arn: "S3BucketArn", # required
    #           manifest_object_version_id: "S3ObjectVersionId"
    #         }
    #       }
    #     },
    #     task_report_config: {
    #       destination: {
    #         s3: {
    #           subdirectory: "S3Subdirectory",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           bucket_access_role_arn: "IamRoleArn", # required
    #         }
    #       },
    #       output_type: "SUMMARY_ONLY" # One of: ["SUMMARY_ONLY", "STANDARD"],
    #       report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"],
    #       object_version_ids: "INCLUDE" # One of: ["INCLUDE", "NONE"],
    #       overrides: {
    #         transferred: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         verified: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         deleted: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         },
    #         skipped: {
    #           report_level: "ERRORS_ONLY" # One of: ["ERRORS_ONLY", "SUCCESSES_AND_ERRORS"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTaskResponse]
    def update_task(params = {}, options = {})
      request = build_request(:update_task, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a running DataSync task execution.</p>
    #          <note>
    #             <p>Currently, the only <code>Option</code> that you can modify with
    #           <code>UpdateTaskExecution</code> is <code>
    #                   <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond">BytesPerSecond</a>
    #                </code>, which throttles bandwidth for a running or queued task
    #         execution.</p>
    #          </note>
    # @param [Hash, Types::UpdateTaskExecutionRequest] params
    # @option params [String] :task_execution_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the task execution that you're
    #         updating.</p>
    # @option params [Types::Options] :options
    #   <p>Indicates how your transfer task is configured. These options include how DataSync handles files, objects, and their associated metadata during your transfer. You
    #         also can specify how to verify data integrity, set bandwidth limits for your task, among other
    #         options.</p>
    #            <p>Each option has a default value. Unless you need to, you don't have to configure any
    #         option before calling <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #            <p>You also can override your task options for each task execution. For example, you might
    #         want to adjust the <code>LogLevel</code> for an individual execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_execution_arn: "TaskExecutionArn", # required
    #     options: { # required
    #       verify_mode: "POINT_IN_TIME_CONSISTENT" # One of: ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"],
    #       overwrite_mode: "ALWAYS" # One of: ["ALWAYS", "NEVER"],
    #       atime: "NONE" # One of: ["NONE", "BEST_EFFORT"],
    #       mtime: "NONE" # One of: ["NONE", "PRESERVE"],
    #       uid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       gid: "NONE" # One of: ["NONE", "INT_VALUE", "NAME", "BOTH"],
    #       preserve_deleted_files: "PRESERVE" # One of: ["PRESERVE", "REMOVE"],
    #       preserve_devices: "NONE" # One of: ["NONE", "PRESERVE"],
    #       posix_permissions: "NONE" # One of: ["NONE", "PRESERVE"],
    #       bytes_per_second: 1,
    #       task_queueing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       log_level: "OFF" # One of: ["OFF", "BASIC", "TRANSFER"],
    #       transfer_mode: "CHANGED" # One of: ["CHANGED", "ALL"],
    #       security_descriptor_copy_flags: "NONE" # One of: ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"],
    #       object_tags: "PRESERVE" # One of: ["PRESERVE", "NONE"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_task_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTaskExecutionResponse]
    def update_task_execution(params = {}, options = {})
      request = build_request(:update_task_execution, params)
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
      context[:gem_name] = 'aws-sdk-datasync'
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
