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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:finspace)

module Aws::Finspace
  # An API client for Aws::Finspace.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSHabaneroManagementService
    @identifier = :finspace

    add_plugin(::Aws::Finspace::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Finspace::EndpointProvider)
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

    # <p>Create a new FinSpace environment.</p>
    # @param [Hash, Types::CreateEnvironmentRequest] params
    # @option params [String] :name
    #   <p>The name of the FinSpace environment to be created.</p>
    # @option params [String] :description
    #   <p>The description of the FinSpace environment to be created.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key id to encrypt your data in the FinSpace environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Add tags to your FinSpace environment.</p>
    # @option params [String] :federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    # @option params [Types::FederationParameters] :federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    # @option params [Types::SuperuserParameters] :superuser_parameters
    #   <p>Configuration information for the superuser.</p>
    # @option params [Array<String>] :data_bundles
    #   <p>The list of Amazon Resource Names (ARN) of the data bundles to install. Currently supported data bundle ARNs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/capital-markets-sample</code> - Contains sample Capital Markets datasets, categories and controlled vocabularies.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/taq</code> (default) - Contains trades and quotes data in addition to sample Capital Markets data.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     federation_mode: "FEDERATED" # One of: ["FEDERATED", "LOCAL"],
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue"
    #       }
    #     },
    #     superuser_parameters: {
    #       email_address: "EmailId", # required
    #       first_name: "NameString", # required
    #       last_name: "NameString", # required
    #     },
    #     data_bundles: ["DataBundleArn"]
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "IdType",
    #     environment_arn: "EnvironmentArn",
    #     environment_url: "url"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::CreateEnvironmentResponse]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>
    #    Creates a changeset for a kdb database. A changeset allows you to add and delete existing files by using an ordered list of change requests.
    # </p>
    # @param [Hash, Types::CreateKxChangesetRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier of the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @option params [Array<Types::ChangeRequest>] :change_requests
    #   <p>A list of change request objects that are run in order. A change request object consists of <code>changeType</code> , <code>s3Path</code>, and <code>dbPath</code>. 
    #         A changeType can have the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>PUT – Adds or updates files in a database.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE – Deletes files in a database.</p>
    #               </li>
    #            </ul>
    #            <p>All the change requests require a mandatory <code>dbPath</code> attribute that defines the
    #            path within the database directory. All database paths must start with a leading / and end
    #            with a trailing /. The <code>s3Path</code> attribute defines the s3 source file path and is
    #            required for a PUT change type. The <code>s3path</code> must end with a trailing / if it is
    #            a directory and must end without a trailing / if it is a file. </p>
    #            <p>Here are few examples of how you can use the change request object:</p>
    #            <ol>
    #               <li>
    #                  <p>This request adds a single sym file at database root location.   </p>
    #                  <p>
    #                     <code>{ "changeType": "PUT", "s3Path":"s3://bucket/db/sym",
    #                  "dbPath":"/"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request adds files in the given <code>s3Path</code> under the 2020.01.02
    #                  partition of the database.</p>
    #                  <p>
    #                     <code>{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
    #                  "dbPath":"/2020.01.02/"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request adds files in the given <code>s3Path</code> under the
    #                     <i>taq</i> table partition of the database.</p>
    #                  <p>
    #                     <code>[ { "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #                     "dbPath":"/2020.01.02/taq/"}]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request deletes the 2020.01.02 partition of the database.</p>
    #                  <p>
    #                     <code>[{ "changeType": "DELETE", "dbPath": "/2020.01.02/"} ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The <i>DELETE</i> request allows you to delete the existing files under the
    #                  2020.01.02 partition of the database, and the <i>PUT</i> request adds a
    #                  new taq table under it.</p>
    #                  <p>
    #                     <code>[ {"changeType": "DELETE", "dbPath":"/2020.01.02/"}, {"changeType": "PUT",
    #                     "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #                  "dbPath":"/2020.01.02/taq/"}]</code>
    #                  </p>
    #               </li>
    #            </ol>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     change_requests: [ # required
    #       {
    #         change_type: "PUT" # One of: ["PUT", "DELETE"], # required
    #         s3_path: "S3Path",
    #         db_path: "DbPath", # required
    #       }
    #     ],
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.create_kx_changeset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changeset_id: "ChangesetId",
    #     database_name: "DatabaseName",
    #     environment_id: "EnvironmentId",
    #     change_requests: [
    #       {
    #         change_type: "PUT" # One of: ["PUT", "DELETE"], # required
    #         s3_path: "S3Path",
    #         db_path: "DbPath", # required
    #       }
    #     ],
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     status: "PENDING" # One of: ["PENDING", "PROCESSING", "FAILED", "COMPLETED"],
    #     error_info: {
    #       error_message: "ErrorMessage",
    #       error_type: "The inputs to this request are invalid." # One of: ["The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"]
    #     }
    #   }
    # @return [Types::CreateKxChangesetResponse]
    def create_kx_changeset(params = {}, options = {})
      request = build_request(:create_kx_changeset, params)
      request.send_request(options)
    end

    # <p>Creates a new kdb cluster.</p>
    # @param [Hash, Types::CreateKxClusterRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>A unique name for the cluster that you want to create.</p>
    # @option params [String] :cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    # @option params [Types::TickerplantLogConfiguration] :tickerplant_log_configuration
    #   <p>
    #   A configuration to store Tickerplant logs. It consists of
    #   a list of volumes that will be mounted to your cluster. For the cluster type <code>Tickerplant</code>, the location of the TP volume on the cluster will be available by using the global variable <code>.aws.tp_log_path</code>. 
    #   </p>
    # @option params [Array<Types::KxDatabaseConfiguration>] :databases
    #   <p>A list of databases that will be available for querying.</p>
    # @option params [Array<Types::KxCacheStorageConfiguration>] :cache_storage_configurations
    #   <p>The configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. </p>
    # @option params [Types::AutoScalingConfiguration] :auto_scaling_configuration
    #   <p>The configuration based on which FinSpace will scale in or scale out nodes in your cluster.</p>
    # @option params [String] :cluster_description
    #   <p>A description of the cluster.</p>
    # @option params [Types::CapacityConfiguration] :capacity_configuration
    #   <p>A structure for the metadata of a cluster. It includes information like the CPUs needed, memory of instances, and number of instances.</p>
    # @option params [String] :release_label
    #   <p>The version of FinSpace managed kdb to run.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>Configuration details about the network where the Privatelink endpoint of the cluster resides.</p>
    # @option params [String] :initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #               <i>.zip</i> file that contains the custom code, which will be loaded on
    #            the cluster. It must include the file name itself. For example,
    #            <code>somedir/init.q</code>.</p>
    # @option params [Array<Types::KxCommandLineArgument>] :command_line_arguments
    #   <p>Defines the key-value pairs to make them available inside the cluster.</p>
    # @option params [Types::CodeConfiguration] :code
    #   <p>The details of the custom code that you want to use inside a cluster when analyzing a data. It consists of the S3 source bucket, location, S3 object version, and the relative path from where the custom code is loaded into the cluster. </p>
    # @option params [String] :execution_role
    #   <p>An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.</p>
    # @option params [Types::KxSavedownStorageConfiguration] :savedown_storage_configuration
    #   <p>The size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose <code>clusterType</code> as RDB. All the data written to this storage space is lost when the cluster node is restarted.</p>
    # @option params [String] :az_mode
    #   <p>The number of availability zones you want to assign per cluster. This can be one of the following </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> – Assigns one availability zone per cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI</code> – Assigns all the availability zones per cluster.</p>
    #               </li>
    #            </ul>
    # @option params [String] :availability_zone_id
    #   <p>The availability zone identifiers for the requested regions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to label the cluster. You can add up to 50 tags to a cluster.</p>
    # @option params [Types::KxScalingGroupConfiguration] :scaling_group_configuration
    #   <p>The structure that stores the configuration details of a scaling group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"], # required
    #     tickerplant_log_configuration: {
    #       tickerplant_log_volumes: ["VolumeName"]
    #     },
    #     databases: [
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName"
    #           }
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     cache_storage_configurations: [
    #       {
    #         type: "KxCacheStorageType", # required
    #         size: 1, # required
    #       }
    #     ],
    #     auto_scaling_configuration: {
    #       min_node_count: 1,
    #       max_node_count: 1,
    #       auto_scaling_metric: "CPU_UTILIZATION_PERCENTAGE" # One of: ["CPU_UTILIZATION_PERCENTAGE"],
    #       metric_target: 1.0,
    #       scale_in_cooldown_seconds: 1.0,
    #       scale_out_cooldown_seconds: 1.0
    #     },
    #     cluster_description: "KxClusterDescription",
    #     capacity_configuration: {
    #       node_type: "NodeType",
    #       node_count: 1
    #     },
    #     release_label: "ReleaseLabel", # required
    #     vpc_configuration: { # required
    #       vpc_id: "VpcIdString",
    #       security_group_ids: ["SecurityGroupIdString"],
    #       subnet_ids: ["SubnetIdString"],
    #       ip_address_type: "IP_V4" # One of: ["IP_V4"]
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue"
    #       }
    #     ],
    #     code: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion"
    #     },
    #     execution_role: "ExecutionRoleArn",
    #     savedown_storage_configuration: {
    #       type: "SDS01" # One of: ["SDS01"],
    #       size: 1,
    #       volume_name: "KxVolumeName"
    #     },
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"], # required
    #     availability_zone_id: "AvailabilityZoneId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     scaling_group_configuration: {
    #       scaling_group_name: "KxScalingGroupName", # required
    #       memory_limit: 1,
    #       memory_reservation: 1, # required
    #       node_count: 1, # required
    #       cpu: 1.0
    #     }
    #   }
    #   options = {}
    #   response = client.create_kx_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "KxEnvironmentId",
    #     status: "PENDING" # One of: ["PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #     status_reason: "KxClusterStatusReason",
    #     cluster_name: "KxClusterName",
    #     cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #     tickerplant_log_configuration: {
    #       tickerplant_log_volumes: ["VolumeName"]
    #     },
    #     volumes: [
    #       {
    #         volume_name: "VolumeName",
    #         volume_type: "NAS_1" # One of: ["NAS_1"]
    #       }
    #     ],
    #     databases: [
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName"
    #           }
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     cache_storage_configurations: [
    #       {
    #         type: "KxCacheStorageType", # required
    #         size: 1, # required
    #       }
    #     ],
    #     auto_scaling_configuration: {
    #       min_node_count: 1,
    #       max_node_count: 1,
    #       auto_scaling_metric: "CPU_UTILIZATION_PERCENTAGE" # One of: ["CPU_UTILIZATION_PERCENTAGE"],
    #       metric_target: 1.0,
    #       scale_in_cooldown_seconds: 1.0,
    #       scale_out_cooldown_seconds: 1.0
    #     },
    #     cluster_description: "KxClusterDescription",
    #     capacity_configuration: {
    #       node_type: "NodeType",
    #       node_count: 1
    #     },
    #     release_label: "ReleaseLabel",
    #     vpc_configuration: {
    #       vpc_id: "VpcIdString",
    #       security_group_ids: ["SecurityGroupIdString"],
    #       subnet_ids: ["SubnetIdString"],
    #       ip_address_type: "IP_V4" # One of: ["IP_V4"]
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue"
    #       }
    #     ],
    #     code: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion"
    #     },
    #     execution_role: "ExecutionRoleArn",
    #     last_modified_timestamp: Time.now,
    #     savedown_storage_configuration: {
    #       type: "SDS01" # One of: ["SDS01"],
    #       size: 1,
    #       volume_name: "KxVolumeName"
    #     },
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     created_timestamp: Time.now,
    #     scaling_group_configuration: {
    #       scaling_group_name: "KxScalingGroupName", # required
    #       memory_limit: 1,
    #       memory_reservation: 1, # required
    #       node_count: 1, # required
    #       cpu: 1.0
    #     }
    #   }
    # @return [Types::CreateKxClusterResponse]
    def create_kx_cluster(params = {}, options = {})
      request = build_request(:create_kx_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new kdb database in the environment.</p>
    # @param [Hash, Types::CreateKxDatabaseRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @option params [String] :description
    #   <p>A description of the database.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to label the kdb database. You can add up to 50 tags to your kdb database</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.create_kx_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "DatabaseName",
    #     database_arn: "DatabaseArn",
    #     environment_id: "EnvironmentId",
    #     description: "Description",
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now
    #   }
    # @return [Types::CreateKxDatabaseResponse]
    def create_kx_database(params = {}, options = {})
      request = build_request(:create_kx_database, params)
      request.send_request(options)
    end

    # <p>
    # Creates a snapshot of kdb database with tiered storage capabilities and a pre-warmed cache, ready for mounting on kdb clusters.  Dataviews are only available for clusters running on a scaling group. They are not supported on dedicated clusters. </p>
    # @param [Hash, Types::CreateKxDataviewRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, where you want to create the dataview. </p>
    # @option params [String] :database_name
    #   <p>
    #   The name of the database where you want to create a dataview.
    #   </p>
    # @option params [String] :dataview_name
    #   <p>A unique identifier for the dataview.</p>
    # @option params [String] :az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    # @option params [String] :availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    # @option params [String] :changeset_id
    #   <p>
    #   A unique identifier of the changeset that you want to use to ingest data. </p>
    # @option params [Array<Types::KxDataviewSegmentConfiguration>] :segment_configurations
    #   <p>
    #      The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    # @option params [Boolean] :auto_update
    #   <p>The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.</p>
    # @option params [Boolean] :read_write
    #   <p>
    #            The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.  </p>
    #            <ul>
    #               <li>
    #                  <p>You cannot create partial writable dataviews. When you create writeable dataviews you must
    #                  provide the entire database path.</p>
    #               </li>
    #               <li>
    #                  <p>You cannot perform updates on a writeable dataview. Hence, <code>autoUpdate</code> must be set
    #               as <b>False</b> if <code>readWrite</code> is <b>True</b> for a dataview.</p>
    #               </li>
    #               <li>
    #                  <p>You must also use a unique volume for creating a writeable dataview. So, if you choose a
    #                  volume that is already in use by another dataview, the dataview creation
    #                  fails.</p>
    #               </li>
    #               <li>
    #                  <p>Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot
    #                  update the <code>readWrite</code> parameter later.</p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>A description of the dataview.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #   A list of key-value pairs to label the dataview. You can add up to 50 tags to a dataview.
    #   </p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"], # required
    #     availability_zone_id: "AvailabilityZoneId",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false
    #       }
    #     ],
    #     auto_update: false,
    #     read_write: false,
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.create_kx_dataview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataview_name: "KxDataviewName",
    #     database_name: "DatabaseName",
    #     environment_id: "EnvironmentId",
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false
    #       }
    #     ],
    #     description: "Description",
    #     auto_update: false,
    #     read_write: false,
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"]
    #   }
    # @return [Types::CreateKxDataviewResponse]
    def create_kx_dataview(params = {}, options = {})
      request = build_request(:create_kx_dataview, params)
      request.send_request(options)
    end

    # <p>Creates a managed kdb environment for the account.</p>
    # @param [Hash, Types::CreateKxEnvironmentRequest] params
    # @option params [String] :name
    #   <p>The name of the kdb environment that you want to create.</p>
    # @option params [String] :description
    #   <p>A description for the kdb environment.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to label the kdb environment. You can add up to 50 tags to your kdb environment.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "KxEnvironmentName", # required
    #     description: "Description",
    #     kms_key_id: "KmsKeyARN", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_kx_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "KxEnvironmentName",
    #     status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #     environment_id: "IdType",
    #     description: "Description",
    #     environment_arn: "EnvironmentArn",
    #     kms_key_id: "KmsKeyId",
    #     creation_timestamp: Time.now
    #   }
    # @return [Types::CreateKxEnvironmentResponse]
    def create_kx_environment(params = {}, options = {})
      request = build_request(:create_kx_environment, params)
      request.send_request(options)
    end

    # <p>Creates a new scaling group. </p>
    # @param [Hash, Types::CreateKxScalingGroupRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, where you want to create the scaling group. </p>
    # @option params [String] :scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    # @option params [String] :host_type
    #   <p>
    #      The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.</p>
    #            <p>You can add one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.large</code> – The host type with a configuration of 16 GiB
    #               memory and 2 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.xlarge</code> – The host type with a configuration of 32 GiB
    #                  memory and 4 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.2xlarge</code> – The host type with a configuration of 64 GiB
    #                  memory and 8 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.4xlarge</code> – The host type with a configuration of 108 GiB memory and 16 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.8xlarge</code> – The host type with a configuration of 216 GiB memory and 32 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.16xlarge</code> – The host type with a configuration of 432 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.32xlarge</code> – The host type with a configuration of 864 GiB memory and 128 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.16xlarge</code> – The host type with a configuration of 1949 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.24xlarge</code> – The host type with a configuration of 2948 GiB memory and 96 vCPUs.</p>
    #               </li>
    #            </ul>
    # @option params [String] :availability_zone_id
    #   <p>The identifier of the availability zones.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #   A list of key-value pairs to label the scaling group. You can add up to 50 tags to a scaling group.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #     host_type: "KxHostType", # required
    #     availability_zone_id: "AvailabilityZoneId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_kx_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "KxEnvironmentId",
    #     scaling_group_name: "KxScalingGroupName",
    #     host_type: "KxHostType",
    #     availability_zone_id: "AvailabilityZoneId",
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"],
    #     last_modified_timestamp: Time.now,
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreateKxScalingGroupResponse]
    def create_kx_scaling_group(params = {}, options = {})
      request = build_request(:create_kx_scaling_group, params)
      request.send_request(options)
    end

    # <p>Creates a user in FinSpace kdb environment with an associated IAM role.</p>
    # @param [Hash, Types::CreateKxUserRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment where you want to create a user.</p>
    # @option params [String] :user_name
    #   <p>A unique identifier for the user.</p>
    # @option params [String] :iam_role
    #   <p>The IAM role ARN that will be associated with the user.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to label the user. You can add up to 50 tags to a user.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_kx_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "KxUserNameString",
    #     user_arn: "KxUserArn",
    #     environment_id: "IdType",
    #     iam_role: "RoleArn"
    #   }
    # @return [Types::CreateKxUserResponse]
    def create_kx_user(params = {}, options = {})
      request = build_request(:create_kx_user, params)
      request.send_request(options)
    end

    # <p>
    # Creates a new volume with a specific amount of throughput and storage capacity. </p>
    # @param [Hash, Types::CreateKxVolumeRequest] params
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    # @option params [String] :volume_type
    #   <p>
    #      The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type. When you select <code>NAS_1</code> volume type, you must also provide <code>nas1Configuration</code>.
    #   </p>
    # @option params [String] :volume_name
    #   <p>A unique identifier for the volume.</p>
    # @option params [String] :description
    #   <p>
    #   A description of the volume.
    #   </p>
    # @option params [Types::KxNAS1Configuration] :nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume. This
    #            parameter is required when you choose <code>volumeType</code> as
    #            <i>NAS_1</i>.</p>
    # @option params [String] :az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    # @option params [Array<String>] :availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>
    #   A list of key-value pairs to label the volume. You can add up to 50 tags to a volume.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     environment_id: "KxEnvironmentId", # required
    #     volume_type: "NAS_1" # One of: ["NAS_1"], # required
    #     volume_name: "KxVolumeName", # required
    #     description: "Description",
    #     nas1_configuration: {
    #       type: "SSD_1000" # One of: ["SSD_1000", "SSD_250", "HDD_12"],
    #       size: 1
    #     },
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"], # required
    #     availability_zone_ids: ["AvailabilityZoneId"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_kx_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "KxEnvironmentId",
    #     volume_name: "KxVolumeName",
    #     volume_type: "NAS_1" # One of: ["NAS_1"],
    #     volume_arn: "KxVolumeArn",
    #     nas1_configuration: {
    #       type: "SSD_1000" # One of: ["SSD_1000", "SSD_250", "HDD_12"],
    #       size: 1
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"],
    #     status_reason: "KxVolumeStatusReason",
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     description: "Description",
    #     availability_zone_ids: ["AvailabilityZoneId"],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreateKxVolumeResponse]
    def create_kx_volume(params = {}, options = {})
      request = build_request(:create_kx_volume, params)
      request.send_request(options)
    end

    # <p>Delete an FinSpace environment.</p>
    # @param [Hash, Types::DeleteEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The identifier for the FinSpace environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::DeleteEnvironmentResponse]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a kdb cluster.</p>
    # @param [Hash, Types::DeleteKxClusterRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.delete_kx_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxClusterResponse]
    def delete_kx_cluster(params = {}, options = {})
      request = build_request(:delete_kx_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified nodes from a cluster.
    #       </p>
    # @param [Hash, Types::DeleteKxClusterNodeRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster, for which you want to delete the nodes.</p>
    # @option params [String] :node_id
    #   <p>A unique identifier for the node that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     node_id: "KxClusterNodeIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_kx_cluster_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxClusterNodeResponse]
    def delete_kx_cluster_node(params = {}, options = {})
      request = build_request(:delete_kx_cluster_node, params)
      request.send_request(options)
    end

    # <p>Deletes the specified database and all of its associated data. This action is irreversible. You must copy any data out of the database before deleting it if the data is to be retained.</p>
    # @param [Hash, Types::DeleteKxDatabaseRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.delete_kx_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxDatabaseResponse]
    def delete_kx_database(params = {}, options = {})
      request = build_request(:delete_kx_database, params)
      request.send_request(options)
    end

    # <p>
    # Deletes the specified dataview. Before deleting a dataview, make sure that it is not in use by any cluster. </p>
    # @param [Hash, Types::DeleteKxDataviewRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to delete the dataview. </p>
    # @option params [String] :database_name
    #   <p>The name of the database whose dataview you want to delete.</p>
    # @option params [String] :dataview_name
    #   <p>The name of the dataview that you want to delete.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.delete_kx_dataview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxDataviewResponse]
    def delete_kx_dataview(params = {}, options = {})
      request = build_request(:delete_kx_dataview, params)
      request.send_request(options)
    end

    # <p>Deletes the kdb environment. This action is irreversible. Deleting a kdb environment will remove all the associated data and any services running in it. </p>
    # @param [Hash, Types::DeleteKxEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_kx_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxEnvironmentResponse]
    def delete_kx_environment(params = {}, options = {})
      request = build_request(:delete_kx_environment, params)
      request.send_request(options)
    end

    # <p>
    # Deletes the specified scaling group. This action is irreversible. You cannot delete a scaling group until all the clusters running on it have been deleted.</p>
    # @param [Hash, Types::DeleteKxScalingGroupRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to delete the dataview. </p>
    # @option params [String] :scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.delete_kx_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxScalingGroupResponse]
    def delete_kx_scaling_group(params = {}, options = {})
      request = build_request(:delete_kx_scaling_group, params)
      request.send_request(options)
    end

    # <p>Deletes a user in the specified kdb environment.</p>
    # @param [Hash, Types::DeleteKxUserRequest] params
    # @option params [String] :user_name
    #   <p>A unique identifier for the user that you want to delete.</p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_kx_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxUserResponse]
    def delete_kx_user(params = {}, options = {})
      request = build_request(:delete_kx_user, params)
      request.send_request(options)
    end

    # <p>
    #    Deletes a volume. You can only delete a volume if it's not attached to a cluster or a dataview. When a volume is deleted, any data on the volume is lost. This action is irreversible.
    # 
    # </p>
    # @param [Hash, Types::DeleteKxVolumeRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    # @option params [String] :volume_name
    #   <p>
    #   The name of the volume that you want to delete.
    #   </p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.delete_kx_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteKxVolumeResponse]
    def delete_kx_volume(params = {}, options = {})
      request = build_request(:delete_kx_volume, params)
      request.send_request(options)
    end

    # <p>Returns the FinSpace environment object.</p>
    # @param [Hash, Types::GetEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       name: "EnvironmentName",
    #       environment_id: "IdType",
    #       aws_account_id: "IdType",
    #       status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #       environment_url: "url",
    #       description: "Description",
    #       environment_arn: "EnvironmentArn",
    #       sage_maker_studio_domain_url: "SmsDomainUrl",
    #       kms_key_id: "KmsKeyId",
    #       dedicated_service_account_id: "IdType",
    #       federation_mode: "FEDERATED" # One of: ["FEDERATED", "LOCAL"],
    #       federation_parameters: {
    #         saml_metadata_document: "SamlMetadataDocument",
    #         saml_metadata_url: "url",
    #         application_call_back_url: "url",
    #         federation_urn: "urn",
    #         federation_provider_name: "FederationProviderName",
    #         attribute_map: {
    #           "FederationAttributeKey" => "FederationAttributeValue"
    #         }
    #       }
    #     }
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::GetEnvironmentResponse]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Returns information about a kdb changeset.</p>
    # @param [Hash, Types::GetKxChangesetRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @option params [String] :changeset_id
    #   <p>A unique identifier of the changeset for which you want to retrieve data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     changeset_id: "ChangesetId", # required
    #   }
    #   options = {}
    #   response = client.get_kx_changeset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     changeset_id: "ChangesetId",
    #     database_name: "DatabaseName",
    #     environment_id: "EnvironmentId",
    #     change_requests: [
    #       {
    #         change_type: "PUT" # One of: ["PUT", "DELETE"], # required
    #         s3_path: "S3Path",
    #         db_path: "DbPath", # required
    #       }
    #     ],
    #     created_timestamp: Time.now,
    #     active_from_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     status: "PENDING" # One of: ["PENDING", "PROCESSING", "FAILED", "COMPLETED"],
    #     error_info: {
    #       error_message: "ErrorMessage",
    #       error_type: "The inputs to this request are invalid." # One of: ["The inputs to this request are invalid.", "Service limits have been exceeded.", "Missing required permission to perform this request.", "One or more inputs to this request were not found.", "The system temporarily lacks sufficient resources to process the request.", "An internal error has occurred.", "Cancelled", "A user recoverable error has occurred"]
    #     }
    #   }
    # @return [Types::GetKxChangesetResponse]
    def get_kx_changeset(params = {}, options = {})
      request = build_request(:get_kx_changeset, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a kdb cluster.</p>
    # @param [Hash, Types::GetKxClusterRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "PENDING" # One of: ["PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #     status_reason: "KxClusterStatusReason",
    #     cluster_name: "KxClusterName",
    #     cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #     tickerplant_log_configuration: {
    #       tickerplant_log_volumes: ["VolumeName"]
    #     },
    #     volumes: [
    #       {
    #         volume_name: "VolumeName",
    #         volume_type: "NAS_1" # One of: ["NAS_1"]
    #       }
    #     ],
    #     databases: [
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName"
    #           }
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     cache_storage_configurations: [
    #       {
    #         type: "KxCacheStorageType", # required
    #         size: 1, # required
    #       }
    #     ],
    #     auto_scaling_configuration: {
    #       min_node_count: 1,
    #       max_node_count: 1,
    #       auto_scaling_metric: "CPU_UTILIZATION_PERCENTAGE" # One of: ["CPU_UTILIZATION_PERCENTAGE"],
    #       metric_target: 1.0,
    #       scale_in_cooldown_seconds: 1.0,
    #       scale_out_cooldown_seconds: 1.0
    #     },
    #     cluster_description: "KxClusterDescription",
    #     capacity_configuration: {
    #       node_type: "NodeType",
    #       node_count: 1
    #     },
    #     release_label: "ReleaseLabel",
    #     vpc_configuration: {
    #       vpc_id: "VpcIdString",
    #       security_group_ids: ["SecurityGroupIdString"],
    #       subnet_ids: ["SubnetIdString"],
    #       ip_address_type: "IP_V4" # One of: ["IP_V4"]
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue"
    #       }
    #     ],
    #     code: {
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion"
    #     },
    #     execution_role: "ExecutionRoleArn",
    #     last_modified_timestamp: Time.now,
    #     savedown_storage_configuration: {
    #       type: "SDS01" # One of: ["SDS01"],
    #       size: 1,
    #       volume_name: "KxVolumeName"
    #     },
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     created_timestamp: Time.now,
    #     scaling_group_configuration: {
    #       scaling_group_name: "KxScalingGroupName", # required
    #       memory_limit: 1,
    #       memory_reservation: 1, # required
    #       node_count: 1, # required
    #       cpu: 1.0
    #     }
    #   }
    # @return [Types::GetKxClusterResponse]
    def get_kx_cluster(params = {}, options = {})
      request = build_request(:get_kx_cluster, params)
      request.send_request(options)
    end

    # <p>Retrieves a connection string for a user to connect to a kdb cluster. You must call this API using the same role that you have defined while creating a user. </p>
    # @param [Hash, Types::GetKxConnectionStringRequest] params
    # @option params [String] :user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #         how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #         <i>IAM User Guide</i>. </p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>A name of the kdb cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_arn: "KxUserArn", # required
    #     environment_id: "IdType", # required
    #     cluster_name: "KxClusterName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_connection_string(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signed_connection_string: "SignedKxConnectionString"
    #   }
    # @return [Types::GetKxConnectionStringResponse]
    def get_kx_connection_string(params = {}, options = {})
      request = build_request(:get_kx_connection_string, params)
      request.send_request(options)
    end

    # <p>Returns database information for the specified environment ID.</p>
    # @param [Hash, Types::GetKxDatabaseRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "DatabaseName",
    #     database_arn: "DatabaseArn",
    #     environment_id: "EnvironmentId",
    #     description: "Description",
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     last_completed_changeset_id: "ChangesetId",
    #     num_bytes: 1,
    #     num_changesets: 1,
    #     num_files: 1
    #   }
    # @return [Types::GetKxDatabaseResponse]
    def get_kx_database(params = {}, options = {})
      request = build_request(:get_kx_database, params)
      request.send_request(options)
    end

    # <p>
    # Retrieves details of the dataview.
    # </p>
    # @param [Hash, Types::GetKxDataviewRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to retrieve the dataview details.</p>
    # @option params [String] :database_name
    #   <p>
    #   The name of the database where you created the dataview.</p>
    # @option params [String] :dataview_name
    #   <p>A unique identifier for the dataview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_dataview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "DatabaseName",
    #     dataview_name: "KxDataviewName",
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false
    #       }
    #     ],
    #     active_versions: [
    #       {
    #         changeset_id: "ChangesetId",
    #         segment_configurations: [
    #           {
    #             db_paths: ["DbPath"], # required
    #             volume_name: "KxVolumeName", # required
    #             on_demand: false
    #           }
    #         ],
    #         attached_clusters: ["KxClusterName"],
    #         created_timestamp: Time.now,
    #         version_id: "VersionId"
    #       }
    #     ],
    #     description: "Description",
    #     auto_update: false,
    #     read_write: false,
    #     environment_id: "EnvironmentId",
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now,
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"],
    #     status_reason: "KxDataviewStatusReason"
    #   }
    # @return [Types::GetKxDataviewResponse]
    def get_kx_dataview(params = {}, options = {})
      request = build_request(:get_kx_dataview, params)
      request.send_request(options)
    end

    # <p>Retrieves all the information for the specified kdb environment.</p>
    # @param [Hash, Types::GetKxEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.get_kx_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "KxEnvironmentName",
    #     environment_id: "IdType",
    #     aws_account_id: "IdType",
    #     status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #     tgw_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     dns_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     error_message: "EnvironmentErrorMessage",
    #     description: "Description",
    #     environment_arn: "EnvironmentArn",
    #     kms_key_id: "KmsKeyId",
    #     dedicated_service_account_id: "IdType",
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #       attachment_network_acl_configuration: [
    #         {
    #           rule_number: 1, # required
    #           protocol: "Protocol", # required
    #           rule_action: "allow" # One of: ["allow", "deny"], # required
    #           port_range: {
    #             from: 1, # required
    #             to: 1, # required
    #           },
    #           icmp_type_code: {
    #             type: 1, # required
    #             code: 1, # required
    #           },
    #           cidr_block: "ValidCIDRBlock", # required
    #         }
    #       ]
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       }
    #     ],
    #     creation_timestamp: Time.now,
    #     update_timestamp: Time.now,
    #     availability_zone_ids: ["AvailabilityZoneId"],
    #     certificate_authority_arn: "stringValueLength1to255"
    #   }
    # @return [Types::GetKxEnvironmentResponse]
    def get_kx_environment(params = {}, options = {})
      request = build_request(:get_kx_environment, params)
      request.send_request(options)
    end

    # <p>
    # Retrieves details of a scaling group.</p>
    # @param [Hash, Types::GetKxScalingGroupRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment. </p>
    # @option params [String] :scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     scaling_group_name: "KxScalingGroupName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_scaling_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_group_name: "KxScalingGroupName",
    #     scaling_group_arn: "arn",
    #     host_type: "KxHostType",
    #     clusters: ["KxClusterName"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"],
    #     status_reason: "KxClusterStatusReason",
    #     last_modified_timestamp: Time.now,
    #     created_timestamp: Time.now
    #   }
    # @return [Types::GetKxScalingGroupResponse]
    def get_kx_scaling_group(params = {}, options = {})
      request = build_request(:get_kx_scaling_group, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified kdb user.</p>
    # @param [Hash, Types::GetKxUserRequest] params
    # @option params [String] :user_name
    #   <p>A unique identifier for the user.</p>
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "KxUserNameString", # required
    #     environment_id: "IdType", # required
    #   }
    #   options = {}
    #   response = client.get_kx_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "IdType",
    #     user_arn: "KxUserArn",
    #     environment_id: "IdType",
    #     iam_role: "RoleArn"
    #   }
    # @return [Types::GetKxUserResponse]
    def get_kx_user(params = {}, options = {})
      request = build_request(:get_kx_user, params)
      request.send_request(options)
    end

    # <p>
    # Retrieves the information about the volume. </p>
    # @param [Hash, Types::GetKxVolumeRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    # @option params [String] :volume_name
    #   <p>A unique identifier for the volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #   }
    #   options = {}
    #   response = client.get_kx_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "KxEnvironmentId",
    #     volume_name: "KxVolumeName",
    #     volume_type: "NAS_1" # One of: ["NAS_1"],
    #     volume_arn: "KxVolumeArn",
    #     nas1_configuration: {
    #       type: "SSD_1000" # One of: ["SSD_1000", "SSD_250", "HDD_12"],
    #       size: 1
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"],
    #     status_reason: "KxVolumeStatusReason",
    #     created_timestamp: Time.now,
    #     description: "Description",
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_ids: ["AvailabilityZoneId"],
    #     last_modified_timestamp: Time.now,
    #     attached_clusters: [
    #       {
    #         cluster_name: "KxClusterName",
    #         cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #         cluster_status: "PENDING" # One of: ["PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::GetKxVolumeResponse]
    def get_kx_volume(params = {}, options = {})
      request = build_request(:get_kx_volume, params)
      request.send_request(options)
    end

    # <p>A list of all of your FinSpace environments.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>A token generated by FinSpace that specifies where to continue pagination if a previous
    #            request was truncated. To get the next set of pages, pass in the <code>nextToken</code>nextToken value from the
    #            response object of the previous page call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         name: "EnvironmentName",
    #         environment_id: "IdType",
    #         aws_account_id: "IdType",
    #         status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #         environment_url: "url",
    #         description: "Description",
    #         environment_arn: "EnvironmentArn",
    #         sage_maker_studio_domain_url: "SmsDomainUrl",
    #         kms_key_id: "KmsKeyId",
    #         dedicated_service_account_id: "IdType",
    #         federation_mode: "FEDERATED" # One of: ["FEDERATED", "LOCAL"],
    #         federation_parameters: {
    #           saml_metadata_document: "SamlMetadataDocument",
    #           saml_metadata_url: "url",
    #           application_call_back_url: "url",
    #           federation_urn: "urn",
    #           federation_provider_name: "FederationProviderName",
    #           attribute_map: {
    #             "FederationAttributeKey" => "FederationAttributeValue"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::ListEnvironmentsResponse]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the changesets for a database.</p>
    # @param [Hash, Types::ListKxChangesetsRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_changesets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kx_changesets: [
    #       {
    #         changeset_id: "ChangesetId",
    #         created_timestamp: Time.now,
    #         active_from_timestamp: Time.now,
    #         last_modified_timestamp: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PROCESSING", "FAILED", "COMPLETED"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxChangesetsResponse]
    def list_kx_changesets(params = {}, options = {})
      request = build_request(:list_kx_changesets, params)
      request.send_request(options)
    end

    # <p>Lists all the nodes in a kdb cluster.</p>
    # @param [Hash, Types::ListKxClusterNodesRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>A unique name for the cluster.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_cluster_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     nodes: [
    #       {
    #         node_id: "KxClusterNodeIdString",
    #         availability_zone_id: "AvailabilityZoneId",
    #         launch_time: Time.now,
    #         status: "RUNNING" # One of: ["RUNNING", "PROVISIONING"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxClusterNodesResponse]
    def list_kx_cluster_nodes(params = {}, options = {})
      request = build_request(:list_kx_cluster_nodes, params)
      request.send_request(options)
    end

    # <p>Returns a list of clusters.</p>
    # @param [Hash, Types::ListKxClustersRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_kx_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kx_cluster_summaries: [
    #       {
    #         status: "PENDING" # One of: ["PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"],
    #         status_reason: "KxClusterStatusReason",
    #         cluster_name: "KxClusterName",
    #         cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #         cluster_description: "KxClusterDescription",
    #         release_label: "ReleaseLabel",
    #         volumes: [
    #           {
    #             volume_name: "VolumeName",
    #             volume_type: "NAS_1" # One of: ["NAS_1"]
    #           }
    #         ],
    #         initialization_script: "InitializationScriptFilePath",
    #         execution_role: "ExecutionRoleArn",
    #         az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #         availability_zone_id: "AvailabilityZoneId",
    #         last_modified_timestamp: Time.now,
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxClustersResponse]
    def list_kx_clusters(params = {}, options = {})
      request = build_request(:list_kx_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the databases in the kdb environment.</p>
    # @param [Hash, Types::ListKxDatabasesRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kx_databases: [
    #       {
    #         database_name: "DatabaseName",
    #         created_timestamp: Time.now,
    #         last_modified_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxDatabasesResponse]
    def list_kx_databases(params = {}, options = {})
      request = build_request(:list_kx_databases, params)
      request.send_request(options)
    end

    # <p>
    # Returns a list of all the dataviews in the database.</p>
    # @param [Hash, Types::ListKxDataviewsRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, for which you want to retrieve a list of dataviews.</p>
    # @option params [String] :database_name
    #   <p>
    #   The name of the database where the dataviews were created.</p>
    # @option params [String] :next_token
    #   <p>
    #   A token that indicates where a results page should begin.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_dataviews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kx_dataviews: [
    #       {
    #         environment_id: "EnvironmentId",
    #         database_name: "DatabaseName",
    #         dataview_name: "KxDataviewName",
    #         az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #         availability_zone_id: "AvailabilityZoneId",
    #         changeset_id: "ChangesetId",
    #         segment_configurations: [
    #           {
    #             db_paths: ["DbPath"], # required
    #             volume_name: "KxVolumeName", # required
    #             on_demand: false
    #           }
    #         ],
    #         active_versions: [
    #           {
    #             changeset_id: "ChangesetId",
    #             segment_configurations: [
    #               {
    #                 db_paths: ["DbPath"], # required
    #                 volume_name: "KxVolumeName", # required
    #                 on_demand: false
    #               }
    #             ],
    #             attached_clusters: ["KxClusterName"],
    #             created_timestamp: Time.now,
    #             version_id: "VersionId"
    #           }
    #         ],
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"],
    #         description: "Description",
    #         auto_update: false,
    #         read_write: false,
    #         created_timestamp: Time.now,
    #         last_modified_timestamp: Time.now,
    #         status_reason: "KxDataviewStatusReason"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxDataviewsResponse]
    def list_kx_dataviews(params = {}, options = {})
      request = build_request(:list_kx_dataviews, params)
      request.send_request(options)
    end

    # <p>Returns a list of kdb environments created in an account.</p>
    # @param [Hash, Types::ListKxEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [
    #       {
    #         name: "KxEnvironmentName",
    #         environment_id: "IdType",
    #         aws_account_id: "IdType",
    #         status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #         tgw_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #         dns_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #         error_message: "EnvironmentErrorMessage",
    #         description: "Description",
    #         environment_arn: "EnvironmentArn",
    #         kms_key_id: "KmsKeyId",
    #         dedicated_service_account_id: "IdType",
    #         transit_gateway_configuration: {
    #           transit_gateway_id: "TransitGatewayID", # required
    #           routable_cidr_space: "ValidCIDRSpace", # required
    #           attachment_network_acl_configuration: [
    #             {
    #               rule_number: 1, # required
    #               protocol: "Protocol", # required
    #               rule_action: "allow" # One of: ["allow", "deny"], # required
    #               port_range: {
    #                 from: 1, # required
    #                 to: 1, # required
    #               },
    #               icmp_type_code: {
    #                 type: 1, # required
    #                 code: 1, # required
    #               },
    #               cidr_block: "ValidCIDRBlock", # required
    #             }
    #           ]
    #         },
    #         custom_dns_configuration: [
    #           {
    #             custom_dns_server_name: "ValidHostname", # required
    #             custom_dns_server_ip: "ValidIPAddress", # required
    #           }
    #         ],
    #         creation_timestamp: Time.now,
    #         update_timestamp: Time.now,
    #         availability_zone_ids: ["AvailabilityZoneId"],
    #         certificate_authority_arn: "stringValueLength1to255"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxEnvironmentsResponse]
    def list_kx_environments(params = {}, options = {})
      request = build_request(:list_kx_environments, params)
      request.send_request(options)
    end

    # <p>
    # Returns a list of scaling groups in a kdb environment.</p>
    # @param [Hash, Types::ListKxScalingGroupsRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, for which you want to retrieve a list of scaling groups.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @option params [String] :next_token
    #   <p>
    #   A token that indicates where a results page should begin. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_kx_scaling_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_groups: [
    #       {
    #         scaling_group_name: "KxScalingGroupName",
    #         host_type: "KxHostType",
    #         clusters: ["KxClusterName"],
    #         availability_zone_id: "AvailabilityZoneId",
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED", "DELETE_FAILED"],
    #         status_reason: "KxClusterStatusReason",
    #         last_modified_timestamp: Time.now,
    #         created_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxScalingGroupsResponse]
    def list_kx_scaling_groups(params = {}, options = {})
      request = build_request(:list_kx_scaling_groups, params)
      request.send_request(options)
    end

    # <p>Lists all the users in a kdb environment.</p>
    # @param [Hash, Types::ListKxUsersRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_kx_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         user_arn: "KxUserArn",
    #         user_name: "KxUserNameString",
    #         iam_role: "RoleArn",
    #         create_timestamp: Time.now,
    #         update_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxUsersResponse]
    def list_kx_users(params = {}, options = {})
      request = build_request(:list_kx_users, params)
      request.send_request(options)
    end

    # <p>
    # Lists all the volumes in a kdb environment.
    # </p>
    # @param [Hash, Types::ListKxVolumesRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this request.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where a results page should begin.</p>
    # @option params [String] :volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     volume_type: "NAS_1" # One of: ["NAS_1"]
    #   }
    #   options = {}
    #   response = client.list_kx_volumes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kx_volume_summaries: [
    #       {
    #         volume_name: "KxVolumeName",
    #         volume_type: "NAS_1" # One of: ["NAS_1"],
    #         status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"],
    #         description: "Description",
    #         status_reason: "KxVolumeStatusReason",
    #         az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #         availability_zone_ids: ["AvailabilityZoneId"],
    #         created_timestamp: Time.now,
    #         last_modified_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListKxVolumesResponse]
    def list_kx_volumes(params = {}, options = {})
      request = build_request(:list_kx_volumes, params)
      request.send_request(options)
    end

    # <p>A list of all tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "FinSpaceTaggableArn", # required
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

    # <p>Adds metadata tags to a FinSpace resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags to be assigned to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "FinSpaceTaggableArn", # required
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

    # <p>Removes metadata tags from a FinSpace resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>A FinSpace resource from which you want to remove a tag or tags. The value for this
    #            parameter is an Amazon Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "FinSpaceTaggableArn", # required
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

    # <p>Update your FinSpace environment.</p>
    # @param [Hash, Types::UpdateEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    # @option params [String] :description
    #   <p>The description of the environment.</p>
    # @option params [String] :federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    # @option params [Types::FederationParameters] :federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     name: "EnvironmentName",
    #     description: "Description",
    #     federation_mode: "FEDERATED" # One of: ["FEDERATED", "LOCAL"],
    #     federation_parameters: {
    #       saml_metadata_document: "SamlMetadataDocument",
    #       saml_metadata_url: "url",
    #       application_call_back_url: "url",
    #       federation_urn: "urn",
    #       federation_provider_name: "FederationProviderName",
    #       attribute_map: {
    #         "FederationAttributeKey" => "FederationAttributeValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       name: "EnvironmentName",
    #       environment_id: "IdType",
    #       aws_account_id: "IdType",
    #       status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #       environment_url: "url",
    #       description: "Description",
    #       environment_arn: "EnvironmentArn",
    #       sage_maker_studio_domain_url: "SmsDomainUrl",
    #       kms_key_id: "KmsKeyId",
    #       dedicated_service_account_id: "IdType",
    #       federation_mode: "FEDERATED" # One of: ["FEDERATED", "LOCAL"],
    #       federation_parameters: {
    #         saml_metadata_document: "SamlMetadataDocument",
    #         saml_metadata_url: "url",
    #         application_call_back_url: "url",
    #         federation_urn: "urn",
    #         federation_provider_name: "FederationProviderName",
    #         attribute_map: {
    #           "FederationAttributeKey" => "FederationAttributeValue"
    #         }
    #       }
    #     }
    #   }
    # @deprecated
    #   This method will be discontinued.
    # @return [Types::UpdateEnvironmentResponse]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>
    #          Allows you to update code configuration on a running cluster. By using this API you can update the code, the initialization script path, and the command line arguments for a specific cluster. 
    #       The configuration that you want to update will override any existing configurations on the cluster. 
    #       </p>
    # @param [Hash, Types::UpdateKxClusterCodeConfigurationRequest] params
    # @option params [String] :environment_id
    #   <p>
    #            A unique identifier of the kdb environment.
    #         </p>
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [Types::CodeConfiguration] :code
    #   <p>The structure of the customer code available within the running cluster.</p>
    # @option params [String] :initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #            <i>.zip</i> file that contains the custom code, which will be loaded on
    #            the cluster. It must include the file name itself. For example,
    #            <code>somedir/init.q</code>.</p>
    #            <p>You cannot update this parameter for a <code>NO_RESTART</code> deployment.</p>
    # @option params [Array<Types::KxCommandLineArgument>] :command_line_arguments
    #   <p>Specifies the key-value pairs to make them available inside the cluster.</p>
    #            <p>You cannot update this parameter for a <code>NO_RESTART</code> deployment.</p>
    # @option params [Types::KxClusterCodeDeploymentConfiguration] :deployment_configuration
    #   <p>
    #            The configuration that allows you to choose how you want to update the code on a cluster.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #     code: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion"
    #     },
    #     initialization_script: "InitializationScriptFilePath",
    #     command_line_arguments: [
    #       {
    #         key: "KxCommandLineArgumentKey",
    #         value: "KxCommandLineArgumentValue"
    #       }
    #     ],
    #     deployment_configuration: {
    #       deployment_strategy: "NO_RESTART" # One of: ["NO_RESTART", "ROLLING", "FORCE"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_kx_cluster_code_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateKxClusterCodeConfigurationResponse]
    def update_kx_cluster_code_configuration(params = {}, options = {})
      request = build_request(:update_kx_cluster_code_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the databases mounted on a kdb cluster, which includes the <code>changesetId</code> and all the dbPaths to be cached. This API does not allow you to change a database name or add a database if you created a cluster without one. </p>
    #          <p>Using this API you can point a cluster to a different changeset and modify a list of partitions being cached.</p>
    # @param [Hash, Types::UpdateKxClusterDatabasesRequest] params
    # @option params [String] :environment_id
    #   <p>The unique identifier of a kdb environment.</p>
    # @option params [String] :cluster_name
    #   <p>A unique name for the cluster that you want to modify.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [Array<Types::KxDatabaseConfiguration>] :databases
    #   <p> The structure of databases mounted on the cluster.</p>
    # @option params [Types::KxDeploymentConfiguration] :deployment_configuration
    #   <p>
    #            The configuration that allows you to choose how you want to update the databases on a cluster.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     cluster_name: "KxClusterName", # required
    #     client_token: "ClientTokenString",
    #     databases: [ # required
    #       {
    #         database_name: "DatabaseName", # required
    #         cache_configurations: [
    #           {
    #             cache_type: "KxCacheStorageType", # required
    #             db_paths: ["DbPath"], # required
    #             dataview_name: "KxDataviewName"
    #           }
    #         ],
    #         changeset_id: "ChangesetId",
    #         dataview_name: "KxDataviewName",
    #         dataview_configuration: {
    #           dataview_name: "KxDataviewName",
    #           dataview_version_id: "VersionId",
    #           changeset_id: "ChangesetId",
    #           segment_configurations: [
    #             {
    #               db_paths: ["DbPath"], # required
    #               volume_name: "KxVolumeName", # required
    #               on_demand: false
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     deployment_configuration: {
    #       deployment_strategy: "NO_RESTART" # One of: ["NO_RESTART", "ROLLING"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_kx_cluster_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateKxClusterDatabasesResponse]
    def update_kx_cluster_databases(params = {}, options = {})
      request = build_request(:update_kx_cluster_databases, params)
      request.send_request(options)
    end

    # <p>Updates information for the given kdb database.</p>
    # @param [Hash, Types::UpdateKxDatabaseRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :database_name
    #   <p>The name of the kdb database.</p>
    # @option params [String] :description
    #   <p>A description of the database.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     description: "Description",
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.update_kx_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database_name: "DatabaseName",
    #     environment_id: "EnvironmentId",
    #     description: "Description",
    #     last_modified_timestamp: Time.now
    #   }
    # @return [Types::UpdateKxDatabaseResponse]
    def update_kx_database(params = {}, options = {})
      request = build_request(:update_kx_database, params)
      request.send_request(options)
    end

    # <p>
    # Updates the specified dataview. The dataviews get automatically updated when any new changesets are ingested. Each update of the dataview creates a new version, including changeset details and cache configurations</p>
    # @param [Hash, Types::UpdateKxDataviewRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment, where you want to update the dataview.</p>
    # @option params [String] :database_name
    #   <p>
    #   The name of the database.</p>
    # @option params [String] :dataview_name
    #   <p>The name of the dataview that you want to update.</p>
    # @option params [String] :description
    #   <p>
    #          The description for a dataview.
    #         </p>
    # @option params [String] :changeset_id
    #   <p>A unique identifier for the changeset.</p>
    # @option params [Array<Types::KxDataviewSegmentConfiguration>] :segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "EnvironmentId", # required
    #     database_name: "DatabaseName", # required
    #     dataview_name: "KxDataviewName", # required
    #     description: "Description",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false
    #       }
    #     ],
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.update_kx_dataview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "EnvironmentId",
    #     database_name: "DatabaseName",
    #     dataview_name: "KxDataviewName",
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_id: "AvailabilityZoneId",
    #     changeset_id: "ChangesetId",
    #     segment_configurations: [
    #       {
    #         db_paths: ["DbPath"], # required
    #         volume_name: "KxVolumeName", # required
    #         on_demand: false
    #       }
    #     ],
    #     active_versions: [
    #       {
    #         changeset_id: "ChangesetId",
    #         segment_configurations: [
    #           {
    #             db_paths: ["DbPath"], # required
    #             volume_name: "KxVolumeName", # required
    #             on_demand: false
    #           }
    #         ],
    #         attached_clusters: ["KxClusterName"],
    #         created_timestamp: Time.now,
    #         version_id: "VersionId"
    #       }
    #     ],
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "FAILED", "DELETING"],
    #     auto_update: false,
    #     read_write: false,
    #     description: "Description",
    #     created_timestamp: Time.now,
    #     last_modified_timestamp: Time.now
    #   }
    # @return [Types::UpdateKxDataviewResponse]
    def update_kx_dataview(params = {}, options = {})
      request = build_request(:update_kx_dataview, params)
      request.send_request(options)
    end

    # <p>Updates information for the given kdb environment.</p>
    # @param [Hash, Types::UpdateKxEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :name
    #   <p>The name of the kdb environment.</p>
    # @option params [String] :description
    #   <p>A description of the kdb environment.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     name: "KxEnvironmentName",
    #     description: "Description",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_kx_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "KxEnvironmentName",
    #     environment_id: "IdType",
    #     aws_account_id: "IdType",
    #     status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #     tgw_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     dns_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     error_message: "EnvironmentErrorMessage",
    #     description: "Description",
    #     environment_arn: "EnvironmentArn",
    #     kms_key_id: "KmsKeyId",
    #     dedicated_service_account_id: "IdType",
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #       attachment_network_acl_configuration: [
    #         {
    #           rule_number: 1, # required
    #           protocol: "Protocol", # required
    #           rule_action: "allow" # One of: ["allow", "deny"], # required
    #           port_range: {
    #             from: 1, # required
    #             to: 1, # required
    #           },
    #           icmp_type_code: {
    #             type: 1, # required
    #             code: 1, # required
    #           },
    #           cidr_block: "ValidCIDRBlock", # required
    #         }
    #       ]
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       }
    #     ],
    #     creation_timestamp: Time.now,
    #     update_timestamp: Time.now,
    #     availability_zone_ids: ["AvailabilityZoneId"]
    #   }
    # @return [Types::UpdateKxEnvironmentResponse]
    def update_kx_environment(params = {}, options = {})
      request = build_request(:update_kx_environment, params)
      request.send_request(options)
    end

    # <p>Updates environment network to connect to your internal network by using a transit gateway. This API supports request to create a transit gateway attachment from FinSpace VPC to your transit gateway ID and create a custom Route-53 outbound resolvers.</p>
    #          <p>Once you send a request to update a network, you cannot change it again. Network update might require termination of any clusters that are running in the existing network.</p>
    # @param [Hash, Types::UpdateKxEnvironmentNetworkRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [Types::TransitGatewayConfiguration] :transit_gateway_configuration
    #   <p>Specifies the transit gateway and network configuration to connect the kdb environment to an internal network.</p>
    # @option params [Array<Types::CustomDNSServer>] :custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #       attachment_network_acl_configuration: [
    #         {
    #           rule_number: 1, # required
    #           protocol: "Protocol", # required
    #           rule_action: "allow" # One of: ["allow", "deny"], # required
    #           port_range: {
    #             from: 1, # required
    #             to: 1, # required
    #           },
    #           icmp_type_code: {
    #             type: 1, # required
    #             code: 1, # required
    #           },
    #           cidr_block: "ValidCIDRBlock", # required
    #         }
    #       ]
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_kx_environment_network(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "KxEnvironmentName",
    #     environment_id: "IdType",
    #     aws_account_id: "IdType",
    #     status: "CREATE_REQUESTED" # One of: ["CREATE_REQUESTED", "CREATING", "CREATED", "DELETE_REQUESTED", "DELETING", "DELETED", "FAILED_CREATION", "RETRY_DELETION", "FAILED_DELETION", "UPDATE_NETWORK_REQUESTED", "UPDATING_NETWORK", "FAILED_UPDATING_NETWORK", "SUSPENDED"],
    #     tgw_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     dns_status: "NONE" # One of: ["NONE", "UPDATE_REQUESTED", "UPDATING", "FAILED_UPDATE", "SUCCESSFULLY_UPDATED"],
    #     error_message: "EnvironmentErrorMessage",
    #     description: "Description",
    #     environment_arn: "EnvironmentArn",
    #     kms_key_id: "KmsKeyId",
    #     dedicated_service_account_id: "IdType",
    #     transit_gateway_configuration: {
    #       transit_gateway_id: "TransitGatewayID", # required
    #       routable_cidr_space: "ValidCIDRSpace", # required
    #       attachment_network_acl_configuration: [
    #         {
    #           rule_number: 1, # required
    #           protocol: "Protocol", # required
    #           rule_action: "allow" # One of: ["allow", "deny"], # required
    #           port_range: {
    #             from: 1, # required
    #             to: 1, # required
    #           },
    #           icmp_type_code: {
    #             type: 1, # required
    #             code: 1, # required
    #           },
    #           cidr_block: "ValidCIDRBlock", # required
    #         }
    #       ]
    #     },
    #     custom_dns_configuration: [
    #       {
    #         custom_dns_server_name: "ValidHostname", # required
    #         custom_dns_server_ip: "ValidIPAddress", # required
    #       }
    #     ],
    #     creation_timestamp: Time.now,
    #     update_timestamp: Time.now,
    #     availability_zone_ids: ["AvailabilityZoneId"]
    #   }
    # @return [Types::UpdateKxEnvironmentNetworkResponse]
    def update_kx_environment_network(params = {}, options = {})
      request = build_request(:update_kx_environment_network, params)
      request.send_request(options)
    end

    # <p>Updates the user details. You can only update the IAM role associated with a user.</p>
    # @param [Hash, Types::UpdateKxUserRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    # @option params [String] :user_name
    #   <p>A unique identifier for the user.</p>
    # @option params [String] :iam_role
    #   <p>The IAM role ARN that is associated with the user.</p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "IdType", # required
    #     user_name: "KxUserNameString", # required
    #     iam_role: "RoleArn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_kx_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_name: "KxUserNameString",
    #     user_arn: "KxUserArn",
    #     environment_id: "IdType",
    #     iam_role: "RoleArn"
    #   }
    # @return [Types::UpdateKxUserResponse]
    def update_kx_user(params = {}, options = {})
      request = build_request(:update_kx_user, params)
      request.send_request(options)
    end

    # <p>
    # Updates the throughput or capacity of a volume. During the update process, the filesystem 
    # might be unavailable for a few minutes. You can retry any operations after the update is complete.
    # </p>
    # @param [Hash, Types::UpdateKxVolumeRequest] params
    # @option params [String] :environment_id
    #   <p>A unique identifier for the kdb environment where you created the storage volume. </p>
    # @option params [String] :volume_name
    #   <p>
    #   A unique identifier for the volume.</p>
    # @option params [String] :description
    #   <p>
    #   A description of the volume.
    #   </p>
    # @option params [String] :client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    # @option params [Types::KxNAS1Configuration] :nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "KxEnvironmentId", # required
    #     volume_name: "KxVolumeName", # required
    #     description: "Description",
    #     client_token: "ClientTokenString",
    #     nas1_configuration: {
    #       type: "SSD_1000" # One of: ["SSD_1000", "SSD_250", "HDD_12"],
    #       size: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_kx_volume(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "KxEnvironmentId",
    #     volume_name: "KxVolumeName",
    #     volume_type: "NAS_1" # One of: ["NAS_1"],
    #     volume_arn: "KxVolumeArn",
    #     nas1_configuration: {
    #       type: "SSD_1000" # One of: ["SSD_1000", "SSD_250", "HDD_12"],
    #       size: 1
    #     },
    #     status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "DELETE_FAILED"],
    #     description: "Description",
    #     status_reason: "KxVolumeStatusReason",
    #     created_timestamp: Time.now,
    #     az_mode: "SINGLE" # One of: ["SINGLE", "MULTI"],
    #     availability_zone_ids: ["AvailabilityZoneId"],
    #     last_modified_timestamp: Time.now,
    #     attached_clusters: [
    #       {
    #         cluster_name: "KxClusterName",
    #         cluster_type: "HDB" # One of: ["HDB", "RDB", "GATEWAY", "GP", "TICKERPLANT"],
    #         cluster_status: "PENDING" # One of: ["PENDING", "CREATING", "CREATE_FAILED", "RUNNING", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #       }
    #     ]
    #   }
    # @return [Types::UpdateKxVolumeResponse]
    def update_kx_volume(params = {}, options = {})
      request = build_request(:update_kx_volume, params)
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
      context[:gem_name] = 'aws-sdk-finspace'
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
