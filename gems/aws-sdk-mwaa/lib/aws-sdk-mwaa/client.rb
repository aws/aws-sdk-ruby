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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mwaa)

module Aws::MWAA
  # An API client for Aws::MWAA.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonMWAA
    @identifier = :mwaa

    add_plugin(::Aws::MWAA::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MWAA::EndpointProvider)
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

    # <p>Creates a CLI token for the Airflow CLI. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html">Creating an Apache Airflow CLI token</a>.</p>
    # @param [Hash, Types::CreateCliTokenInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.create_cli_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cli_token: "Token",
    #     web_server_hostname: "Hostname"
    #   }
    # @return [Types::CreateCliTokenOutput]
    def create_cli_token(params = {}, options = {})
      request = build_request(:create_cli_token, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Managed Workflows for Apache Airflow (Amazon MWAA) environment.</p>
    # @param [Hash, Types::CreateEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for your environment. An execution role is an Amazon Web Services Identity and Access Management (IAM) role that grants MWAA permission to access Amazon Web Services services and resources used by your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    # @option params [String] :source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    # @option params [String] :dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    # @option params [String] :plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the <code>plugins.zip</code> version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    # @option params [String] :plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. You must specify a version each time a plugins.zip file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    # @option params [String] :requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    # @option params [String] :requirements_s3_object_version
    #   <p>The version of the <code>requirements.txt</code> file on your Amazon S3 bucket. You must specify a version each time a requirements.txt file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    # @option params [String] :startup_script_s3_path
    #   <p>The relative path to the startup shell script in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/startup.sh</code>.</p>
    #            <p>
    #               Amazon MWAA runs the script as your environment starts, and before running the Apache Airflow process.
    #               You can use this script to install dependencies, modify Apache Airflow configuration options, and set environment variables. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    # @option params [String] :startup_script_s3_object_version
    #   <p>The version of the startup shell script in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file
    #               every time you update the script.
    #           </p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    # @option params [Hash<String, String>] :airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    # @option params [String] :environment_class
    #   <p>The environment class type. Valid values: <code>mw1.micro</code>, <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>, <code>mw1.xlarge</code>, and <code>mw1.2xlarge</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    # @option params [Integer] :max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    # @option params [String] :kms_key
    #   <p>The Amazon Web Services Key Management Service (KMS) key to encrypt the data in your environment. You can use an Amazon Web Services owned CMK, or a Customer managed CMK (advanced). For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html">Create an Amazon MWAA environment</a>.</p>
    # @option params [String] :airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, it defaults to the latest version.
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html">Apache Airflow versions on Amazon Managed Workflows for Apache Airflow (Amazon MWAA)</a>.</p>
    #            <p>Valid values: <code>1.10.12</code>, <code>2.0.2</code>, <code>2.2.2</code>,
    #                   <code>2.4.3</code>, <code>2.5.1</code>, <code>2.6.3</code>, <code>2.7.2</code>,
    #               <code>2.8.1</code>, <code>2.9.2</code>, <code>2.10.1</code>, and <code>2.10.3</code>.</p>
    # @option params [Types::LoggingConfigurationInput] :logging_configuration
    #   <p>Defines the Apache Airflow logs to send to CloudWatch Logs.</p>
    # @option params [String] :weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @option params [String] :webserver_access_mode
    #   <p>Defines the access mode for the Apache Airflow <i>web server</i>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    # @option params [Integer] :min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    # @option params [Integer] :schedulers
    #   <p>The number of Apache Airflow schedulers to run in your environment. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>v2 - For environments larger than mw1.micro, accepts values from
    #                           <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all
    #                       environment sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>v1 - Accepts <code>1</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :endpoint_management
    #   <p>Defines whether the VPC endpoints configured for the environment are created, and managed, by the customer or by Amazon MWAA. If set to <code>SERVICE</code>, Amazon MWAA will create and manage the required VPC endpoints in
    #           your VPC. If set to <code>CUSTOMER</code>, you must create, and manage, the VPC endpoints for your VPC. If you choose to create an environment in a shared VPC, you must set this value to <code>CUSTOMER</code>.
    #           In a shared VPC deployment, the environment will remain in <code>PENDING</code> status until you create the VPC endpoints. If you do not take action to
    #               create the endpoints within 72 hours, the status will change to <code>CREATE_FAILED</code>. You can delete the failed environment and create a new one.</p>
    # @option params [Integer] :min_webservers
    #   <p>
    #               The minimum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. As the transaction-per-second rate, and the network load, decrease,
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    # @option params [Integer] :max_webservers
    #   <p>
    #               The maximum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. For example, in scenarios where your workload requires network calls to the Apache Airflow REST API with a high transaction-per-second (TPS)
    #               rate, Amazon MWAA will increase the number of web servers up to the number set in <code>MaxWebserers</code>. As TPS rates decrease
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     execution_role_arn: "IamRoleArn", # required
    #     source_bucket_arn: "S3BucketArn", # required
    #     dag_s3_path: "RelativePath", # required
    #     network_configuration: { # required
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"]
    #     },
    #     plugins_s3_path: "RelativePath",
    #     plugins_s3_object_version: "S3ObjectVersion",
    #     requirements_s3_path: "RelativePath",
    #     requirements_s3_object_version: "S3ObjectVersion",
    #     startup_script_s3_path: "RelativePath",
    #     startup_script_s3_object_version: "S3ObjectVersion",
    #     airflow_configuration_options: {
    #       "ConfigKey" => "ConfigValue"
    #     },
    #     environment_class: "EnvironmentClass",
    #     max_workers: 1,
    #     kms_key: "KmsKey",
    #     airflow_version: "AirflowVersion",
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       scheduler_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       webserver_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       worker_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       task_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       }
    #     },
    #     weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     webserver_access_mode: "WebserverAccessMode",
    #     min_workers: 1,
    #     schedulers: 1,
    #     endpoint_management: "EndpointManagement",
    #     min_webservers: 1,
    #     max_webservers: 1
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EnvironmentArn"
    #   }
    # @return [Types::CreateEnvironmentOperationOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Creates a web login token for the Airflow Web UI. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html">Creating an Apache Airflow web login token</a>.</p>
    # @param [Hash, Types::CreateWebLoginTokenInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.create_web_login_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_token: "Token",
    #     web_server_hostname: "Hostname",
    #     iam_identity: "IamIdentity",
    #     airflow_identity: "AirflowIdentity"
    #   }
    # @return [Types::CreateWebLoginTokenOutput]
    def create_web_login_token(params = {}, options = {})
      request = build_request(:create_web_login_token, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Managed Workflows for Apache Airflow (Amazon MWAA) environment.</p>
    # @param [Hash, Types::DeleteEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentOperationOutput]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    # @param [Hash, Types::GetEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment: {
    #       name: "EnvironmentName",
    #       status: "EnvironmentStatus",
    #       arn: "EnvironmentArn",
    #       created_at: Time.now,
    #       webserver_url: "WebserverUrl",
    #       execution_role_arn: "IamRoleArn",
    #       service_role_arn: "IamRoleArn",
    #       kms_key: "KmsKey",
    #       airflow_version: "AirflowVersion",
    #       source_bucket_arn: "S3BucketArn",
    #       dag_s3_path: "RelativePath",
    #       plugins_s3_path: "RelativePath",
    #       plugins_s3_object_version: "S3ObjectVersion",
    #       requirements_s3_path: "RelativePath",
    #       requirements_s3_object_version: "S3ObjectVersion",
    #       startup_script_s3_path: "String",
    #       startup_script_s3_object_version: "String",
    #       airflow_configuration_options: {
    #         "ConfigKey" => "ConfigValue"
    #       },
    #       environment_class: "EnvironmentClass",
    #       max_workers: 1,
    #       network_configuration: {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"]
    #       },
    #       logging_configuration: {
    #         dag_processing_logs: {
    #           enabled: false,
    #           log_level: "LoggingLevel",
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         scheduler_logs: {
    #           enabled: false,
    #           log_level: "LoggingLevel",
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         webserver_logs: {
    #           enabled: false,
    #           log_level: "LoggingLevel",
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         worker_logs: {
    #           enabled: false,
    #           log_level: "LoggingLevel",
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn"
    #         },
    #         task_logs: {
    #           enabled: false,
    #           log_level: "LoggingLevel",
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn"
    #         }
    #       },
    #       last_update: {
    #         status: "UpdateStatus",
    #         created_at: Time.now,
    #         error: {
    #           error_code: "ErrorCode",
    #           error_message: "ErrorMessage"
    #         },
    #         source: "UpdateSource",
    #         worker_replacement_strategy: "WorkerReplacementStrategy"
    #       },
    #       weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       webserver_access_mode: "WebserverAccessMode",
    #       min_workers: 1,
    #       schedulers: 1,
    #       webserver_vpc_endpoint_service: "VpcEndpointServiceName",
    #       database_vpc_endpoint_service: "VpcEndpointServiceName",
    #       celery_executor_queue: "CeleryExecutorQueue",
    #       endpoint_management: "EndpointManagement",
    #       min_webservers: 1,
    #       max_webservers: 1
    #     }
    #   }
    # @return [Types::GetEnvironmentOperationOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Invokes the Apache Airflow REST API on the webserver with the specified inputs. To
    #             learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-mwaa-apache-airflow-rest-api.html">Using the Apache Airflow REST API</a>
    #          </p>
    # @param [Hash, Types::InvokeRestApiRequest] params
    # @option params [String] :name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @option params [String] :path
    #   <p>The Apache Airflow REST API endpoint path to be called. For example,
    #               <code>/dags/123456/clearTaskInstances</code>. For more information, see <a href="https://airflow.apache.org/docs/apache-airflow/stable/stable-rest-api-ref.html">Apache Airflow API</a>
    #            </p>
    # @option params [String] :method
    #   <p>The HTTP method used for making Airflow REST API calls. For example,
    #               <code>POST</code>. </p>
    # @option params [JSON] :query_parameters
    #   <p>Query parameters to be included in the Apache Airflow REST API call, provided as a
    #               JSON object. </p>
    # @option params [JSON] :body
    #   <p>The request body for the Apache Airflow REST API call, provided as a JSON
    #               object.</p>
    # @example Listing Airflow variables.
    #   # Example operation for invoke_rest_api
    #   params = {
    #     name: "MyEnvironment",
    #     path: "/variables",
    #     method: "GET"
    #   }
    #   options = {}
    #   response = client.invoke_rest_api(params, options)
    #   response.to_h #=>
    #   {
    #     rest_api_status_code: 200,
    #     rest_api_response: {
    #     "total_entries" => 1,
    #     "variables" => [{
    #       "description" => Example variable,
    #       "key" => test-variable,
    #       "value" => 123
    #     }]
    #   }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     path: "RestApiPath", # required
    #     method: "RestApiMethod", # required
    #     query_parameters: ""null"",
    #     body: ""null""
    #   }
    #   options = {}
    #   response = client.invoke_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rest_api_status_code: 1,
    #     rest_api_response: ""null""
    #   }
    # @return [Types::InvokeRestApiResponse]
    def invoke_rest_api(params = {}, options = {})
      request = build_request(:invoke_rest_api, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.</p>
    # @param [Hash, Types::ListEnvironmentsOperationInput] params
    # @option params [String] :next_token
    #   <p>Retrieves the next page of the results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to retrieve per page. For example, <code>5</code> environments per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: ["EnvironmentName"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentsOperationOutput]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, <code>"Environment": "Staging"</code>. </p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
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
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #             <b>Internal only</b>. Publishes environment health metrics to Amazon CloudWatch.</p>
    # @param [Hash, Types::PublishMetricsOperationInput] params
    # @option params [String] :environment_name
    #   <p>
    #               <b>Internal only</b>. The name of the environment.</p>
    # @option params [Array<Types::MetricDatum>] :metric_data
    #   <p>
    #               <b>Internal only</b>. Publishes metrics to Amazon CloudWatch. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_name: "EnvironmentName", # required
    #     metric_data: [ # required
    #       {
    #         metric_name: "String", # required
    #         timestamp: Time.now, # required
    #         dimensions: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           }
    #         ],
    #         value: 1.0,
    #         unit: "Unit",
    #         statistic_values: {
    #           sample_count: 1,
    #           sum: 1.0,
    #           minimum: 1.0,
    #           maximum: 1.0
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.publish_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @deprecated
    #   This API is for internal use and not meant for public use, and is no longer available.
    # @return [Types::PublishMetricsOperationOutput]
    def publish_metrics(params = {}, options = {})
      request = build_request(:publish_metrics, params)
      request.send_request(options)
    end

    # <p>Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. </p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, <code>"Environment": "Staging"</code>.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key-value tag pair you want to remove. For example, <code>"Environment": "Staging"</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EnvironmentArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    # @param [Hash, Types::UpdateEnvironmentOperationInput] params
    # @option params [String] :name
    #   <p>The name of your Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    # @option params [Hash<String, String>] :airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    # @option params [String] :airflow_version
    #   <p>The Apache Airflow version for your environment. To upgrade your environment, specify a newer version of Apache Airflow supported by Amazon MWAA.</p>
    #            <p>Before you upgrade an environment, make sure your requirements, DAGs, plugins, and other resources used in your workflows are compatible with the new Apache Airflow version. For more information about updating
    #               your resources, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/upgrading-environment.html">Upgrading an Amazon MWAA environment</a>.</p>
    #            <p>Valid values: <code>1.10.12</code>, <code>2.0.2</code>, <code>2.2.2</code>,
    #                   <code>2.4.3</code>, <code>2.5.1</code>, <code>2.6.3</code>, <code>2.7.2</code>,
    #               <code>2.8.1</code>, <code>2.9.2</code>, <code>2.10.1</code>, and <code>2.10.3</code>.</p>
    # @option params [String] :dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    # @option params [String] :environment_class
    #   <p>The environment class type. Valid values: <code>mw1.micro</code>,
    #                   <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>,
    #                   <code>mw1.xlarge</code>, and <code>mw1.2xlarge</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>. </p>
    # @option params [Types::LoggingConfigurationInput] :logging_configuration
    #   <p>The Apache Airflow log types to send to CloudWatch Logs.</p>
    # @option params [Integer] :max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    # @option params [Integer] :min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    # @option params [Integer] :max_webservers
    #   <p>
    #               The maximum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. For example, in scenarios where your workload requires network calls to the Apache Airflow REST API with a high transaction-per-second (TPS)
    #               rate, Amazon MWAA will increase the number of web servers up to the number set in <code>MaxWebserers</code>. As TPS rates decrease
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    # @option params [Integer] :min_webservers
    #   <p>
    #               The minimum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. As the transaction-per-second rate, and the network load, decrease,
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    # @option params [String] :worker_replacement_strategy
    #   <p>The worker replacement strategy to use when updating the environment.</p>
    #            <p>You can select one of the following strategies:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Forced -</b> Stops and replaces Apache Airflow workers without waiting for tasks to 
    #                       complete before an update.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Graceful -</b> Allows Apache Airflow workers to complete running tasks for up to 12 hours during an update before 
    #                       they're stopped and replaced.</p>
    #               </li>
    #            </ul>
    # @option params [Types::UpdateNetworkConfigurationInput] :network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    # @option params [String] :plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    # @option params [String] :plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. You must specify a version each time a <code>plugins.zip</code> file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    # @option params [String] :requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    # @option params [String] :requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. You must specify a version each time a <code>requirements.txt</code> file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    # @option params [Integer] :schedulers
    #   <p>The number of Apache Airflow schedulers to run in your Amazon MWAA environment.</p>
    # @option params [String] :source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    # @option params [String] :startup_script_s3_path
    #   <p>The relative path to the startup shell script in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/startup.sh</code>.</p>
    #            <p>
    #               Amazon MWAA runs the script as your environment starts, and before running the Apache Airflow process.
    #               You can use this script to install dependencies, modify Apache Airflow configuration options, and set environment variables. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    # @option params [String] :startup_script_s3_object_version
    #   <p>
    #               The version of the startup shell script in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file
    #               every time you update the script.
    #           </p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    # @option params [String] :webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    # @option params [String] :weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     execution_role_arn: "IamRoleArn",
    #     airflow_configuration_options: {
    #       "ConfigKey" => "ConfigValue"
    #     },
    #     airflow_version: "AirflowVersion",
    #     dag_s3_path: "RelativePath",
    #     environment_class: "EnvironmentClass",
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       scheduler_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       webserver_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       worker_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       },
    #       task_logs: {
    #         enabled: false, # required
    #         log_level: "LoggingLevel", # required
    #       }
    #     },
    #     max_workers: 1,
    #     min_workers: 1,
    #     max_webservers: 1,
    #     min_webservers: 1,
    #     worker_replacement_strategy: "WorkerReplacementStrategy",
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     plugins_s3_path: "RelativePath",
    #     plugins_s3_object_version: "S3ObjectVersion",
    #     requirements_s3_path: "RelativePath",
    #     requirements_s3_object_version: "S3ObjectVersion",
    #     schedulers: 1,
    #     source_bucket_arn: "S3BucketArn",
    #     startup_script_s3_path: "RelativePath",
    #     startup_script_s3_object_version: "S3ObjectVersion",
    #     webserver_access_mode: "WebserverAccessMode",
    #     weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart"
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "EnvironmentArn"
    #   }
    # @return [Types::UpdateEnvironmentOperationOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
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
      context[:gem_name] = 'aws-sdk-mwaa'
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
