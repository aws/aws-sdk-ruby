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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:appconfig)

module Aws::AppConfig
  # An API client for Aws::AppConfig.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonAppConfig
    @identifier = :appconfig

    add_plugin(::Aws::AppConfig::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppConfig::EndpointProvider)
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

    # <p>Creates an application. In AppConfig, an application is simply an
    #          organizational construct like a folder. This organizational construct has a relationship
    #          with some unit of executable code. For example, you could create an application called
    #          MyMobileApp to organize and manage configuration data for a mobile application installed by
    #          your users.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :name
    #   <p>A name for the application.</p>
    # @option params [String] :description
    #   <p>A description of the application.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the application. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    # @example To create an application
    #   # The following create-application example creates an application in AWS AppConfig.
    #   params = {
    #     name: "example-application",
    #     description: "An application used for creating an example."
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    #   response.to_h #=>
    #   {
    #     id: "339ohji",
    #     name: "example-application",
    #     description: "An application used for creating an example."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description"
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a configuration profile, which is information that enables AppConfig
    #          to access the configuration source. Valid configuration sources include the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>Configuration data in YAML, JSON, and other formats stored in the AppConfig hosted configuration store</p>
    #             </li>
    #             <li>
    #                <p>Configuration data stored as objects in an Amazon Simple Storage Service (Amazon S3)
    #                bucket</p>
    #             </li>
    #             <li>
    #                <p>Pipelines stored in CodePipeline</p>
    #             </li>
    #             <li>
    #                <p>Secrets stored in Secrets Manager</p>
    #             </li>
    #             <li>
    #                <p>Standard and secure string parameters stored in Amazon Web Services Systems Manager Parameter Store</p>
    #             </li>
    #             <li>
    #                <p>Configuration data in SSM documents stored in the Systems Manager document store</p>
    #             </li>
    #          </ul>
    #          <p>A configuration profile includes the following information:</p>
    #          <ul>
    #             <li>
    #                <p>The URI location of the configuration data.</p>
    #             </li>
    #             <li>
    #                <p>The Identity and Access Management (IAM) role that provides access to the configuration data.</p>
    #             </li>
    #             <li>
    #                <p>A validator for the configuration data. Available validators include either a JSON
    #                Schema or an Amazon Web Services Lambda function.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html">Create a
    #             Configuration and a Configuration Profile</a> in the <i>AppConfig
    #             User Guide</i>.</p>
    # @param [Hash, Types::CreateConfigurationProfileRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :name
    #   <p>A name for the configuration profile.</p>
    # @option params [String] :description
    #   <p>A description of the configuration profile.</p>
    # @option params [String] :location_uri
    #   <p>A URI to locate the configuration. You can specify the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For the AppConfig hosted configuration store and for feature flags,
    #                  specify <code>hosted</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services Systems Manager Parameter Store parameter, specify either the parameter name in
    #                  the format <code>ssm-parameter://<parameter name></code> or the ARN.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon Web Services
    #                  CodePipeline pipeline, specify the URI in the following format:
    #                     <code>codepipeline</code>://<pipeline name>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Secrets Manager secret, specify the URI in the following format:
    #                     <code>secretsmanager</code>://<secret name>.</p>
    #               </li>
    #               <li>
    #                  <p>For an Amazon S3 object, specify the URI in the following format:
    #                     <code>s3://<bucket>/<objectKey> </code>. Here is an example:
    #                        <code>s3://amzn-s3-demo-bucket/my-app/us-east-1/my-config.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For an SSM document, specify either the document name in the format
    #                     <code>ssm-document://<document name></code> or the Amazon Resource Name
    #                  (ARN).</p>
    #               </li>
    #            </ul>
    # @option params [String] :retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that
    #               store your configuration. </p>
    #            </important>
    # @option params [Array<Types::Validator>] :validators
    #   <p>A list of methods for validating the configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the configuration profile. Tags help organize and categorize your
    #               AppConfig resources. Each tag consists of a key and an optional value, both of
    #            which you define.</p>
    # @option params [String] :type
    #   <p>The type of configurations contained in the profile. AppConfig supports
    #               <code>feature flags</code> and <code>freeform</code> configurations. We recommend you
    #            create feature flag configurations to enable or disable new features and freeform
    #            configurations to distribute configurations to an application. When calling this API, enter
    #            one of the following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier for an Key Management Service key to encrypt new configuration data
    #            versions in the AppConfig hosted configuration store. This attribute is only used
    #            for <code>hosted</code> configuration types. The identifier can be an KMS
    #            key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data
    #            managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>
    # @example To create a configuration profile
    #   # The following create-configuration-profile example creates a configuration profile using a configuration stored in Parameter Store, a capability of Systems Manager.
    #   params = {
    #     application_id: "339ohji",
    #     name: "Example-Configuration-Profile",
    #     location_uri: "ssm-parameter://Example-Parameter",
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role"
    #   }
    #   options = {}
    #   response = client.create_configuration_profile(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "ur8hx2f",
    #     name: "Example-Configuration-Profile",
    #     location_uri: "ssm-parameter://Example-Parameter",
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     name: "LongName", # required
    #     description: "Description",
    #     location_uri: "Uri", # required
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"], # required
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     type: "ConfigurationProfileType",
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.create_configuration_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "LongName",
    #     description: "Description",
    #     location_uri: "Uri",
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"], # required
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #     ],
    #     type: "ConfigurationProfileType",
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    # @return [Types::CreateConfigurationProfileOutput]
    def create_configuration_profile(params = {}, options = {})
      request = build_request(:create_configuration_profile, params)
      request.send_request(options)
    end

    # <p>Creates a deployment strategy that defines important criteria for rolling out your
    #          configuration to the designated targets. A deployment strategy includes the overall
    #          duration required, a percentage of targets to receive the deployment during each interval,
    #          an algorithm that defines how percentage grows, and bake time.</p>
    # @param [Hash, Types::CreateDeploymentStrategyRequest] params
    # @option params [String] :name
    #   <p>A name for the deployment strategy.</p>
    # @option params [String] :description
    #   <p>A description of the deployment strategy.</p>
    # @option params [Integer] :deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    # @option params [Integer] :final_bake_time_in_minutes
    #   <p>Specifies the amount of time AppConfig monitors for Amazon CloudWatch alarms after the
    #            configuration has been deployed to 100% of its targets, before considering the deployment
    #            to be complete. If an alarm is triggered during this time, AppConfig rolls back
    #            the deployment. You must configure permissions for AppConfig to roll back based
    #            on CloudWatch alarms. For more information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/getting-started-with-appconfig-cloudwatch-alarms-permissions.html">Configuring permissions for rollback based on Amazon CloudWatch alarms</a> in the
    #               <i>AppConfig User Guide</i>.</p>
    # @option params [Float] :growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    # @option params [String] :growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig
    #            supports the following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes
    #            the deployment by dividing the total number of targets by the value specified for
    #               <code>Step percentage</code>. For example, a linear deployment that uses a <code>Step
    #               percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After
    #            those deployments are complete, the system deploys the configuration to the next 10
    #            percent. This continues until 100% of the targets have successfully received the
    #            configuration.</p>
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig
    #            processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.
    #            In this formula, <code>G</code> is the growth factor specified by the user and
    #               <code>N</code> is the number of steps until the configuration is deployed to all
    #            targets. For example, if you specify a growth factor of 2, then the system rolls out the
    #            configuration as follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    # @option params [String] :replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the deployment strategy. Tags help organize and categorize your
    #               AppConfig resources. Each tag consists of a key and an optional value, both of
    #            which you define.</p>
    # @example To create a deployment strategy
    #   # The following create-deployment-strategy example creates a deployment strategy called Example-Deployment that takes 15 minutes and deploys the configuration to 25% of the application at a time. The strategy is also copied to an SSM Document.
    #   params = {
    #     name: "Example-Deployment",
    #     deployment_duration_in_minutes: 15,
    #     growth_factor: 25,
    #     replicate_to: SSM_DOCUMENT
    #   }
    #   options = {}
    #   response = client.create_deployment_strategy(params, options)
    #   response.to_h #=>
    #   {
    #     id: "1225qzk",
    #     name: "Example-Deployment",
    #     deployment_duration_in_minutes: 15,
    #     growth_type: LINEAR,
    #     growth_factor: 25,
    #     final_bake_time_in_minutes: 0,
    #     replicate_to: SSM_DOCUMENT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Description",
    #     deployment_duration_in_minutes: 1, # required
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0, # required
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     replicate_to: "NONE" # One of: ["NONE", "SSM_DOCUMENT"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_deployment_strategy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     replicate_to: "NONE" # One of: ["NONE", "SSM_DOCUMENT"]
    #   }
    # @return [Types::CreateDeploymentStrategyOutput]
    def create_deployment_strategy(params = {}, options = {})
      request = build_request(:create_deployment_strategy, params)
      request.send_request(options)
    end

    # <p>Creates an environment. For each application, you define one or more environments. An
    #          environment is a deployment group of AppConfig targets, such as applications in a
    #             <code>Beta</code> or <code>Production</code> environment. You can also define
    #          environments for application subcomponents such as the <code>Web</code>,
    #             <code>Mobile</code> and <code>Back-end</code> components for your application. You can
    #          configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a
    #          configuration deployment. If an alarm is triggered, the system rolls back the
    #          configuration.</p>
    # @param [Hash, Types::CreateEnvironmentRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :name
    #   <p>A name for the environment.</p>
    # @option params [String] :description
    #   <p>A description of the environment.</p>
    # @option params [Array<Types::Monitor>] :monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    # @example To create an environment
    #   # The following create-environment example creates an AWS AppConfig environment named Example-Environment using the application you created using create-application
    #   params = {
    #     application_id: "339ohji",
    #     name: "Example-Environment"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "54j1r29",
    #     name: "Example-Environment",
    #     state: READY_FOR_DEPLOYMENT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     name: "Name", # required
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn"
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     state: "READY_FOR_DEPLOYMENT" # One of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::CreateEnvironmentOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Creates an AppConfig extension. An extension augments your ability to inject
    #          logic or behavior at different points during the AppConfig workflow of creating
    #          or deploying a configuration.</p>
    #          <p>You can create your own extensions or use the Amazon Web Services authored extensions provided by
    #             AppConfig. For an AppConfig extension that uses Lambda, you must create a Lambda function to perform any computation and processing
    #          defined in the extension. If you plan to create custom versions of the Amazon Web Services
    #          authored notification extensions, you only need to specify an Amazon Resource Name (ARN) in
    #          the <code>Uri</code> field for the new extension version.</p>
    #          <ul>
    #             <li>
    #                <p>For a custom EventBridge notification extension, enter the ARN of the EventBridge
    #                default events in the <code>Uri</code> field.</p>
    #             </li>
    #             <li>
    #                <p>For a custom Amazon SNS notification extension, enter the ARN of an Amazon SNS
    #                topic in the <code>Uri</code> field.</p>
    #             </li>
    #             <li>
    #                <p>For a custom Amazon SQS notification extension, enter the ARN of an Amazon SQS
    #                message queue in the <code>Uri</code> field. </p>
    #             </li>
    #          </ul>
    #          <p>For more information about extensions, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::CreateExtensionRequest] params
    # @option params [String] :name
    #   <p>A name for the extension. Each extension name in your account must be unique. Extension
    #            versions use the same name.</p>
    # @option params [String] :description
    #   <p>Information about the extension.</p>
    # @option params [Hash<String, Array<Types::Action>>] :actions
    #   <p>The actions defined in the extension.</p>
    # @option params [Hash<String, Types::Parameter>] :parameters
    #   <p>The parameters accepted by the extension. You specify parameter values when you
    #            associate the extension to an AppConfig resource by using the
    #               <code>CreateExtensionAssociation</code> API action. For Lambda extension
    #            actions, these parameters are included in the Lambda request object.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds one or more tags for the specified extension. Tags are metadata that help you
    #            categorize resources in different ways, for example, by purpose, owner, or environment.
    #            Each tag consists of a key and an optional value, both of which you define. </p>
    # @option params [Integer] :latest_version_number
    #   <p>You can omit this field when you create an extension. When you create a new version,
    #            specify the most recent current version number. For example, you create version 3, enter 2
    #            for this field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ExtensionOrParameterName", # required
    #     description: "Description",
    #     actions: { # required
    #       "ActionPoint" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn"
    #         }
    #       ]
    #     },
    #     parameters: {
    #       "ExtensionOrParameterName" => {
    #         description: "Description",
    #         required: false,
    #         dynamic: false
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     latest_version_number: 1
    #   }
    #   options = {}
    #   response = client.create_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     version_number: 1,
    #     arn: "Arn",
    #     description: "Description",
    #     actions: {
    #       "ActionPoint" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn"
    #         }
    #       ]
    #     },
    #     parameters: {
    #       "ExtensionOrParameterName" => {
    #         description: "Description",
    #         required: false,
    #         dynamic: false
    #       }
    #     }
    #   }
    # @return [Types::CreateExtensionOutput]
    def create_extension(params = {}, options = {})
      request = build_request(:create_extension, params)
      request.send_request(options)
    end

    # <p>When you create an extension or configure an Amazon Web Services authored extension, you
    #          associate the extension with an AppConfig application, environment, or
    #          configuration profile. For example, you can choose to run the <code>AppConfig
    #             deployment events to Amazon SNS</code>
    #          Amazon Web Services authored extension and receive notifications on an Amazon SNS
    #          topic anytime a configuration deployment is started for a specific application. Defining
    #          which extension to associate with an AppConfig resource is called an
    #             <i>extension association</i>. An extension association is a specified
    #          relationship between an extension and an AppConfig resource, such as an
    #          application or a configuration profile. For more information about extensions and
    #          associations, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::CreateExtensionAssociationRequest] params
    # @option params [String] :extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    # @option params [Integer] :extension_version_number
    #   <p>The version number of the extension. If not specified, AppConfig uses the
    #            maximum version of the extension.</p>
    # @option params [String] :resource_identifier
    #   <p>The ARN of an application, configuration profile, or environment.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>The parameter names and values defined in the extensions. Extension parameters marked
    #               <code>Required</code> must be entered for this field.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Adds one or more tags for the specified extension association. Tags are metadata that
    #            help you categorize resources in different ways, for example, by purpose, owner, or
    #            environment. Each tag consists of a key and an optional value, both of which you define.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_identifier: "Identifier", # required
    #     extension_version_number: 1,
    #     resource_identifier: "Identifier", # required
    #     parameters: {
    #       "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_extension_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Identifier",
    #     extension_arn: "Arn",
    #     resource_arn: "Arn",
    #     arn: "Arn",
    #     parameters: {
    #       "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #     },
    #     extension_version_number: 1
    #   }
    # @return [Types::CreateExtensionAssociationOutput]
    def create_extension_association(params = {}, options = {})
      request = build_request(:create_extension_association, params)
      request.send_request(options)
    end

    # <p>Creates a new configuration in the AppConfig hosted configuration store. If
    #          you're creating a feature flag, we recommend you familiarize yourself with the JSON schema
    #          for feature flag data. For more information, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile-feature-flags.html#appconfig-type-reference-feature-flags">Type reference for AWS.AppConfig.FeatureFlags</a> in the
    #             <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::CreateHostedConfigurationVersionRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [String] :description
    #   <p>A description of the configuration.</p>
    # @option params [String] :content
    #   <p>The configuration data, as bytes.</p>
    #            <note>
    #               <p>AppConfig accepts any type of data, including text formats like JSON or
    #               TOML, or binary formats like protocol buffers or compressed data.</p>
    #            </note>
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    # @option params [Integer] :latest_version_number
    #   <p>An optional locking token used to prevent race conditions from overwriting configuration
    #            updates when creating a new version. To ensure your data is not overwritten when creating
    #            multiple hosted configuration versions in rapid succession, specify the version number of
    #            the latest hosted configuration version.</p>
    # @option params [String] :version_label
    #   <p>An optional, user-defined label for the AppConfig hosted configuration
    #            version. This value must contain at least one non-numeric character. For example,
    #            "v2.2.0".</p>
    # @example To create a hosted configuration version
    #   # The following create-hosted-configuration-version example creates a new configuration in the AWS AppConfig configuration store.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     content: "eyAiTmFtZSI6ICJFeGFtcGxlQXBwbGljYXRpb24iLCAiSWQiOiBFeGFtcGxlSUQsICJSYW5rIjogNyB9",
    #     content_type: "text",
    #     latest_version_number: 1
    #   }
    #   options = {}
    #   response = client.create_hosted_configuration_version(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     version_number: 1,
    #     content_type: "text"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     description: "Description",
    #     content: "data", # required
    #     content_type: "StringWithLengthBetween1And255", # required
    #     latest_version_number: 1,
    #     version_label: "VersionLabel"
    #   }
    #   options = {}
    #   response = client.create_hosted_configuration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     configuration_profile_id: "Id",
    #     version_number: 1,
    #     description: "Description",
    #     content: "data",
    #     content_type: "StringWithLengthBetween1And255",
    #     version_label: "VersionLabel",
    #     kms_key_arn: "Arn"
    #   }
    # @return [Types::CreateHostedConfigurationVersionOutput]
    def create_hosted_configuration_version(params = {}, options = {})
      request = build_request(:create_hosted_configuration_version, params)
      request.send_request(options)
    end

    # <p>Deletes an application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application to delete.</p>
    # @example To delete an application
    #   # The following delete-application example deletes the specified application. 
    #   params = {
    #     application_id: "339ohji"
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes a configuration profile.</p>
    #          <p>To prevent users from unintentionally deleting actively-used configuration profiles,
    #          enable <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html">deletion
    #          protection</a>.</p>
    # @param [Hash, Types::DeleteConfigurationProfileRequest] params
    # @option params [String] :application_id
    #   <p>The application ID that includes the configuration profile you want to delete.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile you want to delete.</p>
    # @option params [String] :deletion_protection_check
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile if your application has called either <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile during the specified interval. </p>
    #            <p>This parameter supports the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BYPASS</code>: Instructs AppConfig to bypass the deletion
    #                  protection check and delete a configuration profile even if deletion protection would
    #                  have otherwise prevented it.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPLY</code>: Instructs the deletion protection check to run, even if
    #                  deletion protection is disabled at the account level. <code>APPLY</code> also forces
    #                  the deletion protection check to run against resources created in the past hour,
    #                  which are normally excluded from deletion protection checks. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the
    #                     <code>UpdateAccountSettings</code> API.</p>
    #               </li>
    #            </ul>
    # @example To delete a configuration profile
    #   # The following delete-configuration-profile example deletes the specified configuration profile.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f"
    #   }
    #   options = {}
    #   response = client.delete_configuration_profile(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     deletion_protection_check: "ACCOUNT_DEFAULT" # One of: ["ACCOUNT_DEFAULT", "APPLY", "BYPASS"]
    #   }
    #   options = {}
    #   response = client.delete_configuration_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configuration_profile(params = {}, options = {})
      request = build_request(:delete_configuration_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a deployment strategy.</p>
    # @param [Hash, Types::DeleteDeploymentStrategyRequest] params
    # @option params [String] :deployment_strategy_id
    #   <p>The ID of the deployment strategy you want to delete.</p>
    # @example To delete a deployment strategy
    #   # The following delete-deployment-strategy example deletes the specified deployment strategy.
    #   params = {
    #     deployment_strategy_id: "1225qzk"
    #   }
    #   options = {}
    #   response = client.delete_deployment_strategy(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment_strategy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_deployment_strategy(params = {}, options = {})
      request = build_request(:delete_deployment_strategy, params)
      request.send_request(options)
    end

    # <p>Deletes an environment.</p>
    #          <p>To prevent users from unintentionally deleting actively-used environments, enable <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html">deletion
    #             protection</a>.</p>
    # @param [Hash, Types::DeleteEnvironmentRequest] params
    # @option params [String] :environment_id
    #   <p>The ID of the environment that you want to delete.</p>
    # @option params [String] :application_id
    #   <p>The application ID that includes the environment that you want to delete.</p>
    # @option params [String] :deletion_protection_check
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting an environment if your application called either <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  in the
    #            environment during the specified interval. </p>
    #            <p>This parameter supports the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BYPASS</code>: Instructs AppConfig to bypass the deletion
    #                  protection check and delete a configuration profile even if deletion protection would
    #                  have otherwise prevented it. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APPLY</code>: Instructs the deletion protection check to run, even if
    #                  deletion protection is disabled at the account level. <code>APPLY</code> also forces
    #                  the deletion protection check to run against resources created in the past hour,
    #                  which are normally excluded from deletion protection checks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT_DEFAULT</code>: The default setting, which instructs AppConfig to implement the deletion protection value specified in the
    #                     <code>UpdateAccountSettings</code> API.</p>
    #               </li>
    #            </ul>
    # @example To delete an environment
    #   # The following delete-environment example deletes the specified application environment.
    #   params = {
    #     application_id: "339ohji",
    #     environment_id: "54j1r29"
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "Id", # required
    #     application_id: "Id", # required
    #     deletion_protection_check: "ACCOUNT_DEFAULT" # One of: ["ACCOUNT_DEFAULT", "APPLY", "BYPASS"]
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes an AppConfig extension. You must delete all associations to an
    #          extension before you delete the extension.</p>
    # @param [Hash, Types::DeleteExtensionRequest] params
    # @option params [String] :extension_identifier
    #   <p>The name, ID, or Amazon Resource Name (ARN) of the extension you want to delete.</p>
    # @option params [Integer] :version_number
    #   <p>A specific version of an extension to delete. If omitted, the highest version is
    #            deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_identifier: "Identifier", # required
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.delete_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_extension(params = {}, options = {})
      request = build_request(:delete_extension, params)
      request.send_request(options)
    end

    # <p>Deletes an extension association. This action doesn't delete extensions defined in the
    #          association.</p>
    # @param [Hash, Types::DeleteExtensionAssociationRequest] params
    # @option params [String] :extension_association_id
    #   <p>The ID of the extension association to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_association_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_extension_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_extension_association(params = {}, options = {})
      request = build_request(:delete_extension_association, params)
      request.send_request(options)
    end

    # <p>Deletes a version of a configuration from the AppConfig hosted configuration
    #          store.</p>
    # @param [Hash, Types::DeleteHostedConfigurationVersionRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [Integer] :version_number
    #   <p>The versions number to delete.</p>
    # @example To delete a hosted configuration version
    #   # The following delete-hosted-configuration-version example deletes a configuration version hosted in the AWS AppConfig configuration store.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.delete_hosted_configuration_version(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_hosted_configuration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_hosted_configuration_version(params = {}, options = {})
      request = build_request(:delete_hosted_configuration_version, params)
      request.send_request(options)
    end

    # <p>Returns information about the status of the <code>DeletionProtection</code>
    #          parameter.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_protection: {
    #       enabled: false,
    #       protection_period_in_minutes: 1
    #     }
    #   }
    # @return [Types::GetAccountSettingsOutput]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an application.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application you want to get.</p>
    # @example To list details of an application
    #   # The following get-application example lists the details of the specified application.
    #   params = {
    #     application_id: "339ohji"
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    #   response.to_h #=>
    #   {
    #     id: "339ohji",
    #     name: "example-application"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description"
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>(Deprecated) Retrieves the latest deployed configuration.</p>
    #          <important>
    #             <p>Note the following important information.</p>
    #             <ul>
    #                <li>
    #                   <p>This API action is deprecated. Calls to receive configuration data should use
    #                   the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html">StartConfigurationSession</a> and <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> APIs instead. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a>GetConfiguration</a> is a priced call. For more information, see
    #                      <a href="https://aws.amazon.com/systems-manager/pricing/">Pricing</a>.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::GetConfigurationRequest] params
    # @option params [String] :application
    #   <p>The application to get. Specify either the application name or the application
    #            ID.</p>
    # @option params [String] :environment
    #   <p>The environment to get. Specify either the environment name or the environment
    #            ID.</p>
    # @option params [String] :configuration
    #   <p>The configuration to get. Specify either the configuration name or the configuration
    #            ID.</p>
    # @option params [String] :client_id
    #   <p>The clientId parameter in the following command is a unique, user-specified ID to
    #            identify the client for the configuration. This ID enables AppConfig to deploy
    #            the configuration in intervals, as defined in the deployment strategy. </p>
    # @option params [String] :client_configuration_version
    #   <p>The configuration version returned in the most recent <a>GetConfiguration</a>
    #            response.</p>
    #            <important>
    #               <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code>
    #               parameter to identify the configuration version on your clients. If you don’t send
    #                  <code>ClientConfigurationVersion</code> with each call to <a>GetConfiguration</a>, your clients receive the current configuration. You are
    #               charged each time your clients receive a configuration.</p>
    #               <p>To avoid excess charges, we recommend you use the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html">StartConfigurationSession</a> and <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html">GetLatestConfiguration</a> APIs, which track the client configuration version on
    #               your behalf. If you choose to continue using <a>GetConfiguration</a>, we
    #               recommend that you include the <code>ClientConfigurationVersion</code> value with every
    #               call to <a>GetConfiguration</a>. The value to use for
    #                  <code>ClientConfigurationVersion</code> comes from the
    #                  <code>ConfigurationVersion</code> attribute returned by <a>GetConfiguration</a> when there is new or updated data, and should be saved
    #               for subsequent calls to <a>GetConfiguration</a>.</p>
    #            </important>
    #            <p>For more information about working with configurations, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/retrieving-feature-flags.html">Retrieving feature flags and
    #               configuration data in AppConfig</a> in the <i>AppConfig
    #               User Guide</i>.</p>
    # @example To retrieve configuration details
    #   # The following get-configuration example returns the configuration details of the example application. On subsequent calls to get-configuration, use the client-configuration-version parameter to only update the configuration of your application if the version has changed. Only updating the configuration when the version has changed avoids excess charges incurred by calling get-configuration.
    #   params = {
    #     application: "example-application",
    #     environment: "Example-Environment",
    #     configuration: "Example-Configuration-Profile",
    #     client_id: "example-id"
    #   }
    #   options = {}
    #   response = client.get_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     configuration_version: "1",
    #     content_type: "application/octet-stream"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application: "StringWithLengthBetween1And64", # required
    #     environment: "StringWithLengthBetween1And64", # required
    #     configuration: "StringWithLengthBetween1And64", # required
    #     client_id: "StringWithLengthBetween1And64", # required
    #     client_configuration_version: "Version"
    #   }
    #   options = {}
    #   response = client.get_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "data",
    #     configuration_version: "Version",
    #     content_type: "String"
    #   }
    # @deprecated
    #   This API has been deprecated in favor of the GetLatestConfiguration API used in conjunction with StartConfigurationSession.
    # @return [Types::GetConfigurationOutput]
    def get_configuration(params = {}, options = {})
      request = build_request(:get_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a configuration profile.</p>
    # @param [Hash, Types::GetConfigurationProfileRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the configuration profile you want to
    #            get.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile that you want to get.</p>
    # @example To retrieve configuration profile details
    #   # The following get-configuration-profile example returns the details of the specified configuration profile.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f"
    #   }
    #   options = {}
    #   response = client.get_configuration_profile(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "ur8hx2f",
    #     name: "Example-Configuration-Profile",
    #     location_uri: "ssm-parameter://Example-Parameter",
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_configuration_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "LongName",
    #     description: "Description",
    #     location_uri: "Uri",
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"], # required
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #     ],
    #     type: "ConfigurationProfileType",
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    # @return [Types::GetConfigurationProfileOutput]
    def get_configuration_profile(params = {}, options = {})
      request = build_request(:get_configuration_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a configuration deployment.</p>
    # @param [Hash, Types::GetDeploymentRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the deployment you want to get. </p>
    # @option params [String] :environment_id
    #   <p>The ID of the environment that includes the deployment you want to get. </p>
    # @option params [Integer] :deployment_number
    #   <p>The sequence number of the deployment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     environment_id: "Id",
    #     deployment_strategy_id: "Id",
    #     configuration_profile_id: "Id",
    #     deployment_number: 1,
    #     configuration_name: "Name",
    #     configuration_location_uri: "Uri",
    #     configuration_version: "Version",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     state: "BAKING" # One of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     event_log: [
    #       {
    #         event_type: "PERCENTAGE_UPDATED" # One of: ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED", "REVERT_COMPLETED"],
    #         triggered_by: "USER" # One of: ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"],
    #         description: "Description",
    #         action_invocations: [
    #           {
    #             extension_identifier: "Identifier",
    #             action_name: "Name",
    #             uri: "Uri",
    #             role_arn: "Arn",
    #             error_message: "String",
    #             error_code: "String",
    #             invocation_id: "Id"
    #           }
    #         ],
    #         occurred_at: Time.now
    #       }
    #     ],
    #     percentage_complete: 1.0,
    #     started_at: Time.now,
    #     completed_at: Time.now,
    #     applied_extensions: [
    #       {
    #         extension_id: "Id",
    #         extension_association_id: "Id",
    #         version_number: 1,
    #         parameters: {
    #           "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #         }
    #       }
    #     ],
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     version_label: "VersionLabel"
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a deployment strategy. A deployment strategy defines
    #          important criteria for rolling out your configuration to the designated targets. A
    #          deployment strategy includes the overall duration required, a percentage of targets to
    #          receive the deployment during each interval, an algorithm that defines how percentage
    #          grows, and bake time.</p>
    # @param [Hash, Types::GetDeploymentStrategyRequest] params
    # @option params [String] :deployment_strategy_id
    #   <p>The ID of the deployment strategy to get.</p>
    # @example To retrieve details of a deployment strategy
    #   # The following get-deployment-strategy example lists the details of the specified deployment strategy.
    #   params = {
    #     deployment_strategy_id: "1225qzk"
    #   }
    #   options = {}
    #   response = client.get_deployment_strategy(params, options)
    #   response.to_h #=>
    #   {
    #     id: "1225qzk",
    #     name: "Example-Deployment",
    #     deployment_duration_in_minutes: 15,
    #     growth_type: LINEAR,
    #     growth_factor: 25,
    #     final_bake_time_in_minutes: 0,
    #     replicate_to: SSM_DOCUMENT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_strategy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     replicate_to: "NONE" # One of: ["NONE", "SSM_DOCUMENT"]
    #   }
    # @return [Types::GetDeploymentStrategyOutput]
    def get_deployment_strategy(params = {}, options = {})
      request = build_request(:get_deployment_strategy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an environment. An environment is a deployment group of
    #             AppConfig applications, such as applications in a <code>Production</code>
    #          environment or in an <code>EU_Region</code> environment. Each configuration deployment
    #          targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If
    #          an alarm is triggered during a deployment, AppConfig roles back the
    #          configuration.</p>
    # @param [Hash, Types::GetEnvironmentRequest] params
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the environment you want to get.</p>
    # @option params [String] :environment_id
    #   <p>The ID of the environment that you want to get.</p>
    # @example To retrieve environment details
    #   # The following get-environment example returns the details and state of the specified environment.
    #   params = {
    #     application_id: "339ohji",
    #     environment_id: "54j1r29"
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "54j1r29",
    #     name: "Example-Environment",
    #     state: READY_FOR_DEPLOYMENT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     state: "READY_FOR_DEPLOYMENT" # One of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetEnvironmentOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Returns information about an AppConfig extension.</p>
    # @param [Hash, Types::GetExtensionRequest] params
    # @option params [String] :extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    # @option params [Integer] :version_number
    #   <p>The extension version number. If no version number was defined, AppConfig uses
    #            the highest version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_identifier: "Identifier", # required
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.get_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     version_number: 1,
    #     arn: "Arn",
    #     description: "Description",
    #     actions: {
    #       "ActionPoint" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn"
    #         }
    #       ]
    #     },
    #     parameters: {
    #       "ExtensionOrParameterName" => {
    #         description: "Description",
    #         required: false,
    #         dynamic: false
    #       }
    #     }
    #   }
    # @return [Types::GetExtensionOutput]
    def get_extension(params = {}, options = {})
      request = build_request(:get_extension, params)
      request.send_request(options)
    end

    # <p>Returns information about an AppConfig extension association. For more
    #          information about extensions and associations, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::GetExtensionAssociationRequest] params
    # @option params [String] :extension_association_id
    #   <p>The extension association ID to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_association_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.get_extension_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Identifier",
    #     extension_arn: "Arn",
    #     resource_arn: "Arn",
    #     arn: "Arn",
    #     parameters: {
    #       "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #     },
    #     extension_version_number: 1
    #   }
    # @return [Types::GetExtensionAssociationOutput]
    def get_extension_association(params = {}, options = {})
      request = build_request(:get_extension_association, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific configuration version.</p>
    # @param [Hash, Types::GetHostedConfigurationVersionRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [Integer] :version_number
    #   <p>The version.</p>
    # @example To retrieve hosted configuration details
    #   # The following get-hosted-configuration-version example retrieves the configuration details of the AWS AppConfig hosted configuration.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.get_hosted_configuration_version(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     version_number: 1,
    #     content_type: "application/json"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_hosted_configuration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     configuration_profile_id: "Id",
    #     version_number: 1,
    #     description: "Description",
    #     content: "data",
    #     content_type: "StringWithLengthBetween1And255",
    #     version_label: "VersionLabel",
    #     kms_key_arn: "Arn"
    #   }
    # @return [Types::GetHostedConfigurationVersionOutput]
    def get_hosted_configuration_version(params = {}, options = {})
      request = build_request(:get_hosted_configuration_version, params)
      request.send_request(options)
    end

    # <p>Lists all applications in your Amazon Web Services account.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Next token is a pagination token generated by AppConfig to describe what page the previous List call ended on. For the first List
    #            request, the nextToken should not be set. On subsequent calls, the nextToken parameter
    #            should be set to the previous responses nextToken value. Use this token to get the next set
    #            of results. </p>
    # @example To list the available applications
    #   # The following list-applications example lists the available applications in your AWS account.
    #   params = {}
    #   options = {}
    #   response = client.list_applications(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "339ohji",
    #         name: "test-application",
    #         description: "An application used for creating an example."
    #       },
    #       {
    #         id: "rwalwu7",
    #         name: "Test-Application"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "Id",
    #         name: "Name",
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists the configuration profiles for an application.</p>
    # @param [Hash, Types::ListConfigurationProfilesRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [String] :type
    #   <p>A filter based on the type of configurations that the configuration profile contains. A
    #            configuration can be a feature flag or a freeform configuration.</p>
    # @example To list the available configuration profiles
    #   # The following list-configuration-profiles example lists the available configuration profiles for the specified application.
    #   params = {
    #     application_id: "339ohji"
    #   }
    #   options = {}
    #   response = client.list_configuration_profiles(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji",
    #         id: "ur8hx2f",
    #         name: "Example-Configuration-Profile",
    #         location_uri: "ssm-parameter://Example-Parameter"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "ConfigurationProfileType"
    #   }
    #   options = {}
    #   response = client.list_configuration_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "Id",
    #         id: "Id",
    #         name: "LongName",
    #         location_uri: "Uri",
    #         validator_types: ["JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"]],
    #         type: "ConfigurationProfileType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConfigurationProfilesOutput]
    def list_configuration_profiles(params = {}, options = {})
      request = build_request(:list_configuration_profiles, params)
      request.send_request(options)
    end

    # <p>Lists deployment strategies.</p>
    # @param [Hash, Types::ListDeploymentStrategiesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example To list the available deployment strategies
    #   # The following list-deployment-strategies example lists the available deployment strategies in your AWS account.
    #   params = {}
    #   options = {}
    #   response = client.list_deployment_strategies(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "1225qzk",
    #         name: "Example-Deployment",
    #         deployment_duration_in_minutes: 15,
    #         growth_type: LINEAR,
    #         growth_factor: 25,
    #         final_bake_time_in_minutes: 0,
    #         replicate_to: SSM_DOCUMENT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployment_strategies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "Id",
    #         name: "Name",
    #         description: "Description",
    #         deployment_duration_in_minutes: 1,
    #         growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #         growth_factor: 1.0,
    #         final_bake_time_in_minutes: 1,
    #         replicate_to: "NONE" # One of: ["NONE", "SSM_DOCUMENT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentStrategiesOutput]
    def list_deployment_strategies(params = {}, options = {})
      request = build_request(:list_deployment_strategies, params)
      request.send_request(options)
    end

    # <p>Lists the deployments for an environment in descending deployment number order.</p>
    # @param [Hash, Types::ListDeploymentsRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that may be returned for this call. If there are items that
    #            have not yet been returned, the response will include a non-null <code>NextToken</code>
    #            that you can provide in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a prior call to this operation indicating the next set of results
    #            to be returned. If not specified, the operation will return the first set of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         deployment_number: 1,
    #         configuration_name: "Name",
    #         configuration_version: "Version",
    #         deployment_duration_in_minutes: 1,
    #         growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #         growth_factor: 1.0,
    #         final_bake_time_in_minutes: 1,
    #         state: "BAKING" # One of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #         percentage_complete: 1.0,
    #         started_at: Time.now,
    #         completed_at: Time.now,
    #         version_label: "VersionLabel"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentsOutput]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Lists the environments for an application.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @example To list the available environments
    #   # The following list-environments example lists the available environments in your AWS account for the specified application.
    #   params = {
    #     application_id: "339ohji"
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji",
    #         id: "54j1r29",
    #         name: "Example-Environment",
    #         state: READY_FOR_DEPLOYMENT
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "Id",
    #         id: "Id",
    #         name: "Name",
    #         description: "Description",
    #         state: "READY_FOR_DEPLOYMENT" # One of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #         monitors: [
    #           {
    #             alarm_arn: "StringWithLengthBetween1And2048", # required
    #             alarm_role_arn: "RoleArn"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentsOutput]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists all AppConfig extension associations in the account. For more
    #          information about extensions and associations, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::ListExtensionAssociationsRequest] params
    # @option params [String] :resource_identifier
    #   <p>The ARN of an application, configuration profile, or environment.</p>
    # @option params [String] :extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    # @option params [Integer] :extension_version_number
    #   <p>The version number for the extension defined in the association.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results or pass null to
    #            get the first set of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifier: "Arn",
    #     extension_identifier: "Identifier",
    #     extension_version_number: 1,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_extension_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "Identifier",
    #         extension_arn: "Arn",
    #         resource_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExtensionAssociationsOutput]
    def list_extension_associations(params = {}, options = {})
      request = build_request(:list_extension_associations, params)
      request.send_request(options)
    end

    # <p>Lists all custom and Amazon Web Services authored AppConfig extensions in the
    #          account. For more information about extensions, see <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::ListExtensionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [String] :name
    #   <p>The extension name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     name: "QueryName"
    #   }
    #   options = {}
    #   response = client.list_extensions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "Id",
    #         name: "Name",
    #         version_number: 1,
    #         arn: "Arn",
    #         description: "Description"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExtensionsOutput]
    def list_extensions(params = {}, options = {})
      request = build_request(:list_extensions, params)
      request.send_request(options)
    end

    # <p>Lists configurations stored in the AppConfig hosted configuration store by
    #          version. </p>
    # @param [Hash, Types::ListHostedConfigurationVersionsRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. If <code>MaxResults</code> is not
    #            provided in the call, AppConfig returns the maximum of 50. The call also returns
    #            a token that you can specify in a subsequent call to get the next set of results.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    # @option params [String] :version_label
    #   <p>An optional filter that can be used to specify the version label of an AppConfig hosted configuration version. This parameter supports filtering by prefix using a
    #            wildcard, for example "v2*". If you don't specify an asterisk at the end of the value, only
    #            an exact match is returned.</p>
    # @example To list the available hosted configuration versions
    #   # The following list-hosted-configuration-versions example lists the configurations versions hosted in the AWS AppConfig hosted configuration store for the specified application and configuration profile.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f"
    #   }
    #   options = {}
    #   response = client.list_hosted_configuration_versions(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "339ohji",
    #         configuration_profile_id: "ur8hx2f",
    #         version_number: 1,
    #         content_type: "application/json"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     version_label: "QueryName"
    #   }
    #   options = {}
    #   response = client.list_hosted_configuration_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         application_id: "Id",
    #         configuration_profile_id: "Id",
    #         version_number: 1,
    #         description: "Description",
    #         content_type: "StringWithLengthBetween1And255",
    #         version_label: "VersionLabel",
    #         kms_key_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHostedConfigurationVersionsOutput]
    def list_hosted_configuration_versions(params = {}, options = {})
      request = build_request(:list_hosted_configuration_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of key-value tags assigned to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @example To list the tags of an application
    #   # The following list-tags-for-resource example lists the tags of a specified application.
    #   params = {
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "group1" => "1"
    #     }
    #   }
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a deployment.</p>
    # @param [Hash, Types::StartDeploymentRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    # @option params [String] :deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [String] :configuration_version
    #   <p>The configuration version to deploy. If deploying an AppConfig hosted
    #            configuration version, you can specify either the version number or version label. For all
    #            other configurations, you must specify the version number.</p>
    # @option params [String] :description
    #   <p>A description of the deployment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which
    #            you define.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this ID to encrypt the configuration data using a customer managed key. </p>
    # @option params [Hash<String, String>] :dynamic_extension_parameters
    #   <p>A map of dynamic extension parameter names to values to pass to associated extensions
    #            with <code>PRE_START_DEPLOYMENT</code> actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #     configuration_profile_id: "Id", # required
    #     configuration_version: "Version", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     dynamic_extension_parameters: {
    #       "DynamicParameterKey" => "StringWithLengthBetween1And2048"
    #     }
    #   }
    #   options = {}
    #   response = client.start_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     environment_id: "Id",
    #     deployment_strategy_id: "Id",
    #     configuration_profile_id: "Id",
    #     deployment_number: 1,
    #     configuration_name: "Name",
    #     configuration_location_uri: "Uri",
    #     configuration_version: "Version",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     state: "BAKING" # One of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     event_log: [
    #       {
    #         event_type: "PERCENTAGE_UPDATED" # One of: ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED", "REVERT_COMPLETED"],
    #         triggered_by: "USER" # One of: ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"],
    #         description: "Description",
    #         action_invocations: [
    #           {
    #             extension_identifier: "Identifier",
    #             action_name: "Name",
    #             uri: "Uri",
    #             role_arn: "Arn",
    #             error_message: "String",
    #             error_code: "String",
    #             invocation_id: "Id"
    #           }
    #         ],
    #         occurred_at: Time.now
    #       }
    #     ],
    #     percentage_complete: 1.0,
    #     started_at: Time.now,
    #     completed_at: Time.now,
    #     applied_extensions: [
    #       {
    #         extension_id: "Id",
    #         extension_association_id: "Id",
    #         version_number: 1,
    #         parameters: {
    #           "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #         }
    #       }
    #     ],
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     version_label: "VersionLabel"
    #   }
    # @return [Types::StartDeploymentOutput]
    def start_deployment(params = {}, options = {})
      request = build_request(:start_deployment, params)
      request.send_request(options)
    end

    # <p>Stops a deployment. This API action works only on deployments that have a status of
    #             <code>DEPLOYING</code>, unless an <code>AllowRevert</code> parameter is supplied. If the
    #             <code>AllowRevert</code> parameter is supplied, the status of an in-progress deployment
    #          will be <code>ROLLED_BACK</code>. The status of a completed deployment will be
    #             <code>REVERTED</code>. AppConfig only allows a revert within 72 hours of
    #          deployment completion.</p>
    # @param [Hash, Types::StopDeploymentRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    # @option params [Integer] :deployment_number
    #   <p>The sequence number of the deployment.</p>
    # @option params [Boolean] :allow_revert
    #   <p>A Boolean that enables AppConfig to rollback a <code>COMPLETED</code>
    #            deployment to the previous configuration version. This action moves the deployment to a
    #            status of <code>REVERTED</code>.</p>
    # @example To stop configuration deployment
    #   # The following stop-deployment example stops the deployment of an application configuration to the specified environment.
    #   params = {
    #     application_id: "339ohji",
    #     environment_id: "54j1r29",
    #     deployment_number: 2
    #   }
    #   options = {}
    #   response = client.stop_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     deployment_number: 2,
    #     deployment_duration_in_minutes: 15,
    #     growth_factor: 25.0,
    #     final_bake_time_in_minutes: 0,
    #     percentage_complete: 1.0
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     deployment_number: 1, # required
    #     allow_revert: false
    #   }
    #   options = {}
    #   response = client.stop_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     environment_id: "Id",
    #     deployment_strategy_id: "Id",
    #     configuration_profile_id: "Id",
    #     deployment_number: 1,
    #     configuration_name: "Name",
    #     configuration_location_uri: "Uri",
    #     configuration_version: "Version",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     state: "BAKING" # One of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     event_log: [
    #       {
    #         event_type: "PERCENTAGE_UPDATED" # One of: ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED", "REVERT_COMPLETED"],
    #         triggered_by: "USER" # One of: ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"],
    #         description: "Description",
    #         action_invocations: [
    #           {
    #             extension_identifier: "Identifier",
    #             action_name: "Name",
    #             uri: "Uri",
    #             role_arn: "Arn",
    #             error_message: "String",
    #             error_code: "String",
    #             invocation_id: "Id"
    #           }
    #         ],
    #         occurred_at: Time.now
    #       }
    #     ],
    #     percentage_complete: 1.0,
    #     started_at: Time.now,
    #     completed_at: Time.now,
    #     applied_extensions: [
    #       {
    #         extension_id: "Id",
    #         extension_association_id: "Id",
    #         version_number: 1,
    #         parameters: {
    #           "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #         }
    #       }
    #     ],
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     version_label: "VersionLabel"
    #   }
    # @return [Types::StopDeploymentOutput]
    def stop_deployment(params = {}, options = {})
      request = build_request(:stop_deployment, params)
      request.send_request(options)
    end

    # <p>Assigns metadata to an AppConfig resource. Tags help organize and categorize
    #          your AppConfig resources. Each tag consists of a key and an optional value, both
    #          of which you define. You can specify a maximum of 50 tags for a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which to retrieve tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be
    #            up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to
    #            256 characters.</p>
    # @example To tag an application
    #   # The following tag-resource example tags an application resource.
    #   params = {
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji",
    #     tags: {
    #       "group1" => "1"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Deletes a tag key and value from an AppConfig resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to delete.</p>
    # @example To remove a tag from an application
    #   # The following untag-resource example removes the group1 tag from the specified application.
    #   params = {
    #     resource_arn: "arn:aws:appconfig:us-east-1:111122223333:application/339ohji",
    #     tag_keys: [
    #       "group1"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Updates the value of the <code>DeletionProtection</code> parameter.</p>
    # @param [Hash, Types::UpdateAccountSettingsRequest] params
    # @option params [Types::DeletionProtectionSettings] :deletion_protection
    #   <p>A parameter to configure deletion protection. Deletion protection prevents a user from
    #            deleting a configuration profile or an environment if AppConfig has called either
    #               <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> or  for the
    #            configuration profile or from the environment during the specified interval. The default
    #            interval for <code>ProtectionPeriodInMinutes</code> is 60.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_protection: {
    #       enabled: false,
    #       protection_period_in_minutes: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_protection: {
    #       enabled: false,
    #       protection_period_in_minutes: 1
    #     }
    #   }
    # @return [Types::UpdateAccountSettingsOutput]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Updates an application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :name
    #   <p>The name of the application.</p>
    # @option params [String] :description
    #   <p>A description of the application.</p>
    # @example To update an application
    #   # The following update-application example updates the name of the specified application.
    #   params = {
    #     application_id: "339ohji",
    #     name: "Example-Application",
    #     description: ""
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    #   response.to_h #=>
    #   {
    #     id: "339ohji",
    #     name: "Example-Application",
    #     description: "An application used for creating an example."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     name: "Name",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description"
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates a configuration profile.</p>
    # @param [Hash, Types::UpdateConfigurationProfileRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile.</p>
    # @option params [String] :name
    #   <p>The name of the configuration profile.</p>
    # @option params [String] :description
    #   <p>A description of the configuration profile.</p>
    # @option params [String] :retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in CodePipeline or the AppConfig hosted configuration store. It is required for all other sources that
    #               store your configuration. </p>
    #            </important>
    # @option params [Array<Types::Validator>] :validators
    #   <p>A list of methods for validating the configuration.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier for a Key Management Service key to encrypt new configuration data
    #            versions in the AppConfig hosted configuration store. This attribute is only used
    #            for <code>hosted</code> configuration types. The identifier can be an KMS
    #            key ID, alias, or the Amazon Resource Name (ARN) of the key ID or alias. To encrypt data
    #            managed in other configuration stores, see the documentation for how to specify an KMS key for that particular service.</p>
    # @example To update a configuration profile
    #   # The following update-configuration-profile example updates the description of the specified configuration profile.
    #   params = {
    #     application_id: "339ohji",
    #     configuration_profile_id: "ur8hx2f",
    #     description: "Configuration profile used for examples."
    #   }
    #   options = {}
    #   response = client.update_configuration_profile(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "ur8hx2f",
    #     name: "Example-Configuration-Profile",
    #     description: "Configuration profile used for examples.",
    #     location_uri: "ssm-parameter://Example-Parameter",
    #     retrieval_role_arn: "arn:aws:iam::111122223333:role/Example-App-Config-Role"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     name: "LongName",
    #     description: "Description",
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"], # required
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #     ],
    #     kms_key_identifier: "KmsKeyIdentifierOrEmpty"
    #   }
    #   options = {}
    #   response = client.update_configuration_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "LongName",
    #     description: "Description",
    #     location_uri: "Uri",
    #     retrieval_role_arn: "RoleArn",
    #     validators: [
    #       {
    #         type: "JSON_SCHEMA" # One of: ["JSON_SCHEMA", "LAMBDA"], # required
    #         content: "StringWithLengthBetween0And32768", # required
    #       }
    #     ],
    #     type: "ConfigurationProfileType",
    #     kms_key_arn: "Arn",
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    # @return [Types::UpdateConfigurationProfileOutput]
    def update_configuration_profile(params = {}, options = {})
      request = build_request(:update_configuration_profile, params)
      request.send_request(options)
    end

    # <p>Updates a deployment strategy.</p>
    # @param [Hash, Types::UpdateDeploymentStrategyRequest] params
    # @option params [String] :deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    # @option params [String] :description
    #   <p>A description of the deployment strategy.</p>
    # @option params [Integer] :deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    # @option params [Integer] :final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the
    #            deployment to be complete and no longer eligible for automatic rollback.</p>
    # @option params [Float] :growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    # @option params [String] :growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig
    #            supports the following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes
    #            the deployment by increments of the growth factor evenly distributed over the deployment
    #            time. For example, a linear deployment that uses a growth factor of 20 initially makes the
    #            configuration available to 20 percent of the targets. After 1/5th of the deployment time
    #            has passed, the system updates the percentage to 40 percent. This continues until 100% of
    #            the targets are set to receive the deployed configuration.</p>
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig
    #            processes the deployment exponentially using the following formula: <code>G*(2^N)</code>.
    #            In this formula, <code>G</code> is the growth factor specified by the user and
    #               <code>N</code> is the number of steps until the configuration is deployed to all
    #            targets. For example, if you specify a growth factor of 2, then the system rolls out the
    #            configuration as follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    # @example To update a deployment strategy
    #   # The following update-deployment-strategy example updates final bake time to 20 minutes in the specified deployment strategy. ::
    #   params = {
    #     deployment_strategy_id: "1225qzk",
    #     final_bake_time_in_minutes: 20
    #   }
    #   options = {}
    #   response = client.update_deployment_strategy(params, options)
    #   response.to_h #=>
    #   {
    #     id: "1225qzk",
    #     name: "Example-Deployment",
    #     deployment_duration_in_minutes: 15,
    #     growth_type: LINEAR,
    #     growth_factor: 25,
    #     final_bake_time_in_minutes: 20,
    #     replicate_to: SSM_DOCUMENT
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_strategy_id: "DeploymentStrategyId", # required
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"]
    #   }
    #   options = {}
    #   response = client.update_deployment_strategy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     deployment_duration_in_minutes: 1,
    #     growth_type: "LINEAR" # One of: ["LINEAR", "EXPONENTIAL"],
    #     growth_factor: 1.0,
    #     final_bake_time_in_minutes: 1,
    #     replicate_to: "NONE" # One of: ["NONE", "SSM_DOCUMENT"]
    #   }
    # @return [Types::UpdateDeploymentStrategyOutput]
    def update_deployment_strategy(params = {}, options = {})
      request = build_request(:update_deployment_strategy, params)
      request.send_request(options)
    end

    # <p>Updates an environment.</p>
    # @param [Hash, Types::UpdateEnvironmentRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    # @option params [String] :description
    #   <p>A description of the environment.</p>
    # @option params [Array<Types::Monitor>] :monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    # @example To update an environment
    #   # The following update-environment example updates an environment's description.
    #   params = {
    #     application_id: "339ohji",
    #     environment_id: "54j1r29",
    #     description: "An environment for examples."
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    #   response.to_h #=>
    #   {
    #     application_id: "339ohji",
    #     id: "54j1r29",
    #     name: "Example-Environment",
    #     description: "An environment for examples.",
    #     state: ROLLED_BACK
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     environment_id: "Id", # required
    #     name: "Name",
    #     description: "Description",
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "Id",
    #     id: "Id",
    #     name: "Name",
    #     description: "Description",
    #     state: "READY_FOR_DEPLOYMENT" # One of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK", "REVERTED"],
    #     monitors: [
    #       {
    #         alarm_arn: "StringWithLengthBetween1And2048", # required
    #         alarm_role_arn: "RoleArn"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateEnvironmentOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
      request.send_request(options)
    end

    # <p>Updates an AppConfig extension. For more information about extensions, see
    #             <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::UpdateExtensionRequest] params
    # @option params [String] :extension_identifier
    #   <p>The name, the ID, or the Amazon Resource Name (ARN) of the extension.</p>
    # @option params [String] :description
    #   <p>Information about the extension.</p>
    # @option params [Hash<String, Array<Types::Action>>] :actions
    #   <p>The actions defined in the extension.</p>
    # @option params [Hash<String, Types::Parameter>] :parameters
    #   <p>One or more parameters for the actions called by the extension.</p>
    # @option params [Integer] :version_number
    #   <p>The extension version number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_identifier: "Identifier", # required
    #     description: "Description",
    #     actions: {
    #       "ActionPoint" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn"
    #         }
    #       ]
    #     },
    #     parameters: {
    #       "ExtensionOrParameterName" => {
    #         description: "Description",
    #         required: false,
    #         dynamic: false
    #       }
    #     },
    #     version_number: 1
    #   }
    #   options = {}
    #   response = client.update_extension(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Id",
    #     name: "Name",
    #     version_number: 1,
    #     arn: "Arn",
    #     description: "Description",
    #     actions: {
    #       "ActionPoint" => [
    #         {
    #           name: "Name",
    #           description: "Description",
    #           uri: "Uri",
    #           role_arn: "Arn"
    #         }
    #       ]
    #     },
    #     parameters: {
    #       "ExtensionOrParameterName" => {
    #         description: "Description",
    #         required: false,
    #         dynamic: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateExtensionOutput]
    def update_extension(params = {}, options = {})
      request = build_request(:update_extension, params)
      request.send_request(options)
    end

    # <p>Updates an association. For more information about extensions and associations, see
    #             <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html">Extending
    #             workflows</a> in the <i>AppConfig User Guide</i>.</p>
    # @param [Hash, Types::UpdateExtensionAssociationRequest] params
    # @option params [String] :extension_association_id
    #   <p>The system-generated ID for the association.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>The parameter names and values defined in the extension.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     extension_association_id: "Id", # required
    #     parameters: {
    #       "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #     }
    #   }
    #   options = {}
    #   response = client.update_extension_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "Identifier",
    #     extension_arn: "Arn",
    #     resource_arn: "Arn",
    #     arn: "Arn",
    #     parameters: {
    #       "ExtensionOrParameterName" => "StringWithLengthBetween1And2048"
    #     },
    #     extension_version_number: 1
    #   }
    # @return [Types::UpdateExtensionAssociationOutput]
    def update_extension_association(params = {}, options = {})
      request = build_request(:update_extension_association, params)
      request.send_request(options)
    end

    # <p>Uses the validators in a configuration profile to validate a configuration.</p>
    # @param [Hash, Types::ValidateConfigurationRequest] params
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    # @option params [String] :configuration_version
    #   <p>The version of the configuration to validate.</p>
    # @example To validate a configuration
    #   # The following validate-configuration example uses the validators in a configuration profile to validate a configuration.
    #   params = {
    #     application_id: "abc1234",
    #     configuration_profile_id: "ur8hx2f",
    #     configuration_version: "1"
    #   }
    #   options = {}
    #   response = client.validate_configuration(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Id", # required
    #     configuration_profile_id: "Id", # required
    #     configuration_version: "Version", # required
    #   }
    #   options = {}
    #   response = client.validate_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def validate_configuration(params = {}, options = {})
      request = build_request(:validate_configuration, params)
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
      context[:gem_name] = 'aws-sdk-appconfig'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        deployment_complete: Waiters::DeploymentComplete,
        environment_ready_for_deployment: Waiters::EnvironmentReadyForDeployment
      }
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
