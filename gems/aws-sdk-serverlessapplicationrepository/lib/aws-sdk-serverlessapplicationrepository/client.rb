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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:serverlessapplicationrepository)

module Aws::ServerlessApplicationRepository
  # An API client for Aws::ServerlessApplicationRepository.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ServerlessApplicationRepository
    @identifier = :serverlessapplicationrepository

    add_plugin(::Aws::ServerlessApplicationRepository::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ServerlessApplicationRepository::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    # @option params [String] :description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    # @option params [String] :home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    # @option params [Array<String>] :labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    # @option params [String] :license_body
    #   <p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    # @option params [String] :license_url
    #   <p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>
    # @option params [String] :name
    #   <p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: "[a-zA-Z0-9\\-]+";</p>
    # @option params [String] :readme_body
    #   <p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    # @option params [String] :readme_url
    #   <p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    # @option params [String] :source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    # @option params [String] :source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    # @option params [String] :spdx_license_id
    #   <p>A valid identifier from <a href="https://spdx.org/licenses/">https://spdx.org/licenses/</a>.</p>
    # @option params [String] :template_body
    #   <p>The local raw packaged AWS SAM template file of your application.
    #    The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    # @option params [String] :template_url
    #   <p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     author: "__string", # required
    #     description: "__string", # required
    #     home_page_url: "__string",
    #     labels: ["__string"],
    #     license_body: "__string",
    #     license_url: "__string",
    #     name: "__string", # required
    #     readme_body: "__string",
    #     readme_url: "__string",
    #     semantic_version: "__string",
    #     source_code_archive_url: "__string",
    #     source_code_url: "__string",
    #     spdx_license_id: "__string",
    #     template_body: "__string",
    #     template_url: "__string"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     author: "__string",
    #     creation_time: "__string",
    #     description: "__string",
    #     home_page_url: "__string",
    #     is_verified_author: false,
    #     labels: ["__string"],
    #     license_url: "__string",
    #     name: "__string",
    #     readme_url: "__string",
    #     spdx_license_id: "__string",
    #     verified_author_url: "__string",
    #     version: {
    #       application_id: "__string", # required
    #       creation_time: "__string", # required
    #       parameter_definitions: [ # required
    #         {
    #           allowed_pattern: "__string",
    #           allowed_values: ["__string"],
    #           constraint_description: "__string",
    #           default_value: "__string",
    #           description: "__string",
    #           max_length: 1,
    #           max_value: 1,
    #           min_length: 1,
    #           min_value: 1,
    #           name: "__string", # required
    #           no_echo: false,
    #           referenced_by_resources: ["__string"], # required
    #           type: "__string"
    #         }
    #       ],
    #       required_capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]], # required
    #       resources_supported: false, # required
    #       semantic_version: "__string", # required
    #       source_code_archive_url: "__string",
    #       source_code_url: "__string",
    #       template_url: "__string", # required
    #     }
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates an application version.</p>
    # @param [Hash, Types::CreateApplicationVersionRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the new version.</p>
    # @option params [String] :source_code_archive_url
    #   <p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>
    # @option params [String] :source_code_url
    #   <p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>
    # @option params [String] :template_body
    #   <p>The raw packaged AWS SAM template of your application.</p>
    # @option params [String] :template_url
    #   <p>A link to the packaged AWS SAM template of your application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     semantic_version: "__string", # required
    #     source_code_archive_url: "__string",
    #     source_code_url: "__string",
    #     template_body: "__string",
    #     template_url: "__string"
    #   }
    #   options = {}
    #   response = client.create_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     creation_time: "__string",
    #     parameter_definitions: [
    #       {
    #         allowed_pattern: "__string",
    #         allowed_values: ["__string"],
    #         constraint_description: "__string",
    #         default_value: "__string",
    #         description: "__string",
    #         max_length: 1,
    #         max_value: 1,
    #         min_length: 1,
    #         min_value: 1,
    #         name: "__string", # required
    #         no_echo: false,
    #         referenced_by_resources: ["__string"], # required
    #         type: "__string"
    #       }
    #     ],
    #     required_capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]],
    #     resources_supported: false,
    #     semantic_version: "__string",
    #     source_code_archive_url: "__string",
    #     source_code_url: "__string",
    #     template_url: "__string"
    #   }
    # @return [Types::CreateApplicationVersionResponse]
    def create_application_version(params = {}, options = {})
      request = build_request(:create_application_version, params)
      request.send_request(options)
    end

    # <p>Creates an AWS CloudFormation change set for the given application.</p>
    # @param [Hash, Types::CreateCloudFormationChangeSetRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [Array<String>] :capabilities
    #   <p>A list of values that you must specify before you can deploy certain applications.
    #    Some applications might include resources that can affect permissions in your AWS
    #    account, for example, by creating new AWS Identity and Access Management (IAM) users.
    #    For those applications, you must explicitly acknowledge their capabilities by
    #    specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
    #    CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or
    #    CAPABILITY_NAMED_IAM:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
    #    If the application contains IAM resources, you can specify either CAPABILITY_IAM
    #    or CAPABILITY_NAMED_IAM. If the application contains IAM resources
    #    with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>, and
    #    <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS:TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify
    #    CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review
    #    all permissions associated with the application before deploying. If you don't specify
    #    this parameter for an application that requires capabilities, the call will fail.</p>
    # @option params [String] :change_set_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [String] :client_token
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [String] :description
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [Array<String>] :notification_arns
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [Array<Types::ParameterValue>] :parameter_overrides
    #   <p>A list of parameter values for the parameters of the application.</p>
    # @option params [Array<String>] :resource_types
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [Types::RollbackConfiguration] :rollback_configuration
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    # @option params [String] :stack_name
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</a>
    #    </i> API.</p>
    # @option params [String] :template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     capabilities: ["__string"],
    #     change_set_name: "__string",
    #     client_token: "__string",
    #     description: "__string",
    #     notification_arns: ["__string"],
    #     parameter_overrides: [
    #       {
    #         name: "__string", # required
    #         value: "__string", # required
    #       }
    #     ],
    #     resource_types: ["__string"],
    #     rollback_configuration: {
    #       monitoring_time_in_minutes: 1,
    #       rollback_triggers: [
    #         {
    #           arn: "__string", # required
    #           type: "__string", # required
    #         }
    #       ]
    #     },
    #     semantic_version: "__string",
    #     stack_name: "__string", # required
    #     tags: [
    #       {
    #         key: "__string", # required
    #         value: "__string", # required
    #       }
    #     ],
    #     template_id: "__string"
    #   }
    #   options = {}
    #   response = client.create_cloud_formation_change_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     change_set_id: "__string",
    #     semantic_version: "__string",
    #     stack_id: "__string"
    #   }
    # @return [Types::CreateCloudFormationChangeSetResponse]
    def create_cloud_formation_change_set(params = {}, options = {})
      request = build_request(:create_cloud_formation_change_set, params)
      request.send_request(options)
    end

    # <p>Creates an AWS CloudFormation template.</p>
    # @param [Hash, Types::CreateCloudFormationTemplateRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application:</p><p>
    #    <a href="https://semver.org/">https://semver.org/</a>
    #    </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     semantic_version: "__string"
    #   }
    #   options = {}
    #   response = client.create_cloud_formation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     creation_time: "__string",
    #     expiration_time: "__string",
    #     semantic_version: "__string",
    #     status: "PREPARING" # One of: ["PREPARING", "ACTIVE", "EXPIRED"],
    #     template_id: "__string",
    #     template_url: "__string"
    #   }
    # @return [Types::CreateCloudFormationTemplateResponse]
    def create_cloud_formation_template(params = {}, options = {})
      request = build_request(:create_cloud_formation_template, params)
      request.send_request(options)
    end

    # <p>Deletes the specified application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
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

    # <p>Gets the specified application.</p>
    # @param [Hash, Types::GetApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     semantic_version: "__string"
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     author: "__string",
    #     creation_time: "__string",
    #     description: "__string",
    #     home_page_url: "__string",
    #     is_verified_author: false,
    #     labels: ["__string"],
    #     license_url: "__string",
    #     name: "__string",
    #     readme_url: "__string",
    #     spdx_license_id: "__string",
    #     verified_author_url: "__string",
    #     version: {
    #       application_id: "__string", # required
    #       creation_time: "__string", # required
    #       parameter_definitions: [ # required
    #         {
    #           allowed_pattern: "__string",
    #           allowed_values: ["__string"],
    #           constraint_description: "__string",
    #           default_value: "__string",
    #           description: "__string",
    #           max_length: 1,
    #           max_value: 1,
    #           min_length: 1,
    #           min_value: 1,
    #           name: "__string", # required
    #           no_echo: false,
    #           referenced_by_resources: ["__string"], # required
    #           type: "__string"
    #         }
    #       ],
    #       required_capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]], # required
    #       resources_supported: false, # required
    #       semantic_version: "__string", # required
    #       source_code_archive_url: "__string",
    #       source_code_url: "__string",
    #       template_url: "__string", # required
    #     }
    #   }
    # @return [Types::GetApplicationResponse]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Retrieves the policy for the application.</p>
    # @param [Hash, Types::GetApplicationPolicyRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_application_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statements: [
    #       {
    #         actions: ["__string"], # required
    #         principal_org_i_ds: ["__string"],
    #         principals: ["__string"], # required
    #         statement_id: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::GetApplicationPolicyResponse]
    def get_application_policy(params = {}, options = {})
      request = build_request(:get_application_policy, params)
      request.send_request(options)
    end

    # <p>Gets the specified AWS CloudFormation template.</p>
    # @param [Hash, Types::GetCloudFormationTemplateRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :template_id
    #   <p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     template_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_formation_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     creation_time: "__string",
    #     expiration_time: "__string",
    #     semantic_version: "__string",
    #     status: "PREPARING" # One of: ["PREPARING", "ACTIVE", "EXPIRED"],
    #     template_id: "__string",
    #     template_url: "__string"
    #   }
    # @return [Types::GetCloudFormationTemplateResponse]
    def get_cloud_formation_template(params = {}, options = {})
      request = build_request(:get_cloud_formation_template, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of applications nested in the containing application.</p>
    # @param [Hash, Types::ListApplicationDependenciesRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    # @option params [String] :semantic_version
    #   <p>The semantic version of the application to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     max_items: 1,
    #     next_token: "__string",
    #     semantic_version: "__string"
    #   }
    #   options = {}
    #   response = client.list_application_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dependencies: [
    #       {
    #         application_id: "__string", # required
    #         semantic_version: "__string", # required
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListApplicationDependenciesResponse]
    def list_application_dependencies(params = {}, options = {})
      request = build_request(:list_application_dependencies, params)
      request.send_request(options)
    end

    # <p>Lists versions for the specified application.</p>
    # @param [Hash, Types::ListApplicationVersionsRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     max_items: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_application_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         application_id: "__string", # required
    #         creation_time: "__string", # required
    #         semantic_version: "__string", # required
    #         source_code_url: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListApplicationVersionsResponse]
    def list_application_versions(params = {}, options = {})
      request = build_request(:list_application_versions, params)
      request.send_request(options)
    end

    # <p>Lists applications owned by the requester.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :max_items
    #   <p>The total number of items to return.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         application_id: "__string", # required
    #         author: "__string", # required
    #         creation_time: "__string",
    #         description: "__string", # required
    #         home_page_url: "__string",
    #         labels: ["__string"],
    #         name: "__string", # required
    #         spdx_license_id: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Sets the permission policy for an application. For the list of actions supported for this operation, see
    #  <a href="https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions">Application 
    #  Permissions</a>
    #  .</p>
    # @param [Hash, Types::PutApplicationPolicyRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [Array<Types::ApplicationPolicyStatement>] :statements
    #   <p>An array of policy statements applied to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     statements: [ # required
    #       {
    #         actions: ["__string"], # required
    #         principal_org_i_ds: ["__string"],
    #         principals: ["__string"], # required
    #         statement_id: "__string"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_application_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statements: [
    #       {
    #         actions: ["__string"], # required
    #         principal_org_i_ds: ["__string"],
    #         principals: ["__string"], # required
    #         statement_id: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::PutApplicationPolicyResponse]
    def put_application_policy(params = {}, options = {})
      request = build_request(:put_application_policy, params)
      request.send_request(options)
    end

    # <p>Unshares an application from an AWS Organization.</p><p>This operation can be called only from the organization's master account.</p>
    # @param [Hash, Types::UnshareApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :organization_id
    #   <p>The AWS Organization ID to unshare the application from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     organization_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.unshare_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unshare_application(params = {}, options = {})
      request = build_request(:unshare_application, params)
      request.send_request(options)
    end

    # <p>Updates the specified application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_id
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    # @option params [String] :author
    #   <p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";</p>
    # @option params [String] :description
    #   <p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>
    # @option params [String] :home_page_url
    #   <p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>
    # @option params [Array<String>] :labels
    #   <p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";</p>
    # @option params [String] :readme_body
    #   <p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    # @option params [String] :readme_url
    #   <p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "__string", # required
    #     author: "__string",
    #     description: "__string",
    #     home_page_url: "__string",
    #     labels: ["__string"],
    #     readme_body: "__string",
    #     readme_url: "__string"
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_id: "__string",
    #     author: "__string",
    #     creation_time: "__string",
    #     description: "__string",
    #     home_page_url: "__string",
    #     is_verified_author: false,
    #     labels: ["__string"],
    #     license_url: "__string",
    #     name: "__string",
    #     readme_url: "__string",
    #     spdx_license_id: "__string",
    #     verified_author_url: "__string",
    #     version: {
    #       application_id: "__string", # required
    #       creation_time: "__string", # required
    #       parameter_definitions: [ # required
    #         {
    #           allowed_pattern: "__string",
    #           allowed_values: ["__string"],
    #           constraint_description: "__string",
    #           default_value: "__string",
    #           description: "__string",
    #           max_length: 1,
    #           max_value: 1,
    #           min_length: 1,
    #           min_value: 1,
    #           name: "__string", # required
    #           no_echo: false,
    #           referenced_by_resources: ["__string"], # required
    #           type: "__string"
    #         }
    #       ],
    #       required_capabilities: ["CAPABILITY_IAM" # One of: ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_RESOURCE_POLICY"]], # required
    #       resources_supported: false, # required
    #       semantic_version: "__string", # required
    #       source_code_archive_url: "__string",
    #       source_code_url: "__string",
    #       template_url: "__string", # required
    #     }
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-serverlessapplicationrepository'
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
