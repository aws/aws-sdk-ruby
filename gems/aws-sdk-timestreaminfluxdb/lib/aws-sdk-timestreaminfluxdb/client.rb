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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::TimestreamInfluxDB
  # An API client for Aws::TimestreamInfluxDB.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonTimestreamInfluxDB

    add_plugin(::Aws::TimestreamInfluxDB::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TimestreamInfluxDB::EndpointProvider)
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

    # <p>Creates a new Timestream for InfluxDB cluster.</p>
    # @param [Hash, Types::CreateDbClusterInput] params
    # @option params [String] :name
    #   <p>The name that uniquely identifies the DB cluster when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB cluster names must be unique per customer and per region.</p>
    # @option params [String] :username
    #   <p>The username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. For example, my-user1. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. These attributes will be stored in a secret created in Secrets Manager in your account.</p>
    # @option params [String] :password
    #   <p>The password of the initial admin user created in InfluxDB. This password will allow
    #               you to access the InfluxDB UI to perform various administrative tasks and also use the
    #               InfluxDB CLI to create an operator token. These attributes will be stored in a secret created in Secrets Manager in your account.</p>
    # @option params [String] :organization
    #   <p>The name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users.</p>
    # @option params [String] :bucket
    #   <p>The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization.</p>
    # @option params [Integer] :port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    # @option params [String] :db_parameter_group_identifier
    #   <p>The ID of the DB parameter group to assign to your DB cluster. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    # @option params [String] :db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    # @option params [String] :db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type to read and write InfluxDB data.</p>
    #            <p>You can choose between three different types of provisioned Influx IOPS Included storage according to your workload requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Influx I/O Included 3000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx I/O Included 12000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx I/O Included 16000 IOPS</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type in GiB (gibibytes).</p>
    # @option params [String] :network_type
    #   <p>Specifies whether the network type of the Timestream for InfluxDB cluster is IPv4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Configures the Timestream for InfluxDB cluster with a public IP to facilitate access from outside the VPC.</p>
    # @option params [Array<String>] :vpc_subnet_ids
    #   <p>A list of VPC subnet IDs to associate with the DB cluster. Provide at least two VPC subnet IDs in different Availability Zones when deploying with a Multi-AZ standby.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security group IDs to associate with the Timestream for InfluxDB cluster.</p>
    # @option params [String] :deployment_type
    #   <p>Specifies the type of cluster to create.</p>
    # @option params [String] :failover_mode
    #   <p>Specifies the behavior of failure recovery when the primary node of the cluster fails.</p>
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to a specified S3 bucket.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the DB instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DbClusterName", # required
    #     username: "Username",
    #     password: "Password", # required
    #     organization: "Organization",
    #     bucket: "Bucket",
    #     port: 1,
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"], # required
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1, # required
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     publicly_accessible: false,
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"], # required
    #     deployment_type: "MULTI_NODE_READ_REPLICAS" # One of: ["MULTI_NODE_READ_REPLICAS"], # required
    #     failover_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "NO_FAILOVER"],
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_id: "DbClusterId",
    #     db_cluster_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED", "MAINTENANCE"]
    #   }
    # @return [Types::CreateDbClusterOutput]
    def create_db_cluster(params = {}, options = {})
      request = build_request(:create_db_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new Timestream for InfluxDB DB instance.</p>
    # @param [Hash, Types::CreateDbInstanceInput] params
    # @option params [String] :name
    #   <p>The name that uniquely identifies the DB instance when interacting with the Amazon Timestream for InfluxDB API and CLI commands. This name will also be a prefix included in the endpoint. DB instance names must be unique per customer and per region.</p>
    # @option params [String] :username
    #   <p>The username of the initial admin user created in InfluxDB. Must start with a letter and can't end with a hyphen or contain two consecutive hyphens. For example, my-user1. This username will allow you to access the InfluxDB UI to perform various administrative tasks and also use the InfluxDB CLI to create an operator token. These attributes will be stored in a Secret created in Amazon Secrets Manager in your account.</p>
    # @option params [String] :password
    #   <p>The password of the initial admin user created in InfluxDB. This password will allow
    #               you to access the InfluxDB UI to perform various administrative tasks and also use the
    #               InfluxDB CLI to create an operator token. These attributes will be stored in a Secret
    #               created in Secrets Manager in your account.</p>
    # @option params [String] :organization
    #   <p>The name of the initial organization for the initial admin user in InfluxDB. An InfluxDB organization is a workspace for a group of users.</p>
    # @option params [String] :bucket
    #   <p>The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket. A bucket combines the concept of a database and a retention period (the duration of time that each data point persists). A bucket belongs to an organization.</p>
    # @option params [String] :db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    # @option params [Array<String>] :vpc_subnet_ids
    #   <p>A list of VPC subnet IDs to associate with the DB instance. Provide at least two VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.</p>
    # @option params [Array<String>] :vpc_security_group_ids
    #   <p>A list of VPC security group IDs to associate with the DB instance.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Configures the DB instance with a public IP to facilitate access.</p>
    # @option params [String] :db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type to read and write InfluxDB data.</p>
    #            <p>You can choose between 3 different types of provisioned Influx IOPS included storage according to your workloads requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Influx IO Included 3000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx IO Included 12000 IOPS</p>
    #               </li>
    #               <li>
    #                  <p>Influx IO Included 16000 IOPS</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type in GiB (gibibytes).</p>
    # @option params [String] :db_parameter_group_identifier
    #   <p>The id of the DB parameter group to assign to your DB instance. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    # @option params [String] :deployment_type
    #   <p>Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability.</p>
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to a specified S3 bucket.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the DB instance.</p>
    # @option params [Integer] :port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    # @option params [String] :network_type
    #   <p>Specifies whether the networkType of the Timestream for InfluxDB instance is IPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate over both IPv4 and IPv6 protocols.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DbInstanceName", # required
    #     username: "Username",
    #     password: "Password", # required
    #     organization: "Organization",
    #     bucket: "Bucket",
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"], # required
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     vpc_security_group_ids: ["VpcSecurityGroupId"], # required
    #     publicly_accessible: false,
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1, # required
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     port: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"]
    #   }
    #   options = {}
    #   response = client.create_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbInstanceId", # required
    #     name: "DbInstanceName", # required
    #     arn: "Arn", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #     endpoint: "String",
    #     port: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1,
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     publicly_accessible: false,
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     availability_zone: "String",
    #     secondary_availability_zone: "String",
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     influx_auth_parameters_secret_arn: "String",
    #     db_cluster_id: "DbClusterId",
    #     instance_mode: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "REPLICA"]
    #   }
    # @return [Types::CreateDbInstanceOutput]
    def create_db_instance(params = {}, options = {})
      request = build_request(:create_db_instance, params)
      request.send_request(options)
    end

    # <p>Creates a new Timestream for InfluxDB DB parameter group to associate with DB instances.</p>
    # @param [Hash, Types::CreateDbParameterGroupInput] params
    # @option params [String] :name
    #   <p>The name of the DB parameter group. The name must be unique per customer and per region.</p>
    # @option params [String] :description
    #   <p>A description of the DB parameter group.</p>
    # @option params [Types::Parameters] :parameters
    #   <p>A list of the parameters that comprise the DB parameter group.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of key-value pairs to associate with the DB parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DbParameterGroupName", # required
    #     description: "String",
    #     parameters: {
    #       # One of:
    #       influx_d_bv2: {
    #         flux_log_enabled: false,
    #         log_level: "debug" # One of: ["debug", "info", "error"],
    #         no_tasks: false,
    #         query_concurrency: 1,
    #         query_queue_size: 1,
    #         tracing_type: "log" # One of: ["log", "jaeger"],
    #         metrics_disabled: false,
    #         http_idle_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_header_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_write_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         influxql_max_select_buckets: 1,
    #         influxql_max_select_point: 1,
    #         influxql_max_select_series: 1,
    #         pprof_disabled: false,
    #         query_initial_memory_bytes: 1,
    #         query_max_memory_bytes: 1,
    #         query_memory_bytes: 1,
    #         session_length: 1,
    #         session_renew_disabled: false,
    #         storage_cache_max_memory_size: 1,
    #         storage_cache_snapshot_memory_size: 1,
    #         storage_cache_snapshot_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_full_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_throughput_burst: 1,
    #         storage_max_concurrent_compactions: 1,
    #         storage_max_index_log_file_size: 1,
    #         storage_no_validate_field_size: false,
    #         storage_retention_check_interval: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_series_file_max_concurrent_snapshot_compactions: 1,
    #         storage_series_id_set_cache_size: 1,
    #         storage_wal_max_concurrent_writes: 1,
    #         storage_wal_max_write_delay: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         ui_disabled: false
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbParameterGroupId", # required
    #     name: "DbParameterGroupName", # required
    #     arn: "Arn", # required
    #     description: "String",
    #     parameters: {
    #       # One of:
    #       influx_d_bv2: {
    #         flux_log_enabled: false,
    #         log_level: "debug" # One of: ["debug", "info", "error"],
    #         no_tasks: false,
    #         query_concurrency: 1,
    #         query_queue_size: 1,
    #         tracing_type: "log" # One of: ["log", "jaeger"],
    #         metrics_disabled: false,
    #         http_idle_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_header_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_write_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         influxql_max_select_buckets: 1,
    #         influxql_max_select_point: 1,
    #         influxql_max_select_series: 1,
    #         pprof_disabled: false,
    #         query_initial_memory_bytes: 1,
    #         query_max_memory_bytes: 1,
    #         query_memory_bytes: 1,
    #         session_length: 1,
    #         session_renew_disabled: false,
    #         storage_cache_max_memory_size: 1,
    #         storage_cache_snapshot_memory_size: 1,
    #         storage_cache_snapshot_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_full_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_throughput_burst: 1,
    #         storage_max_concurrent_compactions: 1,
    #         storage_max_index_log_file_size: 1,
    #         storage_no_validate_field_size: false,
    #         storage_retention_check_interval: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_series_file_max_concurrent_snapshot_compactions: 1,
    #         storage_series_id_set_cache_size: 1,
    #         storage_wal_max_concurrent_writes: 1,
    #         storage_wal_max_write_delay: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         ui_disabled: false
    #       }
    #     }
    #   }
    # @return [Types::CreateDbParameterGroupOutput]
    def create_db_parameter_group(params = {}, options = {})
      request = build_request(:create_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes a Timestream for InfluxDB cluster.</p>
    # @param [Hash, Types::DeleteDbClusterInput] params
    # @option params [String] :db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_id: "DbClusterId", # required
    #   }
    #   options = {}
    #   response = client.delete_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED", "MAINTENANCE"]
    #   }
    # @return [Types::DeleteDbClusterOutput]
    def delete_db_cluster(params = {}, options = {})
      request = build_request(:delete_db_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a Timestream for InfluxDB DB instance.</p>
    # @param [Hash, Types::DeleteDbInstanceInput] params
    # @option params [String] :identifier
    #   <p>The id of the DB instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DbInstanceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbInstanceId", # required
    #     name: "DbInstanceName", # required
    #     arn: "Arn", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #     endpoint: "String",
    #     port: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1,
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     publicly_accessible: false,
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     availability_zone: "String",
    #     secondary_availability_zone: "String",
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     influx_auth_parameters_secret_arn: "String",
    #     db_cluster_id: "DbClusterId",
    #     instance_mode: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "REPLICA"]
    #   }
    # @return [Types::DeleteDbInstanceOutput]
    def delete_db_instance(params = {}, options = {})
      request = build_request(:delete_db_instance, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Timestream for InfluxDB cluster.</p>
    # @param [Hash, Types::GetDbClusterInput] params
    # @option params [String] :db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_id: "DbClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbClusterId", # required
    #     name: "DbClusterName", # required
    #     arn: "Arn", # required
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED", "MAINTENANCE"],
    #     endpoint: "String",
    #     reader_endpoint: "String",
    #     port: 1,
    #     deployment_type: "MULTI_NODE_READ_REPLICAS" # One of: ["MULTI_NODE_READ_REPLICAS"],
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1,
    #     publicly_accessible: false,
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     influx_auth_parameters_secret_arn: "String",
    #     vpc_subnet_ids: ["VpcSubnetId"],
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     failover_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "NO_FAILOVER"]
    #   }
    # @return [Types::GetDbClusterOutput]
    def get_db_cluster(params = {}, options = {})
      request = build_request(:get_db_cluster, params)
      request.send_request(options)
    end

    # <p>Returns a Timestream for InfluxDB DB instance.</p>
    # @param [Hash, Types::GetDbInstanceInput] params
    # @option params [String] :identifier
    #   <p>The id of the DB instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DbInstanceIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbInstanceId", # required
    #     name: "DbInstanceName", # required
    #     arn: "Arn", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #     endpoint: "String",
    #     port: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1,
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     publicly_accessible: false,
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     availability_zone: "String",
    #     secondary_availability_zone: "String",
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     influx_auth_parameters_secret_arn: "String",
    #     db_cluster_id: "DbClusterId",
    #     instance_mode: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "REPLICA"]
    #   }
    # @return [Types::GetDbInstanceOutput]
    def get_db_instance(params = {}, options = {})
      request = build_request(:get_db_instance, params)
      request.send_request(options)
    end

    # <p>Returns a Timestream for InfluxDB DB parameter group.</p>
    # @param [Hash, Types::GetDbParameterGroupInput] params
    # @option params [String] :identifier
    #   <p>The id of the DB parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DbParameterGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_db_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbParameterGroupId", # required
    #     name: "DbParameterGroupName", # required
    #     arn: "Arn", # required
    #     description: "String",
    #     parameters: {
    #       # One of:
    #       influx_d_bv2: {
    #         flux_log_enabled: false,
    #         log_level: "debug" # One of: ["debug", "info", "error"],
    #         no_tasks: false,
    #         query_concurrency: 1,
    #         query_queue_size: 1,
    #         tracing_type: "log" # One of: ["log", "jaeger"],
    #         metrics_disabled: false,
    #         http_idle_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_header_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_read_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         http_write_timeout: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         influxql_max_select_buckets: 1,
    #         influxql_max_select_point: 1,
    #         influxql_max_select_series: 1,
    #         pprof_disabled: false,
    #         query_initial_memory_bytes: 1,
    #         query_max_memory_bytes: 1,
    #         query_memory_bytes: 1,
    #         session_length: 1,
    #         session_renew_disabled: false,
    #         storage_cache_max_memory_size: 1,
    #         storage_cache_snapshot_memory_size: 1,
    #         storage_cache_snapshot_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_full_write_cold_duration: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_compact_throughput_burst: 1,
    #         storage_max_concurrent_compactions: 1,
    #         storage_max_index_log_file_size: 1,
    #         storage_no_validate_field_size: false,
    #         storage_retention_check_interval: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         storage_series_file_max_concurrent_snapshot_compactions: 1,
    #         storage_series_id_set_cache_size: 1,
    #         storage_wal_max_concurrent_writes: 1,
    #         storage_wal_max_write_delay: {
    #           duration_type: "hours" # One of: ["hours", "minutes", "seconds", "milliseconds"], # required
    #           value: 1, # required
    #         },
    #         ui_disabled: false
    #       }
    #     }
    #   }
    # @return [Types::GetDbParameterGroupOutput]
    def get_db_parameter_group(params = {}, options = {})
      request = build_request(:get_db_parameter_group, params)
      request.send_request(options)
    end

    # <p>Returns a list of Timestream for InfluxDB DB clusters.</p>
    # @param [Hash, Types::ListDbClustersInput] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_db_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DbClusterId", # required
    #         name: "DbClusterName", # required
    #         arn: "Arn", # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED", "MAINTENANCE"],
    #         endpoint: "String",
    #         reader_endpoint: "String",
    #         port: 1,
    #         deployment_type: "MULTI_NODE_READ_REPLICAS" # One of: ["MULTI_NODE_READ_REPLICAS"],
    #         db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #         db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #         allocated_storage: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDbClustersOutput]
    def list_db_clusters(params = {}, options = {})
      request = build_request(:list_db_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of Timestream for InfluxDB DB instances.</p>
    # @param [Hash, Types::ListDbInstancesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_db_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DbInstanceId", # required
    #         name: "DbInstanceName", # required
    #         arn: "Arn", # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #         endpoint: "String",
    #         port: 1,
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #         db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #         db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #         allocated_storage: 1,
    #         deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDbInstancesOutput]
    def list_db_instances(params = {}, options = {})
      request = build_request(:list_db_instances, params)
      request.send_request(options)
    end

    # <p>Returns a list of Timestream for InfluxDB clusters.</p>
    # @param [Hash, Types::ListDbInstancesForClusterInput] params
    # @option params [String] :db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster.</p>
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a nextToken is provided in the output. To resume pagination, provide the nextToken value as an argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_id: "DbClusterId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_db_instances_for_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DbInstanceId", # required
    #         name: "DbInstanceName", # required
    #         arn: "Arn", # required
    #         status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #         endpoint: "String",
    #         port: 1,
    #         network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #         db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #         db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #         allocated_storage: 1,
    #         deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #         instance_mode: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "REPLICA"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDbInstancesForClusterOutput]
    def list_db_instances_for_cluster(params = {}, options = {})
      request = build_request(:list_db_instances_for_cluster, params)
      request.send_request(options)
    end

    # <p>Returns a list of Timestream for InfluxDB DB parameter groups.</p>
    # @param [Hash, Types::ListDbParameterGroupsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_db_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         id: "DbParameterGroupId", # required
    #         name: "DbParameterGroupName", # required
    #         arn: "Arn", # required
    #         description: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDbParameterGroupsOutput]
    def list_db_parameter_groups(params = {}, options = {})
      request = build_request(:list_db_parameter_groups, params)
      request.send_request(options)
    end

    # <p>A list of tags applied to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Tags are composed of a Key/Value pairs. You can use tags to categorize and track your Timestream for InfluxDB resources.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags used to categorize and track resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the tag from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tagged resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys used to identify the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a Timestream for InfluxDB cluster.</p>
    # @param [Hash, Types::UpdateDbClusterInput] params
    # @option params [String] :db_cluster_id
    #   <p>Service-generated unique identifier of the DB cluster to update.</p>
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   <p>The log delivery configuration to apply to the DB cluster.</p>
    # @option params [String] :db_parameter_group_identifier
    #   <p>Update the DB cluster to use the specified DB parameter group.</p>
    # @option params [Integer] :port
    #   <p>Update the DB cluster to use the specified port.</p>
    # @option params [String] :db_instance_type
    #   <p>Update the DB cluster to use the specified DB instance Type.</p>
    # @option params [String] :failover_mode
    #   <p>Update the DB cluster's failover behavior.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_id: "DbClusterId", # required
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     port: 1,
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     failover_mode: "AUTOMATIC" # One of: ["AUTOMATIC", "NO_FAILOVER"]
    #   }
    #   options = {}
    #   response = client.update_db_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     db_cluster_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AVAILABLE", "FAILED", "DELETED", "MAINTENANCE"]
    #   }
    # @return [Types::UpdateDbClusterOutput]
    def update_db_cluster(params = {}, options = {})
      request = build_request(:update_db_cluster, params)
      request.send_request(options)
    end

    # <p>Updates a Timestream for InfluxDB DB instance.</p>
    # @param [Hash, Types::UpdateDbInstanceInput] params
    # @option params [String] :identifier
    #   <p>The id of the DB instance.</p>
    # @option params [Types::LogDeliveryConfiguration] :log_delivery_configuration
    #   <p>Configuration for sending InfluxDB engine logs to send to specified S3 bucket.</p>
    # @option params [String] :db_parameter_group_identifier
    #   <p>The id of the DB parameter group to assign to your DB instance. DB parameter groups specify how the database is configured. For example, DB parameter groups can specify the limit for query concurrency.</p>
    # @option params [Integer] :port
    #   <p>The port number on which InfluxDB accepts connections.</p>
    #            <p>If you change the Port value, your database restarts immediately.</p>
    #            <p>Valid Values: 1024-65535</p>
    #            <p>Default: 8086</p>
    #            <p>Constraints: The value can't be 2375-2376, 7788-7799, 8090, or 51678-51680</p>
    # @option params [String] :db_instance_type
    #   <p>The Timestream for InfluxDB DB instance type to run InfluxDB on.</p>
    # @option params [String] :deployment_type
    #   <p>Specifies whether the DB instance will be deployed as a standalone instance or with a Multi-AZ standby for high availability.</p>
    # @option params [String] :db_storage_type
    #   <p>The Timestream for InfluxDB DB storage type that InfluxDB stores data on.</p>
    # @option params [Integer] :allocated_storage
    #   <p>The amount of storage to allocate for your DB storage type (in gibibytes).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DbInstanceIdentifier", # required
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     port: 1,
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1
    #   }
    #   options = {}
    #   response = client.update_db_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DbInstanceId", # required
    #     name: "DbInstanceName", # required
    #     arn: "Arn", # required
    #     status: "CREATING" # One of: ["CREATING", "AVAILABLE", "DELETING", "MODIFYING", "UPDATING", "DELETED", "FAILED", "UPDATING_DEPLOYMENT_TYPE", "UPDATING_INSTANCE_TYPE", "MAINTENANCE"],
    #     endpoint: "String",
    #     port: 1,
    #     network_type: "IPV4" # One of: ["IPV4", "DUAL"],
    #     db_instance_type: "db.influx.medium" # One of: ["db.influx.medium", "db.influx.large", "db.influx.xlarge", "db.influx.2xlarge", "db.influx.4xlarge", "db.influx.8xlarge", "db.influx.12xlarge", "db.influx.16xlarge", "db.influx.24xlarge"],
    #     db_storage_type: "InfluxIOIncludedT1" # One of: ["InfluxIOIncludedT1", "InfluxIOIncludedT2", "InfluxIOIncludedT3"],
    #     allocated_storage: 1,
    #     deployment_type: "SINGLE_AZ" # One of: ["SINGLE_AZ", "WITH_MULTIAZ_STANDBY"],
    #     vpc_subnet_ids: ["VpcSubnetId"], # required
    #     publicly_accessible: false,
    #     vpc_security_group_ids: ["VpcSecurityGroupId"],
    #     db_parameter_group_identifier: "DbParameterGroupIdentifier",
    #     availability_zone: "String",
    #     secondary_availability_zone: "String",
    #     log_delivery_configuration: {
    #       s3_configuration: { # required
    #         bucket_name: "String", # required
    #         enabled: false, # required
    #       }
    #     },
    #     influx_auth_parameters_secret_arn: "String",
    #     db_cluster_id: "DbClusterId",
    #     instance_mode: "PRIMARY" # One of: ["PRIMARY", "STANDBY", "REPLICA"]
    #   }
    # @return [Types::UpdateDbInstanceOutput]
    def update_db_instance(params = {}, options = {})
      request = build_request(:update_db_instance, params)
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
      context[:gem_name] = 'aws-sdk-timestreaminfluxdb'
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
