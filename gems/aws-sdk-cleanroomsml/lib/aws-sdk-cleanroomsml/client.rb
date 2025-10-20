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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::CleanRoomsML
  # An API client for Aws::CleanRoomsML.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSStarkControlService
    @identifier = :cleanroomsml

    add_plugin(::Aws::CleanRoomsML::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CleanRoomsML::EndpointProvider)
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
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Submits a request to cancel the trained model job.</p>
    # @param [Hash, Types::CancelTrainedModelRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the trained model job that you want to cancel.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model job that you want to cancel.</p>
    # @option params [String] :version_identifier
    #   <p>The version identifier of the trained model to cancel. This parameter allows you to specify which version of the trained model you want to cancel when multiple versions exist.</p> <p>If <code>versionIdentifier</code> is not specified, the base model will be cancelled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.cancel_trained_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_trained_model(params = {}, options = {})
      request = build_request(:cancel_trained_model, params)
      request.send_request(options)
    end

    # <p>Submits a request to cancel a trained model inference job.</p>
    # @param [Hash, Types::CancelTrainedModelInferenceJobRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the trained model inference job that you want to cancel.</p>
    # @option params [String] :trained_model_inference_job_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model inference job that you want to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #   }
    #   options = {}
    #   response = client.cancel_trained_model_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_trained_model_inference_job(params = {}, options = {})
      request = build_request(:cancel_trained_model_inference_job, params)
      request.send_request(options)
    end

    # <p>Defines the information necessary to create an audience model. An audience model is a machine learning model that Clean Rooms ML trains to measure similarity between users. Clean Rooms ML manages training and storing the audience model. The audience model can be used in multiple calls to the <a>StartAudienceGenerationJob</a> API.</p>
    # @param [Hash, Types::CreateAudienceModelRequest] params
    # @option params [Time] :training_data_start_time
    #   <p>The start date and time of the training window.</p>
    # @option params [Time] :training_data_end_time
    #   <p>The end date and time of the training window.</p>
    # @option params [String] :name
    #   <p>The name of the audience model resource.</p>
    # @option params [String] :training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset for this audience model.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the trained ML model and the associated data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @option params [String] :description
    #   <p>The description of the audience model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     name: "NameString", # required
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.create_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     audience_model_arn: "AudienceModelArn", # required
    #   }
    # @return [Types::CreateAudienceModelResponse]
    def create_audience_model(params = {}, options = {})
      request = build_request(:create_audience_model, params)
      request.send_request(options)
    end

    # <p>Defines the information necessary to create a configured audience model.</p>
    # @param [Hash, Types::CreateConfiguredAudienceModelRequest] params
    # @option params [String] :name
    #   <p>The name of the configured audience model.</p>
    # @option params [String] :audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model to use for the configured audience model.</p>
    # @option params [Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   <p>Configure the Amazon S3 location and IAM Role for audiences created using this configured audience model. Each audience will have a unique location. The IAM Role must have <code>s3:PutObject</code> permission on the destination Amazon S3 location. If the destination is protected with Amazon S3 KMS-SSE, then the Role must also have the required KMS permissions.</p>
    # @option params [String] :description
    #   <p>The description of the configured audience model.</p>
    # @option params [Array<String>] :shared_audience_metrics
    #   <p>Whether audience metrics are shared.</p>
    # @option params [Integer] :min_matching_seed_size
    #   <p>The minimum number of users from the seed audience that must match with users in the training data of the audience model. The default value is 500.</p>
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   <p>Configure the list of output sizes of audiences that can be created using this configured audience model. A request to <a>StartAudienceGenerationJob</a> that uses this configured audience model must have an <code>audienceSize</code> selected from this list. You can use the <code>ABSOLUTE</code> <a>AudienceSize</a> to configure out audience sizes using the count of identifiers in the output. You can use the <code>Percentage</code> <a>AudienceSize</a> to configure sizes in the range 1-100 percent.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @option params [String] :child_resource_tag_on_create_policy
    #   <p>Configure how the service tags audience generation jobs created using this configured audience model. If you specify <code>NONE</code>, the tags from the <a>StartAudienceGenerationJob</a> request determine the tags of the audience generation job. If you specify <code>FROM_PARENT_RESOURCE</code>, the audience generation job inherits the tags from the configured audience model, by default. Tags in the <a>StartAudienceGenerationJob</a> will override the default.</p> <p>When the client is in a different account than the configured audience model, the tags from the client are never applied to a resource in the caller's account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     audience_model_arn: "AudienceModelArn", # required
    #     output_config: { # required
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     description: "ResourceDescription",
    #     shared_audience_metrics: ["ALL" # One of: ["ALL", "NONE"]], # required
    #     min_matching_seed_size: 1,
    #     audience_size_config: {
    #       audience_size_type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #       audience_size_bins: [1], # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     child_resource_tag_on_create_policy: "FROM_PARENT_RESOURCE" # One of: ["FROM_PARENT_RESOURCE", "NONE"]
    #   }
    #   options = {}
    #   response = client.create_configured_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    # @return [Types::CreateConfiguredAudienceModelResponse]
    def create_configured_audience_model(params = {}, options = {})
      request = build_request(:create_configured_audience_model, params)
      request.send_request(options)
    end

    # <p>Creates a configured model algorithm using a container image stored in an ECR repository.</p>
    # @param [Hash, Types::CreateConfiguredModelAlgorithmRequest] params
    # @option params [String] :name
    #   <p>The name of the configured model algorithm.</p>
    # @option params [String] :description
    #   <p>The description of the configured model algorithm.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that is used to access the repository.</p>
    # @option params [Types::ContainerConfig] :training_container_config
    #   <p>Configuration information for the training container, including entrypoints and arguments.</p>
    # @option params [Types::InferenceContainerConfig] :inference_container_config
    #   <p>Configuration information for the inference container that is used when you run an inference job on a configured model algorithm.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the configured ML model algorithm and associated data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     role_arn: "IamRoleArn", # required
    #     training_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #       entrypoint: ["ContainerEntrypointString"],
    #       arguments: ["ContainerArgument"],
    #       metric_definitions: [
    #         {
    #           name: "MetricName", # required
    #           regex: "MetricRegex", # required
    #         }
    #       ]
    #     },
    #     inference_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.create_configured_model_algorithm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #   }
    # @return [Types::CreateConfiguredModelAlgorithmResponse]
    def create_configured_model_algorithm(params = {}, options = {})
      request = build_request(:create_configured_model_algorithm, params)
      request.send_request(options)
    end

    # <p>Associates a configured model algorithm to a collaboration for use by any member of the collaboration.</p>
    # @param [Hash, Types::CreateConfiguredModelAlgorithmAssociationRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member who is associating this configured model algorithm.</p>
    # @option params [String] :configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to associate.</p>
    # @option params [String] :name
    #   <p>The name of the configured model algorithm association.</p>
    # @option params [String] :description
    #   <p>The description of the configured model algorithm association.</p>
    # @option params [Types::PrivacyConfiguration] :privacy_configuration
    #   <p>Specifies the privacy configuration information for the configured model algorithm association. This information includes the maximum data size that can be exported.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     privacy_configuration: {
    #       policies: { # required
    #         trained_models: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           container_metrics: {
    #             noise_level: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW", "NONE"], # required
    #           },
    #           max_artifact_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         },
    #         trained_model_exports: {
    #           max_size: { # required
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           },
    #           files_to_export: ["MODEL" # One of: ["MODEL", "OUTPUT"]], # required
    #         },
    #         trained_model_inference_jobs: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           max_output_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_configured_model_algorithm_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #   }
    # @return [Types::CreateConfiguredModelAlgorithmAssociationResponse]
    def create_configured_model_algorithm_association(params = {}, options = {})
      request = build_request(:create_configured_model_algorithm_association, params)
      request.send_request(options)
    end

    # <p>Provides the information to create an ML input channel. An ML input channel is the result of a query that can be used for ML modeling.</p>
    # @param [Hash, Types::CreateMLInputChannelRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is creating the ML input channel.</p>
    # @option params [Array<String>] :configured_model_algorithm_associations
    #   <p>The associated configured model algorithms that are necessary to create this ML input channel.</p>
    # @option params [Types::InputChannel] :input_channel
    #   <p>The input data that is used to create this ML input channel.</p>
    # @option params [String] :name
    #   <p>The name of the ML input channel.</p>
    # @option params [Integer] :retention_in_days
    #   <p>The number of days that the data in the ML input channel is retained.</p>
    # @option params [String] :description
    #   <p>The description of the ML input channel.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to access the input channel.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #     input_channel: { # required
    #       data_source: { # required
    #         # One of:
    #         protected_query_input_parameters: {
    #           sql_parameters: { # required
    #             query_string: "String",
    #             analysis_template_arn: "AnalysisTemplateArn",
    #             parameters: {
    #               "ParameterKey" => "ParameterValue"
    #             }
    #           },
    #           compute_configuration: {
    #             # One of:
    #             worker: {
    #               type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #               number: 1
    #             }
    #           },
    #           result_format: "CSV" # One of: ["CSV", "PARQUET"]
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     name: "NameString", # required
    #     retention_in_days: 1, # required
    #     description: "ResourceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ml_input_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #   }
    # @return [Types::CreateMLInputChannelResponse]
    def create_ml_input_channel(params = {}, options = {})
      request = build_request(:create_ml_input_channel, params)
      request.send_request(options)
    end

    # <p>Creates a trained model from an associated configured model algorithm using data from any member of the collaboration.</p>
    # @param [Hash, Types::CreateTrainedModelRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is creating the trained model.</p>
    # @option params [String] :name
    #   <p>The name of the trained model.</p>
    # @option params [String] :configured_model_algorithm_association_arn
    #   <p>The associated configured model algorithm used to train this model.</p>
    # @option params [Hash<String, String>] :hyperparameters
    #   <p>Algorithm-specific parameters that influence the quality of the model. You set hyperparameters before you start the learning process.</p>
    # @option params [Hash<String, String>] :environment
    #   <p>The environment variables to set in the Docker container.</p>
    # @option params [Types::ResourceConfig] :resource_config
    #   <p>Information about the EC2 resources that are used to train this model.</p>
    # @option params [Types::StoppingCondition] :stopping_condition
    #   <p>The criteria that is used to stop model training.</p>
    # @option params [Array<Types::IncrementalTrainingDataChannel>] :incremental_training_data_channels
    #   <p>Specifies the incremental training data channels for the trained model. </p> <p>Incremental training allows you to create a new trained model with updates without retraining from scratch. You can specify up to one incremental training data channel that references a previously trained model and its version.</p> <p>Limit: Maximum of 20 channels total (including both <code>incrementalTrainingDataChannels</code> and <code>dataChannels</code>).</p>
    # @option params [Array<Types::ModelTrainingDataChannel>] :data_channels
    #   <p>Defines the data channels that are used as input for the trained model request.</p> <p>Limit: Maximum of 20 channels total (including both <code>dataChannels</code> and <code>incrementalTrainingDataChannels</code>).</p>
    # @option params [String] :training_input_mode
    #   <p>The input mode for accessing the training data. This parameter determines how the training data is made available to the training algorithm. Valid values are:</p> <ul> <li> <p> <code>File</code> - The training data is downloaded to the training instance and made available as files.</p> </li> <li> <p> <code>FastFile</code> - The training data is streamed directly from Amazon S3 to the training algorithm, providing faster access for large datasets.</p> </li> <li> <p> <code>Pipe</code> - The training data is streamed to the training algorithm using named pipes, which can improve performance for certain algorithms.</p> </li> </ul>
    # @option params [String] :description
    #   <p>The description of the trained model.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the trained ML model and the associated data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     name: "NameString", # required
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     hyperparameters: {
    #       "String" => "String"
    #     },
    #     environment: {
    #       "String" => "String"
    #     },
    #     resource_config: { # required
    #       instance_count: 1,
    #       instance_type: "ml.m4.xlarge" # One of: ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p4d.24xlarge", "ml.p4de.24xlarge", "ml.p5.48xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge", "ml.g5.xlarge", "ml.g5.2xlarge", "ml.g5.4xlarge", "ml.g5.8xlarge", "ml.g5.16xlarge", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.g5.48xlarge", "ml.trn1.2xlarge", "ml.trn1.32xlarge", "ml.trn1n.32xlarge", "ml.m6i.large", "ml.m6i.xlarge", "ml.m6i.2xlarge", "ml.m6i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.12xlarge", "ml.m6i.16xlarge", "ml.m6i.24xlarge", "ml.m6i.32xlarge", "ml.c6i.xlarge", "ml.c6i.2xlarge", "ml.c6i.8xlarge", "ml.c6i.4xlarge", "ml.c6i.12xlarge", "ml.c6i.16xlarge", "ml.c6i.24xlarge", "ml.c6i.32xlarge", "ml.r5d.large", "ml.r5d.xlarge", "ml.r5d.2xlarge", "ml.r5d.4xlarge", "ml.r5d.8xlarge", "ml.r5d.12xlarge", "ml.r5d.16xlarge", "ml.r5d.24xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.r5.large", "ml.r5.xlarge", "ml.r5.2xlarge", "ml.r5.4xlarge", "ml.r5.8xlarge", "ml.r5.12xlarge", "ml.r5.16xlarge", "ml.r5.24xlarge", "ml.c7i.large", "ml.c7i.xlarge", "ml.c7i.2xlarge", "ml.c7i.4xlarge", "ml.c7i.8xlarge", "ml.c7i.12xlarge", "ml.c7i.16xlarge", "ml.c7i.24xlarge", "ml.c7i.48xlarge", "ml.m7i.large", "ml.m7i.xlarge", "ml.m7i.2xlarge", "ml.m7i.4xlarge", "ml.m7i.8xlarge", "ml.m7i.12xlarge", "ml.m7i.16xlarge", "ml.m7i.24xlarge", "ml.m7i.48xlarge", "ml.r7i.large", "ml.r7i.xlarge", "ml.r7i.2xlarge", "ml.r7i.4xlarge", "ml.r7i.8xlarge", "ml.r7i.12xlarge", "ml.r7i.16xlarge", "ml.r7i.24xlarge", "ml.r7i.48xlarge", "ml.g6.xlarge", "ml.g6.2xlarge", "ml.g6.4xlarge", "ml.g6.8xlarge", "ml.g6.12xlarge", "ml.g6.16xlarge", "ml.g6.24xlarge", "ml.g6.48xlarge", "ml.g6e.xlarge", "ml.g6e.2xlarge", "ml.g6e.4xlarge", "ml.g6e.8xlarge", "ml.g6e.12xlarge", "ml.g6e.16xlarge", "ml.g6e.24xlarge", "ml.g6e.48xlarge", "ml.p5en.48xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge"], # required
    #       volume_size_in_gb: 1, # required
    #     },
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     incremental_training_data_channels: [
    #       {
    #         trained_model_arn: "TrainedModelArn", # required
    #         version_identifier: "UUID",
    #         channel_name: "ModelTrainingDataChannelName", # required
    #       }
    #     ],
    #     data_channels: [ # required
    #       {
    #         ml_input_channel_arn: "MLInputChannelArn", # required
    #         channel_name: "ModelTrainingDataChannelName", # required
    #         s3_data_distribution_type: "FullyReplicated" # One of: ["FullyReplicated", "ShardedByS3Key"]
    #       }
    #     ],
    #     training_input_mode: "File" # One of: ["File", "FastFile", "Pipe"],
    #     description: "ResourceDescription",
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_trained_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trained_model_arn: "TrainedModelArn", # required
    #     version_identifier: "UUID"
    #   }
    # @return [Types::CreateTrainedModelResponse]
    def create_trained_model(params = {}, options = {})
      request = build_request(:create_trained_model, params)
      request.send_request(options)
    end

    # <p>Defines the information necessary to create a training dataset. In Clean Rooms ML, the <code>TrainingDataset</code> is metadata that points to a Glue table, which is read only during <code>AudienceModel</code> creation.</p>
    # @param [Hash, Types::CreateTrainingDatasetRequest] params
    # @option params [String] :name
    #   <p>The name of the training dataset. This name must be unique in your account and region.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that Clean Rooms ML can assume to read the data referred to in the <code>dataSource</code> field of each dataset.</p> <p>Passing a role across AWS accounts is not allowed. If you pass a role that isn't in your account, you get an <code>AccessDeniedException</code> error.</p>
    # @option params [Array<Types::Dataset>] :training_data
    #   <p>An array of information that lists the Dataset objects, which specifies the dataset type and details on its location and schema. You must provide a role that has read access to these tables.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @option params [String] :description
    #   <p>The description of the training dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     role_arn: "IamRoleArn", # required
    #     training_data: [ # required
    #       {
    #         type: "INTERACTIONS" # One of: ["INTERACTIONS"], # required
    #         input_config: { # required
    #           schema: [ # required
    #             {
    #               column_name: "ColumnName", # required
    #               column_types: ["USER_ID" # One of: ["USER_ID", "ITEM_ID", "TIMESTAMP", "CATEGORICAL_FEATURE", "NUMERICAL_FEATURE"]], # required
    #             }
    #           ],
    #           data_source: { # required
    #             glue_data_source: { # required
    #               table_name: "GlueTableName", # required
    #               database_name: "GlueDatabaseName", # required
    #               catalog_id: "AccountId"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.create_training_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   }
    # @return [Types::CreateTrainingDatasetResponse]
    def create_training_dataset(params = {}, options = {})
      request = build_request(:create_training_dataset, params)
      request.send_request(options)
    end

    # <p>Deletes the specified audience generation job, and removes all data associated with the job.</p>
    # @param [Hash, Types::DeleteAudienceGenerationJobRequest] params
    # @option params [String] :audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   }
    #   options = {}
    #   response = client.delete_audience_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_audience_generation_job(params = {}, options = {})
      request = build_request(:delete_audience_generation_job, params)
      request.send_request(options)
    end

    # <p>Specifies an audience model that you want to delete. You can't delete an audience model if there are any configured audience models that depend on the audience model.</p>
    # @param [Hash, Types::DeleteAudienceModelRequest] params
    # @option params [String] :audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     audience_model_arn: "AudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_audience_model(params = {}, options = {})
      request = build_request(:delete_audience_model, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configured audience model. You can't delete a configured audience model if there are any lookalike models that use the configured audience model. If you delete a configured audience model, it will be removed from any collaborations that it is associated to.</p>
    # @param [Hash, Types::DeleteConfiguredAudienceModelRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configured_audience_model(params = {}, options = {})
      request = build_request(:delete_configured_audience_model, params)
      request.send_request(options)
    end

    # <p>Deletes the specified configured audience model policy.</p>
    # @param [Hash, Types::DeleteConfiguredAudienceModelPolicyRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model policy that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_audience_model_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configured_audience_model_policy(params = {}, options = {})
      request = build_request(:delete_configured_audience_model_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a configured model algorithm.</p>
    # @param [Hash, Types::DeleteConfiguredModelAlgorithmRequest] params
    # @option params [String] :configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_model_algorithm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configured_model_algorithm(params = {}, options = {})
      request = build_request(:delete_configured_model_algorithm, params)
      request.send_request(options)
    end

    # <p>Deletes a configured model algorithm association.</p>
    # @param [Hash, Types::DeleteConfiguredModelAlgorithmAssociationRequest] params
    # @option params [String] :configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is deleting the configured model algorithm association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_configured_model_algorithm_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_configured_model_algorithm_association(params = {}, options = {})
      request = build_request(:delete_configured_model_algorithm_association, params)
      request.send_request(options)
    end

    # <p>Deletes a ML modeling configuration.</p>
    # @param [Hash, Types::DeleteMLConfigurationRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the of the member that is deleting the ML modeling configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_ml_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ml_configuration(params = {}, options = {})
      request = build_request(:delete_ml_configuration, params)
      request.send_request(options)
    end

    # <p>Provides the information necessary to delete an ML input channel.</p>
    # @param [Hash, Types::DeleteMLInputChannelDataRequest] params
    # @option params [String] :ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.delete_ml_input_channel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ml_input_channel_data(params = {}, options = {})
      request = build_request(:delete_ml_input_channel_data, params)
      request.send_request(options)
    end

    # <p>Deletes the model artifacts stored by the service.</p>
    # @param [Hash, Types::DeleteTrainedModelOutputRequest] params
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model whose output you want to delete.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is deleting the trained model output.</p>
    # @option params [String] :version_identifier
    #   <p>The version identifier of the trained model to delete. If not specified, the operation will delete the base version of the trained model. When specified, only the particular version will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trained_model_arn: "TrainedModelArn", # required
    #     membership_identifier: "UUID", # required
    #     version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.delete_trained_model_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_trained_model_output(params = {}, options = {})
      request = build_request(:delete_trained_model_output, params)
      request.send_request(options)
    end

    # <p>Specifies a training dataset that you want to delete. You can't delete a training dataset if there are any audience models that depend on the training dataset. In Clean Rooms ML, the <code>TrainingDataset</code> is metadata that points to a Glue table, which is read only during <code>AudienceModel</code> creation. This action deletes the metadata.</p>
    # @param [Hash, Types::DeleteTrainingDatasetRequest] params
    # @option params [String] :training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   }
    #   options = {}
    #   response = client.delete_training_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_training_dataset(params = {}, options = {})
      request = build_request(:delete_training_dataset, params)
      request.send_request(options)
    end

    # <p>Returns information about an audience generation job.</p>
    # @param [Hash, Types::GetAudienceGenerationJobRequest] params
    # @option params [String] :audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_audience_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     seed_audience: {
    #       data_source: {
    #         s3_uri: "S3Path", # required
    #       },
    #       role_arn: "IamRoleArn", # required
    #       sql_parameters: {
    #         query_string: "String",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterKey" => "ParameterValue"
    #         }
    #       },
    #       sql_compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #           number: 1
    #         }
    #       }
    #     },
    #     include_seed_in_output: false,
    #     collaboration_id: "UUID",
    #     metrics: {
    #       relevance_metrics: [ # required
    #         {
    #           audience_size: { # required
    #             type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #             value: 1, # required
    #           },
    #           score: 1.0
    #         }
    #       ],
    #       recall_metric: 1.0
    #     },
    #     started_by: "AccountId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     protected_query_identifier: "String"
    #   }
    # @return [Types::GetAudienceGenerationJobResponse]
    def get_audience_generation_job(params = {}, options = {})
      request = build_request(:get_audience_generation_job, params)
      request.send_request(options)
    end

    # <p>Returns information about an audience model</p>
    # @param [Hash, Types::GetAudienceModelRequest] params
    # @option params [String] :audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the audience model that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     audience_model_arn: "AudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.get_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     training_data_start_time: Time.now,
    #     training_data_end_time: Time.now,
    #     audience_model_arn: "AudienceModelArn", # required
    #     name: "NameString", # required
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     description: "ResourceDescription"
    #   }
    # @return [Types::GetAudienceModelResponse]
    def get_audience_model(params = {}, options = {})
      request = build_request(:get_audience_model, params)
      request.send_request(options)
    end

    # <p>Returns information about the configured model algorithm association in a collaboration.</p>
    # @param [Hash, Types::GetCollaborationConfiguredModelAlgorithmAssociationRequest] params
    # @option params [String] :configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to return information about.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID for the collaboration that contains the configured model algorithm association that you want to return information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     collaboration_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_configured_model_algorithm_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     creator_account_id: "AccountId", # required
    #     privacy_configuration: {
    #       policies: { # required
    #         trained_models: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           container_metrics: {
    #             noise_level: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW", "NONE"], # required
    #           },
    #           max_artifact_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         },
    #         trained_model_exports: {
    #           max_size: { # required
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           },
    #           files_to_export: ["MODEL" # One of: ["MODEL", "OUTPUT"]], # required
    #         },
    #         trained_model_inference_jobs: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           max_output_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCollaborationConfiguredModelAlgorithmAssociationResponse]
    def get_collaboration_configured_model_algorithm_association(params = {}, options = {})
      request = build_request(:get_collaboration_configured_model_algorithm_association, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific ML input channel in a collaboration.</p>
    # @param [Hash, Types::GetCollaborationMLInputChannelRequest] params
    # @option params [String] :ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to get.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channel that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     collaboration_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_collaboration_ml_input_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     name: "NameString", # required
    #     configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     retention_in_days: 1, # required
    #     number_of_records: 1,
    #     privacy_budgets: {
    #       # One of:
    #       access_budgets: [
    #         {
    #           resource_arn: "BudgetedResourceArn", # required
    #           details: [ # required
    #             {
    #               start_time: Time.now, # required
    #               end_time: Time.now,
    #               remaining_budget: 1, # required
    #               budget: 1, # required
    #               budget_type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           aggregate_remaining_budget: 1, # required
    #         }
    #       ]
    #     },
    #     description: "ResourceDescription",
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     creator_account_id: "AccountId", # required
    #   }
    # @return [Types::GetCollaborationMLInputChannelResponse]
    def get_collaboration_ml_input_channel(params = {}, options = {})
      request = build_request(:get_collaboration_ml_input_channel, params)
      request.send_request(options)
    end

    # <p>Returns information about a trained model in a collaboration.</p>
    # @param [Hash, Types::GetCollaborationTrainedModelRequest] params
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you want to return information about.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID that contains the trained model that you want to return information about.</p>
    # @option params [String] :version_identifier
    #   <p>The version identifier of the trained model to retrieve. If not specified, the operation returns information about the latest version of the trained model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trained_model_arn: "TrainedModelArn", # required
    #     collaboration_identifier: "UUID", # required
    #     version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.get_collaboration_trained_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     version_identifier: "UUID",
    #     incremental_training_data_channels: [
    #       {
    #         channel_name: "ModelTrainingDataChannelName", # required
    #         version_identifier: "UUID",
    #         model_name: "NameString", # required
    #       }
    #     ],
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     resource_config: {
    #       instance_count: 1,
    #       instance_type: "ml.m4.xlarge" # One of: ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p4d.24xlarge", "ml.p4de.24xlarge", "ml.p5.48xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge", "ml.g5.xlarge", "ml.g5.2xlarge", "ml.g5.4xlarge", "ml.g5.8xlarge", "ml.g5.16xlarge", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.g5.48xlarge", "ml.trn1.2xlarge", "ml.trn1.32xlarge", "ml.trn1n.32xlarge", "ml.m6i.large", "ml.m6i.xlarge", "ml.m6i.2xlarge", "ml.m6i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.12xlarge", "ml.m6i.16xlarge", "ml.m6i.24xlarge", "ml.m6i.32xlarge", "ml.c6i.xlarge", "ml.c6i.2xlarge", "ml.c6i.8xlarge", "ml.c6i.4xlarge", "ml.c6i.12xlarge", "ml.c6i.16xlarge", "ml.c6i.24xlarge", "ml.c6i.32xlarge", "ml.r5d.large", "ml.r5d.xlarge", "ml.r5d.2xlarge", "ml.r5d.4xlarge", "ml.r5d.8xlarge", "ml.r5d.12xlarge", "ml.r5d.16xlarge", "ml.r5d.24xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.r5.large", "ml.r5.xlarge", "ml.r5.2xlarge", "ml.r5.4xlarge", "ml.r5.8xlarge", "ml.r5.12xlarge", "ml.r5.16xlarge", "ml.r5.24xlarge", "ml.c7i.large", "ml.c7i.xlarge", "ml.c7i.2xlarge", "ml.c7i.4xlarge", "ml.c7i.8xlarge", "ml.c7i.12xlarge", "ml.c7i.16xlarge", "ml.c7i.24xlarge", "ml.c7i.48xlarge", "ml.m7i.large", "ml.m7i.xlarge", "ml.m7i.2xlarge", "ml.m7i.4xlarge", "ml.m7i.8xlarge", "ml.m7i.12xlarge", "ml.m7i.16xlarge", "ml.m7i.24xlarge", "ml.m7i.48xlarge", "ml.r7i.large", "ml.r7i.xlarge", "ml.r7i.2xlarge", "ml.r7i.4xlarge", "ml.r7i.8xlarge", "ml.r7i.12xlarge", "ml.r7i.16xlarge", "ml.r7i.24xlarge", "ml.r7i.48xlarge", "ml.g6.xlarge", "ml.g6.2xlarge", "ml.g6.4xlarge", "ml.g6.8xlarge", "ml.g6.12xlarge", "ml.g6.16xlarge", "ml.g6.24xlarge", "ml.g6.48xlarge", "ml.g6e.xlarge", "ml.g6e.2xlarge", "ml.g6e.4xlarge", "ml.g6e.8xlarge", "ml.g6e.12xlarge", "ml.g6e.16xlarge", "ml.g6e.24xlarge", "ml.g6e.48xlarge", "ml.p5en.48xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge"], # required
    #       volume_size_in_gb: 1, # required
    #     },
    #     training_input_mode: "File" # One of: ["File", "FastFile", "Pipe"],
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     metrics_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     metrics_status_details: "String",
    #     logs_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     logs_status_details: "String",
    #     training_container_image_digest: "String",
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     creator_account_id: "AccountId", # required
    #   }
    # @return [Types::GetCollaborationTrainedModelResponse]
    def get_collaboration_trained_model(params = {}, options = {})
      request = build_request(:get_collaboration_trained_model, params)
      request.send_request(options)
    end

    # <p>Returns information about a specified configured audience model.</p>
    # @param [Hash, Types::GetConfiguredAudienceModelRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.get_configured_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     name: "NameString", # required
    #     audience_model_arn: "AudienceModelArn", # required
    #     output_config: { # required
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     description: "ResourceDescription",
    #     status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     shared_audience_metrics: ["ALL" # One of: ["ALL", "NONE"]], # required
    #     min_matching_seed_size: 1,
    #     audience_size_config: {
    #       audience_size_type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #       audience_size_bins: [1], # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     child_resource_tag_on_create_policy: "FROM_PARENT_RESOURCE" # One of: ["FROM_PARENT_RESOURCE", "NONE"]
    #   }
    # @return [Types::GetConfiguredAudienceModelResponse]
    def get_configured_audience_model(params = {}, options = {})
      request = build_request(:get_configured_audience_model, params)
      request.send_request(options)
    end

    # <p>Returns information about a configured audience model policy.</p>
    # @param [Hash, Types::GetConfiguredAudienceModelPolicyRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    #   options = {}
    #   response = client.get_configured_audience_model_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_policy: "ResourcePolicy", # required
    #     policy_hash: "Hash", # required
    #   }
    # @return [Types::GetConfiguredAudienceModelPolicyResponse]
    def get_configured_audience_model_policy(params = {}, options = {})
      request = build_request(:get_configured_audience_model_policy, params)
      request.send_request(options)
    end

    # <p>Returns information about a configured model algorithm.</p>
    # @param [Hash, Types::GetConfiguredModelAlgorithmRequest] params
    # @option params [String] :configured_model_algorithm_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm that you want to return information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #   }
    #   options = {}
    #   response = client.get_configured_model_algorithm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #     name: "NameString", # required
    #     training_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #       entrypoint: ["ContainerEntrypointString"],
    #       arguments: ["ContainerArgument"],
    #       metric_definitions: [
    #         {
    #           name: "MetricName", # required
    #           regex: "MetricRegex", # required
    #         }
    #       ]
    #     },
    #     inference_container_config: {
    #       image_uri: "AlgorithmImage", # required
    #     },
    #     role_arn: "IamRoleArn", # required
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetConfiguredModelAlgorithmResponse]
    def get_configured_model_algorithm(params = {}, options = {})
      request = build_request(:get_configured_model_algorithm, params)
      request.send_request(options)
    end

    # <p>Returns information about a configured model algorithm association.</p>
    # @param [Hash, Types::GetConfiguredModelAlgorithmAssociationRequest] params
    # @option params [String] :configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that you want to return information about.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_configured_model_algorithm_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #     name: "NameString", # required
    #     privacy_configuration: {
    #       policies: { # required
    #         trained_models: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           container_metrics: {
    #             noise_level: "HIGH" # One of: ["HIGH", "MEDIUM", "LOW", "NONE"], # required
    #           },
    #           max_artifact_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         },
    #         trained_model_exports: {
    #           max_size: { # required
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           },
    #           files_to_export: ["MODEL" # One of: ["MODEL", "OUTPUT"]], # required
    #         },
    #         trained_model_inference_jobs: {
    #           container_logs: [
    #             {
    #               allowed_account_ids: ["String"], # required
    #               filter_pattern: "String",
    #               log_type: "ALL" # One of: ["ALL", "ERROR_SUMMARY"],
    #               log_redaction_configuration: {
    #                 entities_to_redact: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION" # One of: ["ALL_PERSONALLY_IDENTIFIABLE_INFORMATION", "NUMBERS", "CUSTOM"]], # required
    #                 custom_entity_config: {
    #                   custom_data_identifiers: ["CustomDataIdentifier"], # required
    #                 }
    #               }
    #             }
    #           ],
    #           max_output_size: {
    #             unit: "GB" # One of: ["GB"], # required
    #             value: 1.0, # required
    #           }
    #         }
    #       }
    #     },
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetConfiguredModelAlgorithmAssociationResponse]
    def get_configured_model_algorithm_association(params = {}, options = {})
      request = build_request(:get_configured_model_algorithm_association, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific ML configuration.</p>
    # @param [Hash, Types::GetMLConfigurationRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that owns the ML configuration you want to return information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_ml_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_identifier: "UUID", # required
    #     default_output_location: { # required
    #       destination: {
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::GetMLConfigurationResponse]
    def get_ml_configuration(params = {}, options = {})
      request = build_request(:get_ml_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about an ML input channel.</p>
    # @param [Hash, Types::GetMLInputChannelRequest] params
    # @option params [String] :ml_input_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the ML input channel that you want to get.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channel that you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.get_ml_input_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     ml_input_channel_arn: "MLInputChannelArn", # required
    #     name: "NameString", # required
    #     configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     retention_in_days: 1, # required
    #     number_of_records: 1,
    #     privacy_budgets: {
    #       # One of:
    #       access_budgets: [
    #         {
    #           resource_arn: "BudgetedResourceArn", # required
    #           details: [ # required
    #             {
    #               start_time: Time.now, # required
    #               end_time: Time.now,
    #               remaining_budget: 1, # required
    #               budget: 1, # required
    #               budget_type: "CALENDAR_DAY" # One of: ["CALENDAR_DAY", "CALENDAR_MONTH", "CALENDAR_WEEK", "LIFETIME"], # required
    #               auto_refresh: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           ],
    #           aggregate_remaining_budget: 1, # required
    #         }
    #       ]
    #     },
    #     description: "ResourceDescription",
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     input_channel: { # required
    #       data_source: { # required
    #         # One of:
    #         protected_query_input_parameters: {
    #           sql_parameters: { # required
    #             query_string: "String",
    #             analysis_template_arn: "AnalysisTemplateArn",
    #             parameters: {
    #               "ParameterKey" => "ParameterValue"
    #             }
    #           },
    #           compute_configuration: {
    #             # One of:
    #             worker: {
    #               type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #               number: 1
    #             }
    #           },
    #           result_format: "CSV" # One of: ["CSV", "PARQUET"]
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     protected_query_identifier: "UUID",
    #     number_of_files: 1.0,
    #     size_in_gb: 1.0,
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetMLInputChannelResponse]
    def get_ml_input_channel(params = {}, options = {})
      request = build_request(:get_ml_input_channel, params)
      request.send_request(options)
    end

    # <p>Returns information about a trained model.</p>
    # @param [Hash, Types::GetTrainedModelRequest] params
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you are interested in.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that created the trained model that you are interested in.</p>
    # @option params [String] :version_identifier
    #   <p>The version identifier of the trained model to retrieve. If not specified, the operation returns information about the latest version of the trained model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     trained_model_arn: "TrainedModelArn", # required
    #     membership_identifier: "UUID", # required
    #     version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.get_trained_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     membership_identifier: "UUID", # required
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     version_identifier: "UUID",
    #     incremental_training_data_channels: [
    #       {
    #         channel_name: "ModelTrainingDataChannelName", # required
    #         version_identifier: "UUID",
    #         model_name: "NameString", # required
    #       }
    #     ],
    #     name: "NameString", # required
    #     description: "ResourceDescription",
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"], # required
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #     resource_config: {
    #       instance_count: 1,
    #       instance_type: "ml.m4.xlarge" # One of: ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p4d.24xlarge", "ml.p4de.24xlarge", "ml.p5.48xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge", "ml.g5.xlarge", "ml.g5.2xlarge", "ml.g5.4xlarge", "ml.g5.8xlarge", "ml.g5.16xlarge", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.g5.48xlarge", "ml.trn1.2xlarge", "ml.trn1.32xlarge", "ml.trn1n.32xlarge", "ml.m6i.large", "ml.m6i.xlarge", "ml.m6i.2xlarge", "ml.m6i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.12xlarge", "ml.m6i.16xlarge", "ml.m6i.24xlarge", "ml.m6i.32xlarge", "ml.c6i.xlarge", "ml.c6i.2xlarge", "ml.c6i.8xlarge", "ml.c6i.4xlarge", "ml.c6i.12xlarge", "ml.c6i.16xlarge", "ml.c6i.24xlarge", "ml.c6i.32xlarge", "ml.r5d.large", "ml.r5d.xlarge", "ml.r5d.2xlarge", "ml.r5d.4xlarge", "ml.r5d.8xlarge", "ml.r5d.12xlarge", "ml.r5d.16xlarge", "ml.r5d.24xlarge", "ml.t3.medium", "ml.t3.large", "ml.t3.xlarge", "ml.t3.2xlarge", "ml.r5.large", "ml.r5.xlarge", "ml.r5.2xlarge", "ml.r5.4xlarge", "ml.r5.8xlarge", "ml.r5.12xlarge", "ml.r5.16xlarge", "ml.r5.24xlarge", "ml.c7i.large", "ml.c7i.xlarge", "ml.c7i.2xlarge", "ml.c7i.4xlarge", "ml.c7i.8xlarge", "ml.c7i.12xlarge", "ml.c7i.16xlarge", "ml.c7i.24xlarge", "ml.c7i.48xlarge", "ml.m7i.large", "ml.m7i.xlarge", "ml.m7i.2xlarge", "ml.m7i.4xlarge", "ml.m7i.8xlarge", "ml.m7i.12xlarge", "ml.m7i.16xlarge", "ml.m7i.24xlarge", "ml.m7i.48xlarge", "ml.r7i.large", "ml.r7i.xlarge", "ml.r7i.2xlarge", "ml.r7i.4xlarge", "ml.r7i.8xlarge", "ml.r7i.12xlarge", "ml.r7i.16xlarge", "ml.r7i.24xlarge", "ml.r7i.48xlarge", "ml.g6.xlarge", "ml.g6.2xlarge", "ml.g6.4xlarge", "ml.g6.8xlarge", "ml.g6.12xlarge", "ml.g6.16xlarge", "ml.g6.24xlarge", "ml.g6.48xlarge", "ml.g6e.xlarge", "ml.g6e.2xlarge", "ml.g6e.4xlarge", "ml.g6e.8xlarge", "ml.g6e.12xlarge", "ml.g6e.16xlarge", "ml.g6e.24xlarge", "ml.g6e.48xlarge", "ml.p5en.48xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge"], # required
    #       volume_size_in_gb: 1, # required
    #     },
    #     training_input_mode: "File" # One of: ["File", "FastFile", "Pipe"],
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     metrics_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     metrics_status_details: "String",
    #     logs_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     logs_status_details: "String",
    #     training_container_image_digest: "String",
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     hyperparameters: {
    #       "String" => "String"
    #     },
    #     environment: {
    #       "String" => "String"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     data_channels: [ # required
    #       {
    #         ml_input_channel_arn: "MLInputChannelArn", # required
    #         channel_name: "ModelTrainingDataChannelName", # required
    #         s3_data_distribution_type: "FullyReplicated" # One of: ["FullyReplicated", "ShardedByS3Key"]
    #       }
    #     ]
    #   }
    # @return [Types::GetTrainedModelResponse]
    def get_trained_model(params = {}, options = {})
      request = build_request(:get_trained_model, params)
      request.send_request(options)
    end

    # <p>Returns information about a trained model inference job.</p>
    # @param [Hash, Types::GetTrainedModelInferenceJobRequest] params
    # @option params [String] :membership_identifier
    #   <p>Provides the membership ID of the membership that contains the trained model inference job that you are interested in.</p>
    # @option params [String] :trained_model_inference_job_arn
    #   <p>Provides the Amazon Resource Name (ARN) of the trained model inference job that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_trained_model_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn",
    #     name: "NameString", # required
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"], # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #     resource_config: { # required
    #       instance_type: "ml.r7i.48xlarge" # One of: ["ml.r7i.48xlarge", "ml.r6i.16xlarge", "ml.m6i.xlarge", "ml.m5.4xlarge", "ml.p2.xlarge", "ml.m4.16xlarge", "ml.r7i.16xlarge", "ml.m7i.xlarge", "ml.m6i.12xlarge", "ml.r7i.8xlarge", "ml.r7i.large", "ml.m7i.12xlarge", "ml.m6i.24xlarge", "ml.m7i.24xlarge", "ml.r6i.8xlarge", "ml.r6i.large", "ml.g5.2xlarge", "ml.m5.large", "ml.m7i.48xlarge", "ml.m6i.16xlarge", "ml.p2.16xlarge", "ml.g5.4xlarge", "ml.m7i.16xlarge", "ml.c4.2xlarge", "ml.c5.2xlarge", "ml.c6i.32xlarge", "ml.c4.4xlarge", "ml.g5.8xlarge", "ml.c6i.xlarge", "ml.c5.4xlarge", "ml.g4dn.xlarge", "ml.c7i.xlarge", "ml.c6i.12xlarge", "ml.g4dn.12xlarge", "ml.c7i.12xlarge", "ml.c6i.24xlarge", "ml.g4dn.2xlarge", "ml.c7i.24xlarge", "ml.c7i.2xlarge", "ml.c4.8xlarge", "ml.c6i.2xlarge", "ml.g4dn.4xlarge", "ml.c7i.48xlarge", "ml.c7i.4xlarge", "ml.c6i.16xlarge", "ml.c5.9xlarge", "ml.g4dn.16xlarge", "ml.c7i.16xlarge", "ml.c6i.4xlarge", "ml.c5.xlarge", "ml.c4.xlarge", "ml.g4dn.8xlarge", "ml.c7i.8xlarge", "ml.c7i.large", "ml.g5.xlarge", "ml.c6i.8xlarge", "ml.c6i.large", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.m7i.2xlarge", "ml.c5.18xlarge", "ml.g5.48xlarge", "ml.m6i.2xlarge", "ml.g5.16xlarge", "ml.m7i.4xlarge", "ml.r6i.32xlarge", "ml.m6i.4xlarge", "ml.m5.xlarge", "ml.m4.10xlarge", "ml.r6i.xlarge", "ml.m5.12xlarge", "ml.m4.xlarge", "ml.r7i.2xlarge", "ml.r7i.xlarge", "ml.r6i.12xlarge", "ml.m5.24xlarge", "ml.r7i.12xlarge", "ml.m7i.8xlarge", "ml.m7i.large", "ml.r6i.24xlarge", "ml.r6i.2xlarge", "ml.m4.2xlarge", "ml.r7i.24xlarge", "ml.r7i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.large", "ml.m5.2xlarge", "ml.p2.8xlarge", "ml.r6i.4xlarge", "ml.m6i.32xlarge", "ml.m4.4xlarge", "ml.p3.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge"], # required
    #       instance_count: 1
    #     },
    #     output_configuration: { # required
    #       accept: "String",
    #       members: [ # required
    #         {
    #           account_id: "AccountId", # required
    #         }
    #       ]
    #     },
    #     membership_identifier: "UUID", # required
    #     data_source: { # required
    #       ml_input_channel_arn: "MLInputChannelArn", # required
    #     },
    #     container_execution_parameters: {
    #       max_payload_in_mb: 1
    #     },
    #     status_details: {
    #       status_code: "String",
    #       message: "String"
    #     },
    #     description: "ResourceDescription",
    #     inference_container_image_digest: "String",
    #     environment: {
    #       "String" => "String"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     metrics_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     metrics_status_details: "String",
    #     logs_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #     logs_status_details: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetTrainedModelInferenceJobResponse]
    def get_trained_model_inference_job(params = {}, options = {})
      request = build_request(:get_trained_model_inference_job, params)
      request.send_request(options)
    end

    # <p>Returns information about a training dataset.</p>
    # @param [Hash, Types::GetTrainingDatasetRequest] params
    # @option params [String] :training_dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the training dataset that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #   }
    #   options = {}
    #   response = client.get_training_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_time: Time.now, # required
    #     update_time: Time.now, # required
    #     training_dataset_arn: "TrainingDatasetArn", # required
    #     name: "NameString", # required
    #     training_data: [ # required
    #       {
    #         type: "INTERACTIONS" # One of: ["INTERACTIONS"], # required
    #         input_config: { # required
    #           schema: [ # required
    #             {
    #               column_name: "ColumnName", # required
    #               column_types: ["USER_ID" # One of: ["USER_ID", "ITEM_ID", "TIMESTAMP", "CATEGORICAL_FEATURE", "NUMERICAL_FEATURE"]], # required
    #             }
    #           ],
    #           data_source: { # required
    #             glue_data_source: { # required
    #               table_name: "GlueTableName", # required
    #               database_name: "GlueDatabaseName", # required
    #               catalog_id: "AccountId"
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE"], # required
    #     role_arn: "IamRoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     description: "ResourceDescription"
    #   }
    # @return [Types::GetTrainingDatasetResponse]
    def get_training_dataset(params = {}, options = {})
      request = build_request(:get_training_dataset, params)
      request.send_request(options)
    end

    # <p>Returns a list of the audience export jobs.</p>
    # @param [Hash, Types::ListAudienceExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     audience_generation_job_arn: "AudienceGenerationJobArn"
    #   }
    #   options = {}
    #   response = client.list_audience_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     audience_export_jobs: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         name: "NameString", # required
    #         audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #         audience_size: { # required
    #           type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #           value: 1, # required
    #         },
    #         description: "ResourceDescription",
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE"], # required
    #         status_details: {
    #           status_code: "String",
    #           message: "String"
    #         },
    #         output_location: "S3Path"
    #       }
    #     ]
    #   }
    # @return [Types::ListAudienceExportJobsResponse]
    def list_audience_export_jobs(params = {}, options = {})
      request = build_request(:list_audience_export_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of audience generation jobs.</p>
    # @param [Hash, Types::ListAudienceGenerationJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that was used for the audience generation jobs that you are interested in.</p>
    # @option params [String] :collaboration_id
    #   <p>The identifier of the collaboration that contains the audience generation jobs that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn",
    #     collaboration_id: "UUID"
    #   }
    #   options = {}
    #   response = client.list_audience_generation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     audience_generation_jobs: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #         configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #         collaboration_id: "UUID",
    #         started_by: "AccountId"
    #       }
    #     ]
    #   }
    # @return [Types::ListAudienceGenerationJobsResponse]
    def list_audience_generation_jobs(params = {}, options = {})
      request = build_request(:list_audience_generation_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of audience models.</p>
    # @param [Hash, Types::ListAudienceModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_audience_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     audience_models: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         audience_model_arn: "AudienceModelArn", # required
    #         name: "NameString", # required
    #         training_dataset_arn: "TrainingDatasetArn", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED"], # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListAudienceModelsResponse]
    def list_audience_models(params = {}, options = {})
      request = build_request(:list_audience_models, params)
      request.send_request(options)
    end

    # <p>Returns a list of the configured model algorithm associations in a collaboration.</p>
    # @param [Hash, Types::ListCollaborationConfiguredModelAlgorithmAssociationsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the configured model algorithm associations that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_collaboration_configured_model_algorithm_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     collaboration_configured_model_algorithm_associations: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #         creator_account_id: "AccountId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationConfiguredModelAlgorithmAssociationsResponse]
    def list_collaboration_configured_model_algorithm_associations(params = {}, options = {})
      request = build_request(:list_collaboration_configured_model_algorithm_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of the ML input channels in a collaboration.</p>
    # @param [Hash, Types::ListCollaborationMLInputChannelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the ML input channels that you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_collaboration_ml_input_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     collaboration_ml_input_channels_list: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         name: "NameString", # required
    #         configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #         ml_input_channel_arn: "MLInputChannelArn", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"], # required
    #         creator_account_id: "AccountId", # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationMLInputChannelsResponse]
    def list_collaboration_ml_input_channels(params = {}, options = {})
      request = build_request(:list_collaboration_ml_input_channels, params)
      request.send_request(options)
    end

    # <p>Returns a list of the export jobs for a trained model in a collaboration.</p>
    # @param [Hash, Types::ListCollaborationTrainedModelExportJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model export jobs that you are interested in.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that was used to create the export jobs that you are interested in.</p>
    # @option params [String] :trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter export jobs by. When specified, only export jobs for this specific version of the trained model are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.list_collaboration_trained_model_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     collaboration_trained_model_export_jobs: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         name: "NameString", # required
    #         output_configuration: { # required
    #           members: [ # required
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         },
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE"], # required
    #         status_details: {
    #           status_code: "String",
    #           message: "String"
    #         },
    #         description: "ResourceDescription",
    #         creator_account_id: "AccountId", # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         trained_model_version_identifier: "UUID",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationTrainedModelExportJobsResponse]
    def list_collaboration_trained_model_export_jobs(params = {}, options = {})
      request = build_request(:list_collaboration_trained_model_export_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of trained model inference jobs in a specified collaboration.</p>
    # @param [Hash, Types::ListCollaborationTrainedModelInferenceJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained model inference jobs that you are interested in.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that was used to create the trained model inference jobs that you are interested in.</p>
    # @option params [String] :trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter inference jobs by. When specified, only inference jobs that used this specific version of the trained model are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn",
    #     trained_model_version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.list_collaboration_trained_model_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     collaboration_trained_model_inference_jobs: [ # required
    #       {
    #         trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn",
    #         membership_identifier: "UUID", # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         trained_model_version_identifier: "UUID",
    #         collaboration_identifier: "UUID", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"], # required
    #         output_configuration: { # required
    #           accept: "String",
    #           members: [ # required
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         },
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         metrics_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #         metrics_status_details: "String",
    #         logs_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #         logs_status_details: "String",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         creator_account_id: "AccountId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationTrainedModelInferenceJobsResponse]
    def list_collaboration_trained_model_inference_jobs(params = {}, options = {})
      request = build_request(:list_collaboration_trained_model_inference_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of the trained models in a collaboration.</p>
    # @param [Hash, Types::ListCollaborationTrainedModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :collaboration_identifier
    #   <p>The collaboration ID of the collaboration that contains the trained models you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     collaboration_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_collaboration_trained_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     collaboration_trained_models: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         name: "NameString", # required
    #         version_identifier: "UUID",
    #         incremental_training_data_channels: [
    #           {
    #             channel_name: "ModelTrainingDataChannelName", # required
    #             version_identifier: "UUID",
    #             model_name: "NameString", # required
    #           }
    #         ],
    #         description: "ResourceDescription",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"], # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #         creator_account_id: "AccountId", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListCollaborationTrainedModelsResponse]
    def list_collaboration_trained_models(params = {}, options = {})
      request = build_request(:list_collaboration_trained_models, params)
      request.send_request(options)
    end

    # <p>Returns a list of the configured audience models.</p>
    # @param [Hash, Types::ListConfiguredAudienceModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configured_audience_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     configured_audience_models: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         name: "NameString", # required
    #         audience_model_arn: "AudienceModelArn", # required
    #         output_config: { # required
    #           destination: { # required
    #             s3_destination: { # required
    #               s3_uri: "S3Path", # required
    #             }
    #           },
    #           role_arn: "IamRoleArn", # required
    #         },
    #         description: "ResourceDescription",
    #         configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #         status: "ACTIVE" # One of: ["ACTIVE"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListConfiguredAudienceModelsResponse]
    def list_configured_audience_models(params = {}, options = {})
      request = build_request(:list_configured_audience_models, params)
      request.send_request(options)
    end

    # <p>Returns a list of configured model algorithm associations.</p>
    # @param [Hash, Types::ListConfiguredModelAlgorithmAssociationsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that created the configured model algorithm associations you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_configured_model_algorithm_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     configured_model_algorithm_associations: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #         configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListConfiguredModelAlgorithmAssociationsResponse]
    def list_configured_model_algorithm_associations(params = {}, options = {})
      request = build_request(:list_configured_model_algorithm_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of configured model algorithms.</p>
    # @param [Hash, Types::ListConfiguredModelAlgorithmsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_configured_model_algorithms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     configured_model_algorithms: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         configured_model_algorithm_arn: "ConfiguredModelAlgorithmArn", # required
    #         name: "NameString", # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListConfiguredModelAlgorithmsResponse]
    def list_configured_model_algorithms(params = {}, options = {})
      request = build_request(:list_configured_model_algorithms, params)
      request.send_request(options)
    end

    # <p>Returns a list of ML input channels.</p>
    # @param [Hash, Types::ListMLInputChannelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of ML input channels to return.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the membership that contains the ML input channels that you want to list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_ml_input_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     ml_input_channels_list: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         name: "NameString", # required
    #         configured_model_algorithm_associations: ["ConfiguredModelAlgorithmAssociationArn"], # required
    #         protected_query_identifier: "UUID",
    #         ml_input_channel_arn: "MLInputChannelArn", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE"], # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListMLInputChannelsResponse]
    def list_ml_input_channels(params = {}, options = {})
      request = build_request(:list_ml_input_channels, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a provided resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of trained model inference jobs that match the request parameters.</p>
    # @param [Hash, Types::ListTrainedModelInferenceJobsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership </p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of a trained model that was used to create the trained model inference jobs that you are interested in.</p>
    # @option params [String] :trained_model_version_identifier
    #   <p>The version identifier of the trained model to filter inference jobs by. When specified, only inference jobs that used this specific version of the trained model are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn",
    #     trained_model_version_identifier: "UUID"
    #   }
    #   options = {}
    #   response = client.list_trained_model_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     trained_model_inference_jobs: [ # required
    #       {
    #         trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn",
    #         membership_identifier: "UUID", # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         trained_model_version_identifier: "UUID",
    #         collaboration_identifier: "UUID", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED", "INACTIVE"], # required
    #         output_configuration: { # required
    #           accept: "String",
    #           members: [ # required
    #             {
    #               account_id: "AccountId", # required
    #             }
    #           ]
    #         },
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         metrics_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #         metrics_status_details: "String",
    #         logs_status: "PUBLISH_SUCCEEDED" # One of: ["PUBLISH_SUCCEEDED", "PUBLISH_FAILED"],
    #         logs_status_details: "String",
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTrainedModelInferenceJobsResponse]
    def list_trained_model_inference_jobs(params = {}, options = {})
      request = build_request(:list_trained_model_inference_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of trained model versions for a specified trained model. This operation allows you to view all versions of a trained model, including information about their status and creation details. You can use this to track the evolution of your trained models and select specific versions for inference or further training.</p>
    # @param [Hash, Types::ListTrainedModelVersionsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token from a previous <code>ListTrainedModelVersions</code> request. Use this token to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of trained model versions to return in a single page. The default value is 10, and the maximum value is 100.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership identifier for the collaboration that contains the trained model.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model for which to list versions.</p>
    # @option params [String] :status
    #   <p>Filter the results to only include trained model versions with the specified status. Valid values include <code>CREATE_PENDING</code>, <code>CREATE_IN_PROGRESS</code>, <code>ACTIVE</code>, <code>CREATE_FAILED</code>, and others.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"]
    #   }
    #   options = {}
    #   response = client.list_trained_model_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     trained_models: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         version_identifier: "UUID",
    #         incremental_training_data_channels: [
    #           {
    #             channel_name: "ModelTrainingDataChannelName", # required
    #             version_identifier: "UUID",
    #             model_name: "NameString", # required
    #           }
    #         ],
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"], # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTrainedModelVersionsResponse]
    def list_trained_model_versions(params = {}, options = {})
      request = build_request(:list_trained_model_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of trained models.</p>
    # @param [Hash, Types::ListTrainedModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that created the trained models you are interested in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     membership_identifier: "UUID", # required
    #   }
    #   options = {}
    #   response = client.list_trained_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     trained_models: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         trained_model_arn: "TrainedModelArn", # required
    #         version_identifier: "UUID",
    #         incremental_training_data_channels: [
    #           {
    #             channel_name: "ModelTrainingDataChannelName", # required
    #             version_identifier: "UUID",
    #             model_name: "NameString", # required
    #           }
    #         ],
    #         name: "NameString", # required
    #         description: "ResourceDescription",
    #         membership_identifier: "UUID", # required
    #         collaboration_identifier: "UUID", # required
    #         status: "CREATE_PENDING" # One of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_FAILED", "INACTIVE", "CANCEL_PENDING", "CANCEL_IN_PROGRESS", "CANCEL_FAILED"], # required
    #         configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTrainedModelsResponse]
    def list_trained_models(params = {}, options = {})
      request = build_request(:list_trained_models, params)
      request.send_request(options)
    end

    # <p>Returns a list of training datasets.</p>
    # @param [Hash, Types::ListTrainingDatasetsRequest] params
    # @option params [String] :next_token
    #   <p>The token value retrieved from a previous call to access the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum size of the results that is returned per call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_training_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     training_datasets: [ # required
    #       {
    #         create_time: Time.now, # required
    #         update_time: Time.now, # required
    #         training_dataset_arn: "TrainingDatasetArn", # required
    #         name: "NameString", # required
    #         status: "ACTIVE" # One of: ["ACTIVE"], # required
    #         description: "ResourceDescription"
    #       }
    #     ]
    #   }
    # @return [Types::ListTrainingDatasetsResponse]
    def list_training_datasets(params = {}, options = {})
      request = build_request(:list_training_datasets, params)
      request.send_request(options)
    end

    # <p>Create or update the resource policy for a configured audience model.</p>
    # @param [Hash, Types::PutConfiguredAudienceModelPolicyRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that the resource policy will govern.</p>
    # @option params [String] :configured_audience_model_policy
    #   <p>The IAM resource policy.</p>
    # @option params [String] :previous_policy_hash
    #   <p>A cryptographic hash of the contents of the policy used to prevent unexpected concurrent modification of the policy.</p>
    # @option params [String] :policy_existence_condition
    #   <p>Use this to prevent unexpected concurrent modification of the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     configured_audience_model_policy: "ResourcePolicy", # required
    #     previous_policy_hash: "Hash",
    #     policy_existence_condition: "POLICY_MUST_EXIST" # One of: ["POLICY_MUST_EXIST", "POLICY_MUST_NOT_EXIST"]
    #   }
    #   options = {}
    #   response = client.put_configured_audience_model_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_policy: "ResourcePolicy", # required
    #     policy_hash: "Hash", # required
    #   }
    # @return [Types::PutConfiguredAudienceModelPolicyResponse]
    def put_configured_audience_model_policy(params = {}, options = {})
      request = build_request(:put_configured_audience_model_policy, params)
      request.send_request(options)
    end

    # <p>Assigns information about an ML configuration.</p>
    # @param [Hash, Types::PutMLConfigurationRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is being configured.</p>
    # @option params [Types::MLOutputConfiguration] :default_output_location
    #   <p>The default Amazon S3 location where ML output is stored for the specified member.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     default_output_location: { # required
    #       destination: {
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_ml_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_ml_configuration(params = {}, options = {})
      request = build_request(:put_ml_configuration, params)
      request.send_request(options)
    end

    # <p>Export an audience of a specified size after you have generated an audience.</p>
    # @param [Hash, Types::StartAudienceExportJobRequest] params
    # @option params [String] :name
    #   <p>The name of the audience export job.</p>
    # @option params [String] :audience_generation_job_arn
    #   <p>The Amazon Resource Name (ARN) of the audience generation job that you want to export.</p>
    # @option params [Types::AudienceSize] :audience_size
    #   <p>The size of the generated audience. Must match one of the sizes in the configured audience model.</p>
    # @option params [String] :description
    #   <p>The description of the audience export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #     audience_size: { # required
    #       type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #       value: 1, # required
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.start_audience_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_audience_export_job(params = {}, options = {})
      request = build_request(:start_audience_export_job, params)
      request.send_request(options)
    end

    # <p>Information necessary to start the audience generation job.</p>
    # @param [Hash, Types::StartAudienceGenerationJobRequest] params
    # @option params [String] :name
    #   <p>The name of the audience generation job.</p>
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that is used for this audience generation job.</p>
    # @option params [Types::AudienceGenerationJobDataSource] :seed_audience
    #   <p>The seed audience that is used to generate the audience.</p>
    # @option params [Boolean] :include_seed_in_output
    #   <p>Whether the seed audience is included in the audience generation output.</p>
    # @option params [String] :collaboration_id
    #   <p>The identifier of the collaboration that contains the audience generation job.</p>
    # @option params [String] :description
    #   <p>The description of the audience generation job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     seed_audience: { # required
    #       data_source: {
    #         s3_uri: "S3Path", # required
    #       },
    #       role_arn: "IamRoleArn", # required
    #       sql_parameters: {
    #         query_string: "String",
    #         analysis_template_arn: "AnalysisTemplateArn",
    #         parameters: {
    #           "ParameterKey" => "ParameterValue"
    #         }
    #       },
    #       sql_compute_configuration: {
    #         # One of:
    #         worker: {
    #           type: "CR.1X" # One of: ["CR.1X", "CR.4X"],
    #           number: 1
    #         }
    #       }
    #     },
    #     include_seed_in_output: false,
    #     collaboration_id: "UUID",
    #     description: "ResourceDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_audience_generation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     audience_generation_job_arn: "AudienceGenerationJobArn", # required
    #   }
    # @return [Types::StartAudienceGenerationJobResponse]
    def start_audience_generation_job(params = {}, options = {})
      request = build_request(:start_audience_generation_job, params)
      request.send_request(options)
    end

    # <p>Provides the information necessary to start a trained model export job.</p>
    # @param [Hash, Types::StartTrainedModelExportJobRequest] params
    # @option params [String] :name
    #   <p>The name of the trained model export job.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that you want to export.</p>
    # @option params [String] :trained_model_version_identifier
    #   <p>The version identifier of the trained model to export. This specifies which version of the trained model should be exported to the specified destination.</p>
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the member that is receiving the exported trained model artifacts.</p>
    # @option params [Types::TrainedModelExportOutputConfiguration] :output_configuration
    #   <p>The output configuration information for the trained model export job.</p>
    # @option params [String] :description
    #   <p>The description of the trained model export job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #     membership_identifier: "UUID", # required
    #     output_configuration: { # required
    #       members: [ # required
    #         {
    #           account_id: "AccountId", # required
    #         }
    #       ]
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.start_trained_model_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_trained_model_export_job(params = {}, options = {})
      request = build_request(:start_trained_model_export_job, params)
      request.send_request(options)
    end

    # <p>Defines the information necessary to begin a trained model inference job.</p>
    # @param [Hash, Types::StartTrainedModelInferenceJobRequest] params
    # @option params [String] :membership_identifier
    #   <p>The membership ID of the membership that contains the trained model inference job.</p>
    # @option params [String] :name
    #   <p>The name of the trained model inference job.</p>
    # @option params [String] :trained_model_arn
    #   <p>The Amazon Resource Name (ARN) of the trained model that is used for this trained model inference job.</p>
    # @option params [String] :trained_model_version_identifier
    #   <p>The version identifier of the trained model to use for inference. This specifies which version of the trained model should be used to generate predictions on the input data.</p>
    # @option params [String] :configured_model_algorithm_association_arn
    #   <p>The Amazon Resource Name (ARN) of the configured model algorithm association that is used for this trained model inference job.</p>
    # @option params [Types::InferenceResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the trained model inference job.</p>
    # @option params [Types::InferenceOutputConfiguration] :output_configuration
    #   <p>Defines the output configuration information for the trained model inference job.</p>
    # @option params [Types::ModelInferenceDataSource] :data_source
    #   <p>Defines the data source that is used for the trained model inference job.</p>
    # @option params [String] :description
    #   <p>The description of the trained model inference job.</p>
    # @option params [Types::InferenceContainerExecutionParameters] :container_execution_parameters
    #   <p>The execution parameters for the container.</p>
    # @option params [Hash<String, String>] :environment
    #   <p>The environment variables to set in the Docker container.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key. This key is used to encrypt and decrypt customer-owned data in the ML inference job and associated data.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms ML considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     membership_identifier: "UUID", # required
    #     name: "NameString", # required
    #     trained_model_arn: "TrainedModelArn", # required
    #     trained_model_version_identifier: "UUID",
    #     configured_model_algorithm_association_arn: "ConfiguredModelAlgorithmAssociationArn",
    #     resource_config: { # required
    #       instance_type: "ml.r7i.48xlarge" # One of: ["ml.r7i.48xlarge", "ml.r6i.16xlarge", "ml.m6i.xlarge", "ml.m5.4xlarge", "ml.p2.xlarge", "ml.m4.16xlarge", "ml.r7i.16xlarge", "ml.m7i.xlarge", "ml.m6i.12xlarge", "ml.r7i.8xlarge", "ml.r7i.large", "ml.m7i.12xlarge", "ml.m6i.24xlarge", "ml.m7i.24xlarge", "ml.r6i.8xlarge", "ml.r6i.large", "ml.g5.2xlarge", "ml.m5.large", "ml.m7i.48xlarge", "ml.m6i.16xlarge", "ml.p2.16xlarge", "ml.g5.4xlarge", "ml.m7i.16xlarge", "ml.c4.2xlarge", "ml.c5.2xlarge", "ml.c6i.32xlarge", "ml.c4.4xlarge", "ml.g5.8xlarge", "ml.c6i.xlarge", "ml.c5.4xlarge", "ml.g4dn.xlarge", "ml.c7i.xlarge", "ml.c6i.12xlarge", "ml.g4dn.12xlarge", "ml.c7i.12xlarge", "ml.c6i.24xlarge", "ml.g4dn.2xlarge", "ml.c7i.24xlarge", "ml.c7i.2xlarge", "ml.c4.8xlarge", "ml.c6i.2xlarge", "ml.g4dn.4xlarge", "ml.c7i.48xlarge", "ml.c7i.4xlarge", "ml.c6i.16xlarge", "ml.c5.9xlarge", "ml.g4dn.16xlarge", "ml.c7i.16xlarge", "ml.c6i.4xlarge", "ml.c5.xlarge", "ml.c4.xlarge", "ml.g4dn.8xlarge", "ml.c7i.8xlarge", "ml.c7i.large", "ml.g5.xlarge", "ml.c6i.8xlarge", "ml.c6i.large", "ml.g5.12xlarge", "ml.g5.24xlarge", "ml.m7i.2xlarge", "ml.c5.18xlarge", "ml.g5.48xlarge", "ml.m6i.2xlarge", "ml.g5.16xlarge", "ml.m7i.4xlarge", "ml.r6i.32xlarge", "ml.m6i.4xlarge", "ml.m5.xlarge", "ml.m4.10xlarge", "ml.r6i.xlarge", "ml.m5.12xlarge", "ml.m4.xlarge", "ml.r7i.2xlarge", "ml.r7i.xlarge", "ml.r6i.12xlarge", "ml.m5.24xlarge", "ml.r7i.12xlarge", "ml.m7i.8xlarge", "ml.m7i.large", "ml.r6i.24xlarge", "ml.r6i.2xlarge", "ml.m4.2xlarge", "ml.r7i.24xlarge", "ml.r7i.4xlarge", "ml.m6i.8xlarge", "ml.m6i.large", "ml.m5.2xlarge", "ml.p2.8xlarge", "ml.r6i.4xlarge", "ml.m6i.32xlarge", "ml.m4.4xlarge", "ml.p3.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge"], # required
    #       instance_count: 1
    #     },
    #     output_configuration: { # required
    #       accept: "String",
    #       members: [ # required
    #         {
    #           account_id: "AccountId", # required
    #         }
    #       ]
    #     },
    #     data_source: { # required
    #       ml_input_channel_arn: "MLInputChannelArn", # required
    #     },
    #     description: "ResourceDescription",
    #     container_execution_parameters: {
    #       max_payload_in_mb: 1
    #     },
    #     environment: {
    #       "String" => "String"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_trained_model_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trained_model_inference_job_arn: "TrainedModelInferenceJobArn", # required
    #   }
    # @return [Types::StartTrainedModelInferenceJobResponse]
    def start_trained_model_inference_job(params = {}, options = {})
      request = build_request(:start_trained_model_inference_job, params)
      request.send_request(options)
    end

    # <p>Adds metadata tags to a specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to assign tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The optional metadata that you apply to the resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50.</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8.</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8.</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Do not use aws:, AWS:, or any upper or lowercase combination of such as a prefix for keys as it is reserved for AWS use. You cannot edit or delete tag keys with this prefix. Values can have this prefix. If a tag value has aws as its prefix but the key does not, then Clean Rooms considers it to be a user tag and will count against the limit of 50 tags. Tags with only the key prefix of aws do not count against your tags per resource limit.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
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

    # <p>Removes metadata tags from a specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key values of tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableArn", # required
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

    # <p>Provides the information necessary to update a configured audience model. Updates that impact audience generation jobs take effect when a new job starts, but do not impact currently running jobs.</p>
    # @param [Hash, Types::UpdateConfiguredAudienceModelRequest] params
    # @option params [String] :configured_audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the configured audience model that you want to update.</p>
    # @option params [Types::ConfiguredAudienceModelOutputConfig] :output_config
    #   <p>The new output configuration.</p>
    # @option params [String] :audience_model_arn
    #   <p>The Amazon Resource Name (ARN) of the new audience model that you want to use.</p>
    # @option params [Array<String>] :shared_audience_metrics
    #   <p>The new value for whether to share audience metrics.</p>
    # @option params [Integer] :min_matching_seed_size
    #   <p>The minimum number of users from the seed audience that must match with users in the training data of the audience model.</p>
    # @option params [Types::AudienceSizeConfig] :audience_size_config
    #   <p>The new audience size configuration.</p>
    # @option params [String] :description
    #   <p>The new description of the configured audience model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #     output_config: {
    #       destination: { # required
    #         s3_destination: { # required
    #           s3_uri: "S3Path", # required
    #         }
    #       },
    #       role_arn: "IamRoleArn", # required
    #     },
    #     audience_model_arn: "AudienceModelArn",
    #     shared_audience_metrics: ["ALL" # One of: ["ALL", "NONE"]],
    #     min_matching_seed_size: 1,
    #     audience_size_config: {
    #       audience_size_type: "ABSOLUTE" # One of: ["ABSOLUTE", "PERCENTAGE"], # required
    #       audience_size_bins: [1], # required
    #     },
    #     description: "ResourceDescription"
    #   }
    #   options = {}
    #   response = client.update_configured_audience_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configured_audience_model_arn: "ConfiguredAudienceModelArn", # required
    #   }
    # @return [Types::UpdateConfiguredAudienceModelResponse]
    def update_configured_audience_model(params = {}, options = {})
      request = build_request(:update_configured_audience_model, params)
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
      context[:gem_name] = 'aws-sdk-cleanroomsml'
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
